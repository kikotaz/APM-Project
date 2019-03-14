using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApmProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitUserBtn_Click(object sender, EventArgs e)
        {
            Random random = new Random();
            int userID = random.Next(1, 1000);

            string query = "insert into tblUser (userID, firstName, lastName, eMail, password) " +
                "values (" + userID.ToString() + ",'" + firstNameInput.Text + "','" + lastNameInput.Text +
                "','" + emailInput.Text + "','" + passwordInput.Text + "')";

            DAL executer = new DAL();

            executer.AddUser(query);

            Response.Redirect("default.aspx");
        }
    }
}