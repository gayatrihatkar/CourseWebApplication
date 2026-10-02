using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CourseWebApplication
{
    public partial class Regist : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=PRANJAL_19\\MSSQLSERVER03;Initial Catalog=SF;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string email = txtEmail.Text;
            string mobile = txtMobile.Text;
            string gender = ddlGender.SelectedValue;
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            // Basic validation
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(mobile) || string.IsNullOrEmpty(gender) ||
                string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
            {
                // Display error message (you can use a label or any other method)
                return;
            }

            if (password != confirmPassword)
            {
                // Display password mismatch error
                return;
            }

            try
            {
                con.Open();
                using (SqlTransaction transaction = con.BeginTransaction())
                {
                    cmd.Connection = con;
                    cmd.Transaction = transaction;
                    cmd.CommandText = "INSERT INTO Register (Regname, Regemail, Regmobile, Reggender, Regpassword, Regcompassword) " +
                                                  "VALUES (@Regname, @Regemail, @Regmobile, @Reggender, @Regpassword, @Regcompassword)";

                    cmd.Parameters.AddWithValue("@Regname", username);
                    cmd.Parameters.AddWithValue("@Regemail", email);
                    cmd.Parameters.AddWithValue("@Regmobile", mobile);
                    cmd.Parameters.AddWithValue("@Reggender", gender);
                    cmd.Parameters.AddWithValue("@Regpassword", password);
                    cmd.Parameters.AddWithValue("@Regcompassword", confirmPassword);

                    cmd.ExecuteNonQuery();
                    transaction.Commit();
                }

                // Clear input fields
                txtUsername.Text = "";
                txtEmail.Text = "";
                txtMobile.Text = "";
                ddlGender.SelectedIndex = 0;
                txtPassword.Text = "";
                txtConfirmPassword.Text = "";

                Response.Redirect("loginuser.aspx");
            }
            catch (SqlException sqlEx)
            {
                Response.Write("<script>alert('SQL Error: " + sqlEx.Message + "');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}



