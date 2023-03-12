using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class project_managent : System.Web.UI.Page
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
            MySqlCommand cmd = new MySqlCommand("select * from tbl_project", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gridview.DataSource = dt;
            gridview.DataBind();
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
    protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        //NewEditIndex property used to determine the index of the row being edited.  
        gridview.EditIndex = e.NewEditIndex;
        commentct();
    }
    protected void GridView1_Rowdeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
    {
        MySqlConnection con = new MySqlConnection(constring);
        //GridViewRow row = (GridViewRow)gridview.Rows[e.RowIndex];
        //Label id = (Label)row.FindControl("lblID");
        Label id = gridview.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
        MySqlCommand cmd = new MySqlCommand("delete from tbl_project where pro_id=" + Convert.ToInt32(id.Text) + "", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        gridview.EditIndex = -1;
        commentct();

    }
    protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {
        //Finding the controls from Gridview for the row which is going to update  
        Label id = gridview.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
        TextBox name = gridview.Rows[e.RowIndex].FindControl("txt_pro_name") as TextBox;
        TextBox detail = gridview.Rows[e.RowIndex].FindControl("txt_pro_detail") as TextBox;
        DropDownList city = gridview.Rows[e.RowIndex].FindControl("ddl_city") as DropDownList;
        DateTime today = DateTime.Today;
        MySqlConnection con = new MySqlConnection(constring);
        con.Open();
        //updating the record  
        MySqlCommand cmd = new MySqlCommand("Update tbl_project set pro_name='" + name.Text + "',pro_detail='" + detail.Text + "', pro_time='" + DateTime.Now.ToString("yyyy-mm-dd hh:mm:ss")+"' where pro_id=" + Convert.ToInt32(id.Text), con);
        cmd.ExecuteNonQuery();
        con.Close();
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        gridview.EditIndex = -1;
        //Call ShowData method for displaying updated data  
        commentct();
    }
    protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        gridview.EditIndex = -1;
        commentct();
    }

    protected void btn_new_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            string str = fu_image.FileName;
            fu_image.PostedFile.SaveAs(Server.MapPath(".") + "/" + str);
            string path = "~//" + str.ToString();
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = "INSERT INTO tbl_project (pro_name,pro_image,pro_city,pro_detail,pro_time) VALUES ('" + txt_catagory.Text + "','" + fu_image.FileName.ToString() + "','" + ddl_city.SelectedValue.ToString() + "','" + txt_detail.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "')";    

            //cmd.CommandText = "INSERT INTO tbl_property (p_cat,p_address,p_pin,city,p_image,p_pricing,p_features,p_owner) VALUES ('" + ddl_property.SelectedItem.ToString() + "','" + txt_address.Text + "'," + txt_pin.Text + ",'" + ddl_c_city.SelectedItem.ToString() + "','" + fu_image.FileName.ToString() + "'," + txt_price.Text + ",'" + txt_feature.Text + "','dinesh')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Write("Done dana done done!");
            con.Close();
            commentct();
        }
    }
}