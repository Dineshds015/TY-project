using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["b"] == null)
        {
            Response.Redirect("adminlogin.aspx");
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
        Response.Write("btn_contact_Click");
    }
    protected void btn_productm_Click(object sender, EventArgs e)
    {
        Response.Write("btn_contact_Click");
    }
    protected void btn_postm_Click(object sender, EventArgs e)
    {
        Response.Write("btn_contact_Click");
    }
    protected void btn_index_Click(object sender, EventArgs e)
    {
        Response.Write("btn_contact_Click");
    }
    protected void btn_aboutm_Click(object sender, EventArgs e)
    {
        Response.Write("btn_contact_Click");
    }
    protected void btn_contactm_Click(object sender, EventArgs e)
    {
        Response.Write("btn_contact_Click");
    }
    protected void btn_usersite_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
    protected void btn_facebook_Click(object sender, EventArgs e)
    {
        Response.Write("Facebook");
    }
    protected void dlc_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            dlc.EditItemIndex = e.Item.ItemIndex;
            commentct();
        }
        else if (e.CommandName == "cancel")
        {
            dlc.EditItemIndex = -1;
            commentct();
        }
        else if (e.CommandName == "update")
        {
            MySqlConnection con = new MySqlConnection(constring);
            string id = ((Label)e.Item.FindControl("cu_id")).Text;
            string number = ((TextBox)e.Item.FindControl("txt_cu_number")).Text;
            string email = ((TextBox)e.Item.FindControl("txt_cu_email")).Text;
            string address = ((TextBox)e.Item.FindControl("txt_cu_address")).Text;
            MySqlCommand cmd = new MySqlCommand("update tbl_contact set cu_number='" + number + "',cu_email='" + email + "',cu_address='" + address + "' where cu_id=" + id + "", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            dlc.EditItemIndex = -1;
            commentct();
        }
    }
    protected void dlc_EditCommand(object source, DataListCommandEventArgs e)
    {
    }
    protected void dlc_CancelCommand(object source, DataListCommandEventArgs e)
    {
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
}