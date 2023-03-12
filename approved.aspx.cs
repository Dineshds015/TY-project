using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class approved : System.Web.UI.Page
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
            MySqlCommand cmd = new MySqlCommand("select * from tbl_enquiry_temp where e_owner='" + Session["a"] + "' AND e_status='Approved'", con);
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
    protected void btn_approved_Click(object sender, EventArgs e)
    {
        Session["status"] = "pending";
        Response.Redirect("enq_status.aspx");
    }
    protected void btn_id_Click(object sender, EventArgs e)
    {
        Response.Write("login.aspx");
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        Response.Write("update done");
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Response.Write("logout done");
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
            string enq_id = ((Label)e.Item.FindControl("lbl_enq_id")).Text;
            string update2 = "update tbl_enquiry set e_status='Discharged' where enq_id=" + enq_id + "";
            MySqlCommand cmd1 = new MySqlCommand("delete from tbl_enquiry_temp where enq_id=" + id + "", con);
            MySqlCommand cmd2 = new MySqlCommand(update2, con);
            con.Open();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();
            dlc.EditItemIndex = -1;
            commentct();
        }
    }
}