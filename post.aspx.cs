using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class post : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

    MySqlCommand cmd;
    MySqlDataAdapter da;
    DataSet ds;
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
    protected void btn_img_setting_Click(object sender, EventArgs e)
    {
        Response.Redirect("update_profile.aspx");
    }
    protected void btn_post_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            string str = fu_image.FileName;
            fu_image.PostedFile.SaveAs(Server.MapPath(".") + "//" + str);
            string path = "~//" + str.ToString();
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = "INSERT INTO tbl_property (p_cat,p_address,p_pin,city,p_image,p_pricing,p_duration,p_features,p_owner,p_time) VALUES ('" + ddl_property.SelectedItem.ToString() + "','" + txt_address.Text + "'," + txt_pin.Text + ",'" + ddl_c_city.SelectedItem.ToString() + "','" + fu_image.FileName.ToString() + "'," + txt_price.Text + ",'" + ddl_duration.SelectedItem.ToString() + "','" + txt_feature.Text + "','" + Session["a"] + "','" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "')";
            //cmd.CommandText = "INSERT INTO tbl_property (p_cat,p_address,p_pin,city,p_image,p_pricing,p_features,p_owner) VALUES ('" + ddl_property.SelectedItem.ToString() + "','" + txt_address.Text + "'," + txt_pin.Text + ",'" + ddl_c_city.SelectedItem.ToString() + "','" + fu_image.FileName.ToString() + "'," + txt_price.Text + ",'" + txt_feature.Text + "','dinesh')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Write("Post Done!");
            con.Close();
        }
    }

}