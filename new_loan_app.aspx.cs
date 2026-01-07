using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_form_app
{
    public partial class new_loan_app : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["usercookie"] != null)
                {
                    string user = Request.Cookies["usercookie"]["username"];
                    Label1.Text ="Welcome "+user;


                }
            }

        }

        protected void lrtxt_TextChanged(object sender, EventArgs e)
        {

        }
    }
}