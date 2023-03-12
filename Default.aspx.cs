using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
    protected void Login_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select * from tbl_admin where a_username='" + txt_c_email.Text + "' and a_password='" + txt_c_password.Text + "'", con);
            int i = Convert.ToInt16(cmd.ExecuteScalar());
            if (i == 0)
            {
                Response.Write("Not valid user");
            }
            else
            {

                Session["a"] = txt_c_email.Text;
                if (Session["a"] != null)
                {
                    Response.Write("Logined");
                }
                else
                {
                    Response.Write("Hello");
                }

            }
            con.Close();
        }
    }
}