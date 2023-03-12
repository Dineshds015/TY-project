using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class display : System.Web.UI.Page
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
            MySqlCommand cmd = new MySqlCommand("select * from tbl_property where p_owner='" + Session["a"] + "'",con);
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
        if (e.CommandName == "edit")
        {
            dlc.EditItemIndex = e.Item.ItemIndex;
            commentct();
        }
        else if(e.CommandName=="cancel")
        {
            dlc.EditItemIndex = -1;
            commentct();
        }
        else if (e.CommandName == "update")
        {
            MySqlConnection con = new MySqlConnection(constring);
            string id = ((Label)e.Item.FindControl("lbl_p_id")).Text;
            string address = ((TextBox)e.Item.FindControl("txt_p_address")).Text;
            string pincode = ((TextBox)e.Item.FindControl("txt_p_pin")).Text;
            string features = ((TextBox)e.Item.FindControl("txt_p_features")).Text;
            string price = ((TextBox)e.Item.FindControl("txt_p_pricing")).Text;
            MySqlCommand cmd = new MySqlCommand("update tbl_property set p_address='" + address + "',p_pin='" + pincode + "', p_features='" + features + "',p_pricing='" + price + "',p_time='" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "' where p_id=" + id + "", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            dlc.EditItemIndex = -1;
            commentct();
        }
        else if (e.CommandName=="delete")
        {
            MySqlConnection con = new MySqlConnection(constring);
            string id = ((Label)e.Item.FindControl("lbl_p_id")).Text;
            MySqlCommand cmd = new MySqlCommand("delete from tbl_property where p_id=" + id + "", con);
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

    protected void dlc_DeleteCommand(object source, DataListCommandEventArgs e)
    {
    }

    protected void dlc_CancelCommand(object source, DataListCommandEventArgs e)
    {
    }
}