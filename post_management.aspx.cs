using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class post_management : System.Web.UI.Page
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
            MySqlCommand cmd = new MySqlCommand("select * from tbl_property", con);
            MySqlCommand cm = new MySqlCommand("select 'p_id' from tbl_property", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            MySqlDataAdapter da1 = new MySqlDataAdapter(cm);
            DataTable dt1 = new DataTable();
            Label1.Text = "Total Post : " + da1.Fill(dt1).ToString();
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
        Session["b"]=null;
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
        MySqlCommand cmd = new MySqlCommand("delete from tbl_property where p_id=" + Convert.ToInt32(id.Text) + "", con);
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
        TextBox catagory = gridview.Rows[e.RowIndex].FindControl("txt_p_cat") as TextBox;
        TextBox address = gridview.Rows[e.RowIndex].FindControl("txt_p_address") as TextBox;
        TextBox pin = gridview.Rows[e.RowIndex].FindControl("txt_p_pin") as TextBox;
        TextBox city = gridview.Rows[e.RowIndex].FindControl("txt_p_city") as TextBox;
        TextBox price = gridview.Rows[e.RowIndex].FindControl("txt_p_pricing") as TextBox;
        TextBox features = gridview.Rows[e.RowIndex].FindControl("txt_p_features") as TextBox;
        TextBox owner = gridview.Rows[e.RowIndex].FindControl("txt_p_owner") as TextBox;
        MySqlConnection con = new MySqlConnection(constring);
        con.Open();
        //updating the record  
        MySqlCommand cmd = new MySqlCommand("Update tbl_property set p_cat='" + catagory.Text + "',p_address='" + address.Text + "' ,p_pin='" + pin.Text + "' ,city='" + city.Text + "',p_pricing='" + price.Text + "',p_features='" + features.Text + "',p_owner='" + owner.Text + "',p_time='" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "' where p_id=" + Convert.ToInt32(id.Text), con);
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
}
