using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseWebApplication
{
    public partial class javaquiz : System.Web.UI.Page
    {
        private Dictionary<string, string> answers = new Dictionary<string, string>
    {
        { "q1", "a" },
        { "q2", "b" },
        { "q3", "a" },
        { "q4", "c" },
        { "q5", "c" },
        { "q6", "b" },
        { "q7", "b" },
        { "q8", "d" },
        { "q9", "b" },
        { "q10", "b" },
        { "q11", "a" },
        { "q12", "d" },
        { "q13", "a" },
        { "q14", "a" },
        { "q15", "a" },
        { "q16", "c" },
        { "q17", "c" },
        { "q18", "c" },
        { "q19", "a" },
        { "q20", "a" }
    };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DisableQuizControls();
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            int score = 0;

            foreach (var question in answers.Keys)
            {
                var selectedValue = Request.Form[question];
                if (selectedValue != null && selectedValue.Equals(answers[question], StringComparison.OrdinalIgnoreCase))
                {
                    score++;
                }
            }

            int totalQuestions = answers.Count;
            resultLabel.Text = $"You scored {score} out of {totalQuestions}.";
            resultLabel.Visible = true;

            DisableQuizControls();
        }
        private void DisableQuizControls()
        {
            foreach (Control control in quizForm.Controls)
            {
                if (control is RadioButtonList radioButtonList)
                {
                    radioButtonList.Enabled = false;
                }
            }
        }
    }
}