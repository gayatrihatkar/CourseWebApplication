using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseWebApplication
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=PRANJAL_19\\MSSQLSERVER03;Initial Catalog=SF;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        
        private void LoadDashboardData()
        {
            try
            {
                con.Open();
                lblStudents.Text = GetCount("SELECT COUNT(RegID) FROM Register").ToString();
                lblQuiz.Text = GetCount("SELECT COUNT(ScoreID) FROM QuizScore").ToString();
                lblFeedback.Text = GetCount("SELECT COUNT(Id) FROM Feedback").ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<Script>alert('" + ex.Message + "');</script>");

            }
            finally
            {
                con.Close();
            }
        }
        private int GetCount(string query)
        {
            SqlCommand cmd = new SqlCommand(query, con);
            int count = (int)cmd.ExecuteScalar();
            return count;
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                {
                LoadDashboardData();
                    //LoadTableData();

                }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("masterpage.aspx");
        }
        //private void LoadTableData()
        //{
        //    try
        //    {
        //        string query = "SELECT DelID, DelName, DelAmt, DelDate FROM Delivery";
        //        SqlCommand cmd = new SqlCommand(query, con);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);

        //        // Bind the data to the GridView
        //        GridView.DataSource = dt;
        //        GridView.DataBind();
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    }
        //}
    }
}

