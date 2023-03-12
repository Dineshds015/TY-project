using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class display_farm_house : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            commentct();
        }
    }
    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

    private void commentct()
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select * from tbl_property where p_cat='Farm House' AND p_status NOT IN ('Approve')", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dlc.DataSource = dt;
            dlc.DataBind();
            con.Close();
        }
    }
    protected void btn_home_Click(object sender, EventArgs e)
    {
        if (Session["a"] != null)
        {
            Response.Redirect("alhomepage.aspx");
        }
        else
        {
            Response.Redirect("homepage.aspx");
        }
    }
    protected void btn_about_Click(object sender, EventArgs e)
    {
        Response.Redirect("about_us.aspx");
    }
    protected void btn_contact_Click(object sender, EventArgs e)
    {
        Response.Redirect("contact_us.aspx");
    }
    protected void btn_project_Click(object sender, EventArgs e)
    {
        Response.Redirect("project.aspx");
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        Response.Write("btn_search_Click");
    }
    protected void btn_img_location_Click(object sender, EventArgs e)
    {
        Response.Write("Location");
    }
    protected void btn_img_setting_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile_management.aspx");
    }
    protected void btn_post_Click(object sender, EventArgs e)
    {
        Response.Redirect("post.aspx");
    }
    protected void btn_img_noti_Click(object sender, EventArgs e)
    {
        Response.Redirect("notification.aspx");
    }
    protected void dlc_ItemCommand(object source, DataListCommandEventArgs e)
    {
        MySqlConnection con = new MySqlConnection(constring);
        if (e.CommandName == "enquiry")
        {
            if (Session["a"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                string image = ((Image)e.Item.FindControl("img_p_image")).ImageUrl.ToString();
                string email = ((Label)e.Item.FindControl("lbl_email")).Text;
                string p_type = ((Label)e.Item.FindControl("lbl_p_cat")).Text;
                string address = ((Label)e.Item.FindControl("lbl_p_address")).Text;
                string pincode = ((Label)e.Item.FindControl("lbl_p_pin")).Text;
                string city = ((Label)e.Item.FindControl("lbl_city")).Text;
                string feature = ((Label)e.Item.FindControl("lbl_p_features")).Text;
                string price = ((Label)e.Item.FindControl("lbl_p_pricing")).Text;
                string session = Session["a"].ToString();
                string prod_id = ((Label)e.Item.FindControl("lbl_prod_id")).Text;
                string duration = ((Label)e.Item.FindControl("lbl_duration")).Text;

                string s1 = "insert into tbl_enquiry (e_cat,e_email,e_image,e_pricing,e_duration,e_owner,e_pin,e_city,e_features,e_address,p_id,e_time) values ('" + p_type + "','" + session + "','" + image + "','" + price + "','" + duration + "','" + email + "'," + pincode + ",'" + city + "','" + feature + "','" + address + "','" + prod_id + "','" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "')";
                string s2 = "insert into tbl_enquiry_temp (e_cat,e_email,e_image,e_pricing,e_duration,e_owner,e_pin,e_city,e_features,e_address,p_id) values ('" + p_type + "','" + session + "','" + image + "','" + price + "','" + duration + "','" + email + "'," + pincode + ",'" + city + "','" + feature + "','" + address + "','" + prod_id + "')";
                MySqlCommand cmd1 = new MySqlCommand(s1, con);
                MySqlCommand cmd2 = new MySqlCommand(s2, con);
                con.Open();
                cmd1.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Write("<script type=\"text/javascript\">alert('Enquiry sent successfully !');</script>");
                //dlc.EditItemIndex = -1;
                commentct();
            }
        }
    }
}