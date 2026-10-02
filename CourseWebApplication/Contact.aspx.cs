using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseWebApplication
{

    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = PRANJAL_19\\MSSQLSERVER03; Initial Catalog = SF; Integrated Security = True");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(name.Text) || string.IsNullOrEmpty(email.Text) 
               || string.IsNullOrEmpty(message.Text))
            {
                // Display a message to the user indicating that all fields are mandatory
                Response.Write("<script>alert('Please fill in all fields');</script>");
                return;
            }

            string connectionString = "Data Source=PRANJAL_19\\MSSQLSERVER03;Initial Catalog=SF;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    try
                    {
                        // Set the connection for the command
                        cmd.Connection = con;

                        // Set the command text and parameters
                        cmd.CommandText = "INSERT INTO ContactUs (ConName, ConEmail, ConMsg) VALUES (@ConName, @ConEmail, @ConMsg)";
                        cmd.Parameters.AddWithValue("@ConName", name.Text);
                        cmd.Parameters.AddWithValue("@ConEmail", email.Text);
                        cmd.Parameters.AddWithValue("@ConMsg", message.Text);

                        // Open the connection
                        con.Open();
                        // Execute the command
                        cmd.ExecuteNonQuery();

                        // Clear input fields
                        name.Text = "";
                        email.Text = "";
                    
                        message.Text = "";

                        // Optionally, display a success message
                        Response.Write("<script>alert('Message sent successfully!');</script>");
                    }
                    catch (Exception ex)
                    {
                        // Handle the exception (logging, user feedback, etc.)
                        Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                    }
                }
            }


        }
    }
}