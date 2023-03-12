using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Net;
using System.Data.SqlClient;
using System.Collections.Specialized;

public partial class customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

    MySqlCommand cmd;
    MySqlDataAdapter da;
    DataSet ds;

    protected void btn_home_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
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
    protected void imgbtn_location_Click(object sender, EventArgs e)
    {
        Response.Write("imgbtn_location_Click");
    }
    protected void btn_account_Click(object sender, EventArgs e)
    {
        Response.Write("btn_account_Click");
    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            //cmd.CommandText = "INSERT INTO tbl_customer VALUES (2, 'shravan', 6353649008, 'shravanss015@gmail.com',395010, 'surat')";
            cmd.CommandText = "INSERT INTO tbl_customer (c_name,c_phone,c_email,c_pin,city,c_pass,c_date) VALUES ('" + txt_c_name.Text + "'," + txt_c_phone.Text + ",'" + txt_c_email.Text + "'," + txt_c_pin.Text + ",'" + ddl_c_city.SelectedItem.ToString() + "','" + txt_c_password.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Redirect("login.aspx");
            con.Close();
        }
    }
    
}