using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        commentct();
    }
    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
    private void commentct()
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select * from tbl_contact", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            MySqlCommand cmd1;
            MySqlDataAdapter da1;
            DataSet ds1;
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
        Response.Write("btn_contact_Click");
    }
    protected void btn_project_Click(object sender, EventArgs e)
    {
        Response.Redirect("project.aspx");
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        Response.Write("btn_search_Click");
    }
    protected void btn_img_setting_Click(object sender, EventArgs e)
    {
        Response.Redirect("update_profile.aspx");
    }
    protected void btn_facebook_Click(object sender, EventArgs e)
    {
        Response.Write("Facebook");
    }

    protected void btn_query_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            con.Open();
            MySqlCommand cmd1 = new MySqlCommand();
            //cmd.CommandText = "INSERT INTO tbl_customer VALUES (2, 'shravan', 6353649008, 'shravanss015@gmail.com',395010, 'surat')";
            cmd1.CommandText = "INSERT INTO tbl_query (q_name,q_phone,q_email,q_query) VALUES ('" + txt_q_name.Text + "'," + txt_q_phone.Text + ",'" + txt_q_email.Text + "','" + txt_q_query.Text + "')";
            cmd1.Connection = con;
            cmd1.ExecuteNonQuery();
            Response.Write("<script type=\"text/javascript\">alert('Query Sent Successfully !');</script>");
            con.Close();
        }
    }

    protected void dlc_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
    }
}