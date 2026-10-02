using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Xml.Linq;

namespace CourseWebApplication
{
    public partial class feedback : Page
    {
        SqlConnection con = new SqlConnection("Data Source = PRANJAL_19\\MSSQLSERVER03; Initial Catalog = SF; Integrated Security = True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Retrieve data from the form
                string name = Name.Text;
                string email = Email.Text;
                string rating = Rating.SelectedValue;
                string feedbackText = FeedbackText.Text;
                string improvements = Improvements.Text;

                // Insert feedback into the database
                

               
                
                    string query = "INSERT INTO Feedback (Name, Email, Rating, FeedbackText, Improvements) VALUES (@Name, @Email, @Rating, @FeedbackText, @Improvements)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Rating", rating);
                        cmd.Parameters.AddWithValue("@FeedbackText", feedbackText);
                        cmd.Parameters.AddWithValue("@Improvements", improvements);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            

                // Redirect to thank you page
                Response.Redirect("Master.aspx");
            }
        }
    }

