using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseWebApplication
{
    public partial class loginuser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = PRANJAL_19\\MSSQLSERVER03; Initial Catalog = SF; Integrated Security = True;");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }





        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUsername.Text) || string.IsNullOrEmpty(txtPassword.Text))
            {
                // Display a message to the user indicating that all fields are mandatory
                Response.Write("<script>alert('Please fill in all fields');</script>");
                return;
            }
            con.Open();

            // Set the connection for the command
            SqlCommand cmd = new SqlCommand("SELECT * FROM Register WHERE Regname=@txtUsername AND Regpassword=@txtPassword", con);
            cmd.Parameters.AddWithValue("@txtUsername", txtUsername.Text);
            cmd.Parameters.AddWithValue("@txtPassword", txtPassword.Text);

            // Execute the command to retrieve data
            SqlDataReader reader = cmd.ExecuteReader();

            // Check if any rows are returned
            if (reader.Read())
            {
                Response.Redirect("Master.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid User";
            }

            // Close the reader and connection
            reader.Close();


            // Clear input fields
            txtUsername.Text = "";
            txtPassword.Text = "";
            con.Close();
        }

       
    }
}
        
    
