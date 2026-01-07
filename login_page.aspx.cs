using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;

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
            SqlCommand cmd = new SqlCommand("select username,password from login1 where username=@u and password=@p",con);
            con.Open();

            cmd.Parameters.AddWithValue("@u",usertxt.Text);
            cmd.Parameters.AddWithValue("@p",passtxt.Text);

            SqlDataReader rdr = cmd.ExecuteReader();

            if (rdr.Read())
            {
                Session["username"] = usertxt.Text;
                HttpCookie cookie = new HttpCookie("usercookie");
                cookie.Value = usertxt.Text;
                cookie.Expires = DateTime.Now.AddMinutes(1);
                Response.Cookies.Add(cookie);
                Response.Redirect("new_loan_app.aspx");
            }
            else
            {
                Response.Write("username or password dont match !!");
            }



        }
    }
}