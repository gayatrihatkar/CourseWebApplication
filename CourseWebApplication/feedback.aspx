<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="CourseWebApplication.feedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <style>
        /* Styles/site.css */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f0f4f8;
    color: #333;
    margin: 0;
    padding: 20px;
}

.containerr {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            background-color: #FFFFFF;
        }

h2 {
    color: #4CAF50;
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="text"], 
input[type="email"], 
textarea, 
select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    transition: border-color 0.3s;
}

input[type="text"]:focus, 
input[type="email"]:focus, 
textarea:focus, 
select:focus {
    border-color: #4CAF50;
    outline: none;
}

textarea {
    resize: vertical; /* Allows vertical resizing */
}

.error {
    margin-top: 5px;
    color: red;
    font-size: 12px;
}

.btn {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #45a049;
}

@media (max-width: 768px) {
    .containerr {
        padding: 15px;
        
    }

    h2 {
        font-size: 1.5em;
    }

    .btn {
        font-size: 14px;
    }
}


    </style>
    <style>
             *{    margin: 0;    padding: 0;    font-family: Arial, Helvetica, sans-serif;    font-size: 16px;    color: black;}footer{    background: #343434;    padding-top: 50px;}.container{    width: 1140px;    margin: auto;    display: flex;    justify-content: center;}.footer-content{    width: 33.3%;}h3{    font-size: 28px;    margin-bottom: 15px;    text-align: center;}.footer-content p{    width:190px;    margin: auto;    padding: 7px;}.footer-content ul{    text-align: center;}.list{    padding: 0;}.list li{    width: auto;    text-align: center;    list-style-type:none;    padding: 7px;    position: relative;}.list li::before{    content: '';    position: absolute;    transform: translate(-50%,-50%);    left: 50%;    top: 100%;    width: 0;    height: 2px;    background: #f18930;    transition-duration: .5s;}.list li:hover::before{    width: 70px;}.social-icons{    text-align: center;    padding: 0;}.social-icons li{    display: inline-block;    text-align: center;    padding: 5px;}.social-icons i{    color: white;    font-size: 25px;}a{    text-decoration: none;}a:hover{    color: #f18930;}.social-icons i:hover{    color: #f18930;}.bottom-bar{    background: #f18930;    text-align: center;    padding: 10px 0;    margin-top: 50px;}.bottom-bar p{    color: #343434;    margin: 0;    font-size: 16px;    padding: 7px;}
 .auto-style39 {     height: 177px;     background-color: #343434; } .auto-style40 {     width: 204px;     height: 153px;     padding-top:1em; } .auto-style41 {     font-size: 90px; } .newStyle10 {     font-family: "Copperplate Gothic Bold"; } .auto-style42 {     font-family: "Copperplate Gothic Bold";     font-size: 90px;     color: #FFFFFF;     padding-bottom:2em; } .nav-wrapper{     background-color:#120D31;     padding:10px; }
 .nav-wrapper ul{     list-style-type:none;     padding:0;     margin:0;     display:flex; }
 .nav-wrapper li{     position:relative;     margin-right:20px; }
 .nav-wrapper a{     color:#ffffff;     text-decoration:none;     font-weight:bold;     padding:10px 15px;     display:block; }
 .nav-wrapper li:hover > a{     background-color:#808080; }
 .dropdown, .dropdown1{     display:none;     position:absolute;     background-color:#120D31;     padding:10px;     z-index:1; }
 .nav-wrapper li:hover .dropdown, .nav-wrapper li:hover .dropdown1{     display:block; }
 .dropdown ul, .dropdown1 ul{     list-style-type:none;     padding:0;     margin:0; }
 .dropdown li, .dropdown1 li{     margin:5px 0; }
 .drag{     color:#ffffff; }
    </style>
</head>
<body>
        <div class="auto-style39">    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        <img alt="" class="auto-style40" src="image/newlogo.jpg" /><span class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style42">SkillForge</span></div><nav>
        <div class="nav-wrapper">
            <ul>
                <li class="active"><a href="Master.aspx">Home</a></li>
                               <li>                    <a href="#">Courses</a>
                    <div class="dropdown">
                        <ul>
                            <li><a href="pythonpage.aspx" class="drag">Python</a></li>
                            <li><a href="Cpp page.aspx" class="drag">C++</a></li>
                            <li><a href="javapage.aspx" class="drag">Java</a></li>
                            <li><a href="Cpage.aspx" class="drag">C</a></li>
                            <li><a href="AIpage.aspx" class="drag">Artificial Intelligence</a></li>
                            <li><a href="datapage.aspx" class="drag">Data Science</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="newaboutus.aspx">About Us</a></li>
                <li><a href="Contact.aspx">Contact Us</a></li>
                <li>
                    <a href="#">Others</a>
                    <div class="dropdown1">
                        <ul>
                            <li><a href="QuizScore.aspx">Quizzes</a></li>
                            <li><a href="feedback.aspx">FeedBack Form</a></li>

                        </ul>
                    </div>
                </li>
                <li><a href="DHome.aspx">Logout</a></li>
            </ul>
        </div>
    </nav>
    <form id="form1" runat="server">

        <div class="containerr">
            <h2>Feedback Form</h2>
            <div class="form-group">
                <label for="Name">Name:</label>
                <asp:TextBox ID="Name" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="Name"
                    ErrorMessage="Name is required." CssClass="error" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="Email">Email:</label>
                <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="Email"
                    ErrorMessage="Email is required." CssClass="error" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="Email"
                    ErrorMessage="Invalid email format." CssClass="error" ForeColor="Red"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label for="Rating">Rating:</label>
                <asp:DropDownList ID="Rating" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select Rating" Value="" />
                    <asp:ListItem Text="Poor" Value="Poor" />
                    <asp:ListItem Text="Better" Value="Better" />
                    <asp:ListItem Text="Good" Value="Good" />
                    <asp:ListItem Text="Excellent" Value="Excellent" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvRating" runat="server" ControlToValidate="Rating"
                    ErrorMessage="Rating is required." CssClass="error" ForeColor="Red"
                    InitialValue=""></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="FeedbackText">Feedback:</label>
                <asp:TextBox ID="FeedbackText" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="4"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFeedbackText" runat="server" ControlToValidate="FeedbackText"
                    ErrorMessage="Feedback is required." CssClass="error" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="Improvements">Improvements:</label>
                <asp:TextBox ID="Improvements" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="4"></asp:TextBox>
            </div>

            <asp:Button ID="SubmitButton" runat="server" Text="Submit Feedback" CssClass="btn" OnClick="SubmitButton_Click"  />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" ShowSummary="true" ForeColor="Red" />
            <br />
        </div>
                <footer>        <div class="container">            <div class="footer-content">                <h3 class="drag">Contact Us</h3>
                <p class="drag">Email:skillforge@gmail.com</p>
                <p class="drag">Phone:+91 8180983610</p>
                <p class="drag">Address:Khed</p>
            </div>
                       <div class="footer-content">
    <h3 class="drag">Quick Links</h3>
     <ul class="list">
        <li><a href="Master.aspx" class="drag">Home</a></li>
        <li><a href="newaboutus.aspx" class="drag">About</a></li>
        <li><a href="Contact.aspx" class="drag">Contact Us</a></li>
     </ul>
</div>

                  <div class="footer-content">
<h3 class="drag">Follow Us</h3><ul class="social-icons"> <li><a href="https://www.instagram.com/skillforge._2?igsh=MXZpcnhtYWx3dWNvMg=="><i class="fab fa-instagram"></i></a></li> <li><a href=" https://in.linkedin.com/in/gayatri-hatkar-5b92a8360 "><i class="fab fa-linkedin"></i></a></li>
</ul></div>        </div>        <div class="bottom-bar">            <p class="auto-style38">&copy;2024-25 SkillForge . All rights reserved</p>
        </div>
    </footer>  
    </form>
</body>
</html>