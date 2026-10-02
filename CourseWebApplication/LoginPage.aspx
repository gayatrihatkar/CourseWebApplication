<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="CourseWebApplication.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <style>
                .auto-style1 {
            background-position: center;
            height: 490px;
            text-align: center;
            background-image: url('Resources/online-learning-design.JPEG');
            background-repeat: no-repeat;
            background-size:cover;
        }
        .newStyle1 {
            font-size: 50px;
        }
        .newStyle2 {
            font-size: 45px;
        }
        .newStyle3 {
            font-size: 50px;
            color:black;
        }
        .newStyle4 {
            font-size: 60px;
        }
        .auto-style2 {
            font-size: 40px;
            color:black;
        }
        .newStyle5 {
            font-family: "Times New Roman", Times, serif;
        }
        .newStyle6 {
            font-family: "Bahnschrift SemiBold Condensed";
        }
        .newStyle7 {
            font-family: 60;
        }
        .newStyle8 {
            font-size: 60px;
        }
        .newStyle9 {
            font-family: "Bahnschrift SemiBold";
            font-size: 60px;
        }
        .nav-wrapper{
    background-color:#120D31;
    padding:10px;
}
.nav-wrapper ul{
    list-style-type:none;
    padding:0;
    margin:0;
    display:flex;
}
.nav-wrapper li{
    position:relative;
    margin-right:20px;
}
.nav-wrapper a{
    color:#ffffff;
    text-decoration:none;
    font-weight:bold;
    padding:10px 15px;
    display:block;
}
.nav-wrapper li:hover > a{
    background-color:#808080;
}
.dropdown, .dropdown1{
    display:none;
    position:absolute;
    background-color:#120D31;
    padding:10px;
    z-index:1;
}
.nav-wrapper li:hover .dropdown, .nav-wrapper li:hover .dropdown1{
    display:block;
}
.dropdown ul, .dropdown1 ul{
    list-style-type:none;
    padding:0;
    margin:0;
}
.dropdown li, .dropdown1 li{
    margin:5px 0;
}
.drag{
    color:#ffffff;
}

.auto-style39 {
    height: 183px;
    background-color: #343434;
}
.auto-style40 {
    width: 204px;
    height: 153px;
    padding-top:1em;
}
.auto-style41 {
    font-size: 90px;
}

.newStyle10 {
    font-family: "Copperplate Gothic Bold";
}
.auto-style42 {
    font-family: "Copperplate Gothic Bold";
    font-size: 90px;
    color: #FFFFFF;
    padding-bottom:2em;
}
           *{
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 16px;
    color: white;
}
footer{
    background: #343434;
    padding-top: 50px;
}
.container{
    width: 1140px;
    margin: auto;
    display: flex;
    justify-content: center;
}
.footer-content{
    width: 33.3%;
}
h3{
    font-size: 28px;
    margin-bottom: 15px;
    text-align: center;
}
.footer-content p{
    width:190px;
    margin: auto;
    padding: 7px;
}
.footer-content ul{
    text-align: center;
}
.list{
    padding: 0;
}
.list li{
    width: auto;
    text-align: center;
    list-style-type:none;
    padding: 7px;
    position: relative;
}
.list li::before{
    content: '';
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 100%;
    width: 0;
    height: 2px;
    background: #f18930;
    transition-duration: .5s;
}
.list li:hover::before{
    width: 70px;
}
.social-icons{
    text-align: center;
    padding: 0;
}
.social-icons li{
    display: inline-block;
    text-align: center;
    padding: 5px;
}
.social-icons i{
    color: white;
    font-size: 25px;
}
a{
    text-decoration: none;
}
a:hover{
    color: #f18930;
}
.social-icons i:hover{
    color: #f18930;
}
.bottom-bar{
    background: #f18930;
    text-align: center;
    padding: 10px 0;
    margin-top: 50px;
}
.bottom-bar p{
    color: #343434;
    margin: 0;
    font-size: 16px;
    padding: 7px;
}

        .auto-style43 {
            color: black;
        }
        .auto-style44 {
            font-family: "Bahnschrift SemiBold";
            font-size: 60px;
            color: black;
        }

        .auto-style45 {
            color: #000066;
        }
        .auto-style46 {
            color: #000066;
            font-size: 50px;
        }

        .auto-style47 {
            text-align: center;
        }
    </style>
</head>
                    <div class="auto-style39">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="auto-style40" src="image/newlogo.jpg" /><span class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style42">SkillForge</span></div>
<nav>
        <div class="nav-wrapper">
            <ul>
                <li><a href="Master.aspx">Home</a></li>
               
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
               <div class="auto-style47">
        <div class="auto-style1">
            <br />
            <br />
            <br />
            <br />
            <span class="auto-style2"><strong class="auto-style46">Welcome To Website!!</strong></span><br class="auto-style45"></br>
            <span class="newStyle3">Online Course System</span><br />
            <span class="newStyle3">..</span><span class="auto-style44">SkillForge</span><span class="newStyle3">..<br />
            </span>
            <br class="auto-style43" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" ForeColor="Black" Height="42px" OnClick="Button1_Click" Text="Admin Login" Width="120px" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" ForeColor="Black" Height="42px" OnClick="Button2_Click" Text="User  Login" Width="120px" />
            </div>
            <br />
            <br />
        
             <footer>
        <div class="container">
            <div class="footer-content">
                <h3>Contact Us</h3>
                <p>Email:skillforge@gmail.com</p>
                <p>Phone:+91 8180983610</p>
                <p>Address:Khed</p>
            </div>
                       <div class="footer-content">
    <h3>Quick Links</h3>
     <ul class="list">
        <li><a href="Master.aspx">Home</a></li>
        <li><a href="newaboutus.aspx">About</a></li>
        <li><a href="Contact.aspx">Contact Us</a></li>
     </ul>
</div>

                  <div class="footer-content">
<h3>Follow Us</h3>
<ul class="social-icons">
 
 <li><a href="https://www.instagram.com/skillforge._2?igsh=MXZpcnhtYWx3dWNvMg=="><i class="fab fa-instagram"></i></a></li>
 <li><a href=" https://in.linkedin.com/in/gayatri-hatkar-5b92a8360"><i class="fab fa-linkedin"></i></a></li>
</ul>
</div>

        </div>
        <div class="bottom-bar">
            <p>&copy;2024-25 SkillForge . All rights reserved</p>
        </div>
    </footer>      


        </div>
    </form>
</body>
</html>
