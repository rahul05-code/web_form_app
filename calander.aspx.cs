using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_form_app
{
    public partial class calander : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string files = FileUpload1.FileName;
            string path = Server.MapPath("~/Uploads/")+files;
            FileUpload1.SaveAs(path);
            Label1.Text = "File Uploded"+files;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label2.Text = "Selected Date is " + Calendar1.SelectedDate.ToString("DD-MM-YYYY");
            Label2.Text = "Selected Date is " + Calendar1.TodaysDate.ToString("DD-MM-YYYY");
            Label2.Text = "Selected Date is " + Calendar1.SelectedDate.DayOfWeek.ToString();           


        }
    }
}