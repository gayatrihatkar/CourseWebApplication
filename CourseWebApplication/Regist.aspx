<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regist.aspx.cs" Inherits="CourseWebApplication.Regist" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/styles.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .contain {
            width: 50%;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .btn {
            width: 100%;
            padding: 10px;
            background-color: #5cb85c;
            border: none;
            color: white;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #4cae4c;
        }
                        .nav-wrapper{    background-color:#120D31;    padding:10px;}
.nav-wrapper ul{    list-style-type:none;    padding:0;    margin:0;    display:flex;}
.nav-wrapper li{    position:relative;    margin-right:20px;}
.nav-wrapper a{    color:#ffffff;    text-decoration:none;    font-weight:bold;    padding:10px 15px;    display:block;}
.nav-wrapper li:hover > a{    background-color:#808080;}
.dropdown, .dropdown1{    display:none;    position:absolute;    background-color:#120D31;    padding:10px;    z-index:1;}
.nav-wrapper li:hover .dropdown, .nav-wrapper li:hover .dropdown1{    display:block;}
.dropdown ul, .dropdown1 ul{    list-style-type:none;    padding:0;    margin:0;}
.dropdown li, .dropdown1 li{    margin:5px 0;}
.drag{    color:#ffffff;}
.auto-style39 {    height: 177px;    background-color: #343434;}.auto-style40 {    width: 204px;    height: 153px;    padding-top:1em;}.auto-style41 {    font-size: 90px;}
        .auto-style42 {
            font-family: "Copperplate Gothic Bold";
            font-size: 90px;
            color: #FFFFFF;
            padding-bottom: 2em;
        }
        footer{    background: #343434;    padding-top: 50px;}.container{    width: 1140px;    margin: auto;    display: flex;    justify-content: center;}.footer-content{    width: 33.3%;}h3{    font-size: 28px;    margin-bottom: 15px;    text-align: center;}.footer-content p{    width:190px;    margin: auto;    padding: 7px;}.footer-content ul{    text-align: center;}.list{    padding: 0;}.list li{    width: auto;    text-align: center;    list-style-type:none;    padding: 7px;    position: relative;}.list li::before{    content: '';    position: absolute;    transform: translate(-50%,-50%);    left: 50%;    top: 100%;    width: 0;    height: 2px;    background: #f18930;    transition-duration: .5s;}.list li:hover::before{    width: 70px;}.social-icons{    text-align: center;    padding: 0;}.social-icons li{    display: inline-block;    text-align: center;    padding: 5px;}.social-icons i{    color: white;    font-size: 25px;}a{    text-decoration: none;}a:hover{    color: #f18930;}.social-icons i:hover{    color: #f18930;}.bottom-bar{    background: #f18930;    text-align: center;    padding: 10px 0;    margin-top: 50px;}.bottom-bar p{    color: #343434;    margin: 0;    font-size: 16px;    padding: 7px;}

    </style>
    
</head>
                <div class="auto-style39">    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        <img alt="" class="auto-style40" src="image/newlogo.jpg" /><span class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style42">SKILLFORGE</span></div><nav>
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
<body>
    <form id="form1" runat="server">
        <div class="contain">
            <h2>Register</h2>
            <div class="form-group">
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtMobile">Mobile No:</label>
                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="ddlGender">Gender:</label>
                <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                    <asp:ListItem Value="">Select Gender</asp:ListItem>
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                    <asp:ListItem Value="Other">Other</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtConfirmPassword">Confirm Password:</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click" />
            </div>
        </div>
                                <footer>        <div class="container">            <div class="footer-content">                <h3 class="drag">Contact Us</h3>
                <p class="drag">Email:skillforge@gmail.com</p>
                <p class="drag">Phone:+91 8180983610</p>
                <p class="drag">Address:Khed</p>
            </div>
                       <div class="footer-content">
    <h3 class="drag">Quick Links</h3>
     <ul class="list">
        <li><a href="Master.aspx" class="auto-style38"><span class="drag">Home</span></a></li>
        <li><a href="newaboutus.aspx" class="auto-style38"><span class="drag">About</span></a></li>
        <li><a href="Contact.aspx" class="auto-style38"><span class="drag">Contact Us</span></a></li>
     </ul>
</div>

                  <div class="footer-content">
<h3 class="drag">Follow Us</h3><ul class="social-icons"> <li><a href="https://www.instagram.com/skillforge._2?igsh=MXZpcnhtYWx3dWNvMg=="><i class="fab fa-instagram"></i></a></li> <li><a href=" https://in.linkedin.com/in/gayatri-hatkar-5b92a8360"><i class="fab fa-linkedin"></i></a></li>
</ul></div>        </div>        <div class="bottom-bar">            <p class="auto-style38">&copy;2024-25 SkillForge . All rights reserved</p>
        </div>
    </footer> 
                                
    </form>
</body>
</html>
