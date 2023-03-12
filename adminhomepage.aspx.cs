using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
public partial class adminhomepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["b"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
    protected void btn_home_Click(object sender, EventArgs e)
    {
        if (Session["b"] != null)
        {
            Response.Redirect("adminhomepage.aspx");
        }
        else
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session["b"] = null;
        Response.Redirect("adminlogin.aspx");
    }
    protected void btn_about_Click(object sender, EventArgs e)
    {
        Response.Redirect("about_us.aspx");
    }
    protected void btn_contact_Click(object sender, EventArgs e)
    {
        Response.Redirect("contact_us.aspx");
    }
    protected void btn_userm_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_management.aspx");
    }
    protected void btn_postm_Click(object sender, EventArgs e)
    {
        Response.Redirect("post_management.aspx");
    }
    protected void btn_enqm_Click(object sender, EventArgs e)
    {
        Response.Redirect("enquiry_management.aspx");
    }
    protected void btn_projectm_Click(object sender, EventArgs e)
    {
        Response.Redirect("project_management.aspx");
    }
    protected void btn_contactm_Click(object sender, EventArgs e)
    {
        Response.Redirect("cu_management.aspx");
    }
    protected void btn_querym_Click(object sender, EventArgs e)
    {
        Response.Redirect("query_management.aspx");
    }
    protected void btn_usersite_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
}