using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseWebApplication
{
    public partial class Adminpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Replace with your actual validation logic
            if (IsValidAdmin(username, password))
            {
                // Redirect to admin dashboard or home page
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                // Display error message
                lblMessage.Text = "Invalid username or password.";
                lblMessage.Visible = true;
            }
        }

        private bool IsValidAdmin(string username, string password)
        {
            // This is just a placeholder. Replace with your actual validation logic.
            return username == "gayatri" && password == "gayatri16";
        }
    }
}
        
    
