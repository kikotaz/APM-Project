using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApmProject
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitUserBtn_Click(object sender, EventArgs e)
        {
            string query = "SELECT firstName,lastName,eMail,password FROM tblUser WHERE eMail = '" +
                emailInput.Text + "' AND password= '" + passwordInput.Text + "'";

            DAL executer = new DAL();

            var reader = executer.GetUser(query);

            if (!reader.HasRows)
            {
                wrongDetails.Text = "Wrong login details, please check your details";
            }

            else
            {
                while (reader.Read())
                {
                    if (emailInput.Text.Equals(reader.GetString(2)) && passwordInput.Text.Equals(reader.GetString(3)))
                    {
                        HttpCookie userCookie = new HttpCookie("user");
                        userCookie.Values["firstName"] = reader.GetString(0);
                        userCookie.Values["lastName"] = reader.GetString(1);

                        Response.Cookies.Add(userCookie);

                        Response.Redirect("Home.aspx");
                    }
                }
            }
        }
    }
}