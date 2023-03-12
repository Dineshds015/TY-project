using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class wishlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a"] == null)
        {
            Response.Redirect("login.aspx");
        }
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
            MySqlCommand cmd = new MySqlCommand("select * from tbl_enquiry where e_email='" + Session["a"] + "'", con);
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
    protected void btn_account_Click(object sender, EventArgs e)
    {
        Response.Redirect("account.aspx");
        Response.Write("Hello  " + Session["a"]);
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
        if (e.CommandName == "delete")
        {
            MySqlConnection con = new MySqlConnection(constring);
            string id = ((Label)e.Item.FindControl("lbl_enq_id")).Text;
            MySqlCommand cmd1 = new MySqlCommand("delete from tbl_enquiry where enq_id=" + id + "", con);
            MySqlCommand cmd2 = new MySqlCommand("delete from tbl_enquiry_tmp where enq_id=" + id + "", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();
            dlc.EditItemIndex = -1;
            commentct();
        }
    }
}