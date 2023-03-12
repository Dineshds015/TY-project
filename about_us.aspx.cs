using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class au_management : System.Web.UI.Page
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
}