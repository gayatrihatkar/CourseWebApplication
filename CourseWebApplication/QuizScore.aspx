<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizScore.aspx.cs" Inherits="CourseWebApplication.QuizScore" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select Language</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <style>
        /* General body styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        /* Header styles */
        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        /* TextBox styles */
        input[type="text"] {
            width: 300px;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        /* DropDownList styles */
        #ddlLanguages {
            width: 320px;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        /* Button styles */
        .submit-button {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .submit-button:hover {
            background-color: #218838;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style39 {    height: 177px;    background-color: #343434;}.auto-style40 {    width: 204px;    height: 153px;    padding-top:1em;}.auto-style41 {    font-size: 90px;}.newStyle10 {    font-family: "Copperplate Gothic Bold";}.auto-style42 {    font-family: "Copperplate Gothic Bold";    font-size: 90px;    color: #FFFFFF;    padding-bottom:2em;}
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
footer{    background: #343434;    padding-top: 50px;}.container{    width: 1140px;    margin: auto;    display: flex;    justify-content: center;}.footer-content{    width: 33.3%;}h3{    font-size: 28px;    margin-bottom: 15px;    text-align: center;}.footer-content p{    width:190px;    margin: auto;    padding: 7px;}.footer-content ul{    text-align: center;}.list{    padding: 0;}.list li{    width: auto;    text-align: center;    list-style-type:none;    padding: 7px;    position: relative;}.list li::before{    content: '';    position: absolute;    transform: translate(-50%,-50%);    left: 50%;    top: 100%;    width: 0;    height: 2px;    background: #f18930;    transition-duration: .5s;}.list li:hover::before{    width: 70px;}.social-icons{    text-align: center;    padding: 0;}.social-icons li{    display: inline-block;    text-align: center;    padding: 5px;}.social-icons i{    color: white;    font-size: 25px;}a{    text-decoration: none;}a:hover{    color: #f18930;}.social-icons i:hover{    color: #f18930;}.bottom-bar{    background: #f18930;    text-align: center;    padding: 10px 0;    margin-top: 50px;}.bottom-bar p{    color: #343434;    margin: 0;    font-size: 16px;    padding: 7px;
    }
        .auto-style43 {
            color: #FEFFFF;
        }
        .auto-style271 {
            font-weight: 700;
            font-size: larger;
        }
    </style>
</head>
        <div class="auto-style39">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="auto-style40" src="image/newlogo.jpg" /><span class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style42">SkillForge</span></div>
<nav>
        <div class="nav-wrapper">
            <ul>
                <li class="active"><a href="Master.aspx">Home</a></li>`
               
                <li>
                    <a href="#">Courses</a>
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
                            <li><a href="#">Quizzes</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="DHome.aspx">Logout</a></li>
            </ul>
        </div>
    </nav>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h2>&nbsp;</h2>
            <h2>&nbsp;</h2>
            <h2>Course Selection</h2>

            Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
            Email: <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            
            Select Language:&nbsp; 
            <asp:DropDownList ID="ddlLanguages" runat="server">
                <asp:ListItem Value="C">C</asp:ListItem>
                <asp:ListItem Value="Python">Python</asp:ListItem>
                <asp:ListItem Value="C++">C++</asp:ListItem>
                <asp:ListItem Value="Java">Java</asp:ListItem>
                <asp:ListItem Value="AI">AI</asp:ListItem>
                <asp:ListItem Value="Data Science">Data Science</asp:ListItem>
            </asp:DropDownList><br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#CCCCCC" CssClass="auto-style271" Height="43px" Width="121px" />
            <br />
            <br />
            <br />
        </div>
                <footer>
        <div class="container">
            <div class="footer-content">
                <h3 class="auto-style43">Contact Us</h3>
                <p class="auto-style43">Email:skillforge@gmail.com</p>
                <p class="auto-style43">Phone:+91 8180983610</p>
                <p class="auto-style43">Address:Khed</p>
            </div>
                       <div class="footer-content">
    <h3 class="auto-style43">Quick Links</h3>
     <ul class="list">
        <li><a href="Master.aspx" class="auto-style38"><span class="auto-style43">Home</span></a></li>
        <li><a href="newaboutus.aspx" class="auto-style38"><span class="auto-style43">About</span></a></li>
        <li><a href="Contact.aspx" class="auto-style38"><span class="auto-style43">Contact Us</span></a></li>
     </ul>
</div>

                  <div class="footer-content">
<h3 class="auto-style43">Follow Us</h3><ul class="social-icons"> <li><a href="https://www.instagram.com/skillforge._2?igsh=MXZpcnhtYWx3dWNvMg=="><i class="fab fa-instagram"></i></a></li> <li><a href=" https://in.linkedin.com/in/gayatri-hatkar-5b92a8360 "><i class="fab fa-linkedin"></i></a></li>
</ul></div>        </div>        <div class="bottom-bar">            <p class="auto-style38">&copy;2024-25 SkillForge . All rights reserved</p>
        </div>
    </footer>    
    </form>
</body>
</html>