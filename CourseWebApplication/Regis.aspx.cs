using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Xml.Linq;
using System.Configuration;

namespace CourseWebApplication
{
    public partial class Regis : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=PRANJAL_19\\MSSQLSERVER03;Initial Catalog=SF;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            string fullName = FullNameTextBox.Text.Trim();
            string email = EmailTextBox.Text.Trim();
            string mobile = MobileTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();
            string confirmPassword = ConfirmPasswordTextBox.Text.Trim();
            string gender = GenderDropDown.SelectedValue;

            // Simple validation
            if (string.IsNullOrEmpty(fullName) || string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(mobile) || string.IsNullOrEmpty(password) ||
                string.IsNullOrEmpty(gender) || password != confirmPassword)
            {
                // Handle validation errors (e.g., show message)
                return;
            }

            // Database connection and insertion logic
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Users (FullName, Email, Mobile, Password, Gender) VALUES (@FullName, @Email, @Mobile, @Password, @Gender)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@FullName", fullName);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Mobile", mobile);
                    command.Parameters.AddWithValue("@Password", password); // Consider hashing the password
                    command.Parameters.AddWithValue("@Gender", gender);

                    connection.Open();
                    try
                    {
                        command.ExecuteNonQuery();
                        // Registration successful, redirect or show a message
                    }
                    catch (Exception ex)
                    {
                        // Handle exception (e.g., log the error)
                    }
                }
            }
        }
    }
}