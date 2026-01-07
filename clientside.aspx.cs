using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_form_app
{
    public partial class clientside : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void HiddenField1_ValueChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HiddenField1.Value = "12355654";
            hiddenlable.Text = "Hidden Field Value :" + HiddenField1.Value;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            int count = 0;

            if (ViewState["clicks"] != null)
            {
                count = (int)ViewState["clicks"];
            }
            count = count + 1;

            ViewState["clicks"] = count;

            viewstatelable.Text = "TEXTBOX Clicked" + count;
        }

        protected void createbtn_Click(object sender, EventArgs e)
        {
            //HttpCookie cookie = new HttpCookie("mycookie");
            Response.Cookies["mycookie"].Value=cookietext.Text;
            Response.Cookies["mycookie"].Expires = DateTime.Now.AddMinutes(3);
            //Response.Cookies.Add(cookie);
            cookieslable.Text = "Cookie Created!!";

        }

        protected void readbtn_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["mycookie"] != null)
            {
                cookieslable.Text = "Cookie value :" + Request.Cookies["mycookie"].Value;
            }
            else
            {
                cookieslable.Text = "Cookie not found!";
            }
        }

        protected void querybtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/clientside.aspx?data="+querystringlable.Text);
        }
    }
}