using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApmProject
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie userCookie = Request.Cookies["user"];

            welcomeLabel.Text = userCookie["firstName"] + " " + userCookie["lastName"];
        }
    }
}