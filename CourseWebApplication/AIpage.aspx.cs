using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseWebApplication
{
    public partial class AIpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void linkViewLectures_Click(object sender, EventArgs e)
        {
            Response.Redirect("ailectures.aspx");
        }
    }
}