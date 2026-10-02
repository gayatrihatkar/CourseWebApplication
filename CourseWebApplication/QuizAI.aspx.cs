using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.Web.UI;

namespace CourseWebApplication
{
    public partial class QuizAI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optionally add any logic needed on page load
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            var answers = new Dictionary<string, string>
            {
                { "q1", "a" }, // Artificial Intelligence
                { "q2", "d" }, // All of the above
                { "q3", "a" }, // A type of algorithm
                { "q4", "d" }, // All of the above
                { "q5", "a" }, // Learning with labels
                { "q6", "b" }, // Finding patterns in data
                { "q7", "d" }, // All of the above
                { "q8", "c" }, // Both A and B
                { "q9", "b" }, // Artificial Intelligence
                { "q10", "b" }, // A test for AI
                { "q11", "c" }, // Both A and B
                { "q12", "d" }, // Database management
                { "q13", "a" }, // Learning from rewards
                { "q14", "d" }, // All of the above
                { "q15", "b" }, // An AI program that simulates conversation
                { "q16", "d" }, // All of the above
                { "q17", "d" }, // All of the above
                { "q18", "d" }, // All of the above
                { "q19", "d" }, // All of the above
                { "q20", "d" }  // All of the above
            };

            int score = 0;
            int totalQuestions = answers.Count;

            // Check the answers
            foreach (var question in answers.Keys)
            {
                var selectedValue = Request.Form[question];
                if (selectedValue != null && selectedValue.Equals(answers[question], StringComparison.OrdinalIgnoreCase))
                {
                    score++;
                }
            }

            // Display the score
            resultLabel.Text = $"You scored {score} out of {totalQuestions}.";

            // Disable all inputs after submission
            DisableQuizControls();
        }

        private void DisableQuizControls()
        {
            // Iterate through the form controls to disable radio buttons
            foreach (Control control in quizForm.Controls)
            {
                if (control is RadioButtonList)
                {
                    ((RadioButtonList)control).Enabled = false;
                }
            }
        }
    }
}
