using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace web_form_app
{
    public partial class login_page : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\rkanz\\source\\repos\\web_form_app\\App_Data\\login.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select username,password from login1 where username='"+usertxt.Text+"' and password='"+passtxt.Text+"'",con);
            con.Open();

            SqlDataReader rdr = cmd.ExecuteReader();

            if (rdr.Read())
            {
                Session["username"] = usertxt.Text;
                Response.Redirect("new_loan_app.aspx");
            }
            else
            {
                Response.Write("username or password dont match !!");
            }



        }
    }
}