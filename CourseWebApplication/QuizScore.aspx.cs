using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public class DatabaseHelper
{
    private string connectionString = "Data Source=PRANJAL_19\\MSSQLSERVER03;Initial Catalog=SF;Integrated Security=True;";

    public void SaveQuizScore(string name, string email, string language)
    {
        using (var connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string sql = "INSERT INTO QuizScore (Name, Email, Language) VALUES (@Name, @Email, @Language)";
            using (var command = new SqlCommand(sql, connection))
            {
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Language", language);
                command.ExecuteNonQuery();
            }
        }
    }
}

namespace CourseWebApplication
{
    public partial class QuizScore : System.Web.UI.Page
    {
        private DatabaseHelper dbHelper;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbHelper = new DatabaseHelper();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string selectedLanguage = ddlLanguages.SelectedValue;

            // Replace 100 with actual score calculation
            int score = CalculateScore();

            // Save the score to the database
            dbHelper.SaveQuizScore(name, email, selectedLanguage);

            // Redirect to specific page based on selected language
            switch (selectedLanguage)
            {
                case "C":
                    Response.Redirect("cquestions.aspx");
                    break;
                case "Python":
                    Response.Redirect("pythonquzi.aspx");
                    break;
                case "C++":
                    Response.Redirect("cppquiz.aspx");
                    break;
                case "Java":
                    Response.Redirect("javaquiz.aspx");
                    break;
                case "AI":
                    Response.Redirect("QuizAI.aspx");
                    break;
                case "Data Science":
                    Response.Redirect("datascience.aspx");
                    break;
                default:
                    // Handle unknown case
                    break;
            }

        }
        private int CalculateScore()
        {
            // Implement your logic to calculate the score based on quiz answers
            return 00;// Placeholder value; replace with actual score calculation
        }
    }

}