using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_form_app
{
    public partial class home_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("login_page.aspx");
            lblLoggedUser.Text = Session["user"].ToString();

        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("login_page.aspx");
        }
    }
}