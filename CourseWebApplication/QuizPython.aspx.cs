using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseWebApplication
{
    public partial class QuizPython : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Any logic needed during page load
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            var answers = new Dictionary<string, string>
            {
                { "q1", "a" }, // .py
                { "q2", "c" }, // def
                { "q3", "c" }, // 2
                { "q4", "b" }, // list
                { "q5", "b" }, // #
                { "q6", "a" }, // 3
                { "q7", "b" }, // ()
                { "q8", "c" }, // Object
                { "q9", "a" }, // try
                { "q10", "a" }, // <class 'list'>
                { "q11", "a" }, // import module_name
                { "q12", "b" }, // 11
                { "q13", "b" }, // Does nothing
                { "q14", "b" }, // my_variable
                { "q15", "a" }, // class MyClass:
                { "q16", "b" }, // append()
                { "q17", "b" }, // An anonymous function
                { "q18", "b" }, // try-except
                { "q19", "a" }, // Refers to the instance of the class
                { "q20", "a" }  // {}
            };

            int score = 0;
            int totalQuestions = answers.Count;

            foreach (var question in answers.Keys)
            {
                var selectedValue = Request.Form[question];
                if (!string.IsNullOrEmpty(selectedValue) && selectedValue.Equals(answers[question], StringComparison.OrdinalIgnoreCase))
                {
                    score++;
                }
            }

            // Display the score
            string v = $"You scored {score} out of {totalQuestions}.";
            resultLabel.Text = $"You scored {score} out of {totalQuestions}.";

            // Disable all radio buttons after submission
            DisableQuizControls();
        }

        private void DisableQuizControls()
        {
            // Loop through all controls in the form and disable them
            foreach (Control control in form1.Controls)
            {
                if (control is RadioButtonList)
                {
                    RadioButtonList rbl = (RadioButtonList)control;
                    rbl.Enabled = false;
                }
            }
        }
    }

    internal class resultLabel
    {
        public static string Text { get; internal set; }
    }
}
