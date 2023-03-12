using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Request.Cookies["userid"]!=null)
            {
                txt_a_username.Text = Request.Cookies["userid"].Value;
            }
            if (Request.Cookies["pass"] != null)
            {
                txt_a_password.Attributes.Add("value", Request.Cookies["pass"].Value);
            }
            if(Request.Cookies["userid"]!=null && Request.Cookies["pass"] != null)
            {
                rememberme.Checked = true;
            }
        }
    }
    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

    protected void Login_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select * from tbl_admin where a_username='" + txt_a_username.Text + "' and a_password='" + txt_a_password.Text + "'", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            
            int i = Convert.ToInt16(cmd.ExecuteScalar());
            if (i == 0)
            {
                Response.Write("invalid user");
            }
            else
            {

                Session["b"] = txt_a_username.Text;
                if (Session["b"] != null)
                {
                    if (rememberme.Checked == true)
                    {
                        Response.Cookies["userid"].Value = txt_a_username.Text;
                        Response.Cookies["pass"].Value = txt_a_password.Text;
                        Response.Cookies["userid"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["pass"].Expires = DateTime.Now.AddDays(15);
                    }
                    else
                    {
                        Response.Cookies["userid"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["pass"].Expires = DateTime.Now.AddDays(-1);
                    }
                    Response.Redirect("adminhomepage.aspx");
                }
                else
                {
                    Response.Write("Request Timeout");
                }

            }
            con.Close();
        }
    }
}