using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseWebApplication
{
    public partial class managequiz : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=PRANJAL_19\\MSSQLSERVER03;Initial Catalog=SF;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindgrid();
            }

        }
        private void bindgrid()
        {
            disp_data();
        }


        protected void show_Click(object sender, EventArgs e)
        {
            int userCount = GetUserCountFromLoginData();
            numbering.Text = userCount.ToString();

        }
        private int GetUserCountFromLoginData()
        {
            int userCount = 0;
            string query = "SELECT COUNT(ScoreID) FROM QuizScore WHERE ScoreID IS NOT NULL";

            // Ensure the connection is open before executing the command
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            using (SqlCommand command = new SqlCommand(query, con))
            {
                userCount = (int)command.ExecuteScalar();
            }

            return userCount;
        }
        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT [ScoreID], [Name], [Email], [Language] FROM [QuizScore]";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            // Ensure the connection is open before filling the DataTable
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            // Ensure the connection is closed when the page is unloaded
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
        protected void userdata_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GridView1.EditIndex = e.NewEditIndex;
            bindgrid();

        }
        protected void userdata_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            TextBox txtName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtName");
            TextBox textEmail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtEmail");
            string name = txtName.Text;
            string email = textEmail.Text;
            UpdateData(id, name, email);
            GridView1.EditIndex = -1;
            bindgrid();

        }
        private void UpdateData(int id, string name, string email)
        {
            string query = "UPDATE QuizScore SET ULName = @Name, ULEmail = @Email, ULLanguage = @Language WHERE ULScoreID = @ScoreID";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@ID", id);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                con.Close();
            }

        }
        protected void userdata_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bindgrid();
        }

        protected void userdata_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            DeletedData(id);
            bindgrid();

        }
        private void DeletedData(int id)
        {
            string query = "DELETE FROM QuizScore WHERE ScoreID = @ScoreID";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@ScoreID", id);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}