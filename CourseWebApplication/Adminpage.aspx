<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminpage.aspx.cs" Inherits="CourseWebApplication.Adminpage" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>    
    <title>Admin Login</title>
    <style>
        * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(120deg, #84fab0, #8fd3f4);
            display: flex;
            justify-content: center;
            align-items: center;
            height: inherit;
        }



h2 {
    margin-bottom: 20px;
    text-align: center;
    color: #333;
}


                        footer {
            background: #343434;
            padding-top: 20px;
            position: relative;
            overflow: hidden;
            padding-bottom: 10px;
            width: 1573px;
        }

.contain {
            width: 100%;
            margin: auto;
            display: flex;
            justify-content: center;
            color: #343434;
            background-color: #343434;
            padding-top:40px;
        }

.footer-content {
    width: 33.3%;
}

h3 {
    font-size: 28px;
    margin-bottom: 15px;
    text-align: center;
}

.footer-content p {
    width: 190px;
    margin: auto;
    padding: 7px;
}

.footer-content ul {
    text-align: center;
}

.list {
    padding: 0;
}

    .list li {
        width: auto;
        text-align: center;
        list-style-type: none;
        padding: 7px;
        position: relative;
    }

        .list li::before {
            content: '';
            position: absolute;
            transform: translate(-50%, -50%);
            left: 50%;
            top: 100%;
            width: 0;
            height: 2px;
            background: #f18930;
            transition-duration: .5s;
        }

        .list li:hover::before {
            width: 70px;
        }

.social-icons {
    text-align: center;
    padding: 0;
}

    .social-icons li {
        display: inline-block;
        text-align: center;
        padding: 5px;
    }

    .social-icons i {
        color: white;
        font-size: 25px;
    }

a {
    text-decoration: none;
}

    a:hover {
        color: #f18930;
    }

.social-icons i:hover {
    color: #f18930;
}

.bottom-bar {
    background: #f18930;
    text-align: center;
    padding: 10px 0;
    margin-top: 50px;
}

    .bottom-bar p {
        color: #343434;
        margin: 0;
        font-size: 16px;
        padding: 7px;
    }
    .auto-style35 {
    color: #FFFFFF;
}

        .auto-style36 {
            left: 0px;
            top: 0px;
            padding-top:30px;
        }
         
     body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.container {
    width: 100%;
    max-width: 400px;
    margin: 100px auto;
    padding: 20px;
    background: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    text-align: center;
    height:400px;
    
}

h2 {
    color: #333;
}

.login-box {
    margin-top: 20px;
}

.input-field {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
}

.input-field:focus {
    border-color: #007bff;
    outline: none;
}

.login-button {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

.login-button:hover {
    background-color: #0056b3;
}

.error-message {
    color: red;
    margin-bottom: 15px;
}


    </style>
    <style>
        .auto-style39 {
    height: 177px;
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


        
        .auto-style42 {
            font-family: "Copperplate Gothic Bold";
            font-size: 90px;
            color: #FFFFFF;
        }


    </style>
</head>

<body>
    <form id="form1" runat="server">
                                           <div class="auto-style39">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="auto-style40" src="image/newlogo.jpg" /><span class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style42">SKILLFORGE</span></div>
<nav>
        <div class="nav-wrapper">
            <ul>
                <li><a href="Master.aspx">&nbsp;&nbsp;&nbsp; Home</a></li>
               
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
                <li><a href="Regist.aspx">New Registration</a></li>
                <li><a href="LoginPage.aspx">Login</a></li>
                <li>&nbsp;</li>
            </ul>
        </div>
    </nav>
         
        <div class="container">
            <h2>Admin Login</h2>
            <div class="login-box">
                <asp:Label ID="lblMessage" runat="server" CssClass="error-message" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" placeholder="Username" required></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" placeholder="Password" required></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-button" OnClick="btnLogin_Click" />
            </div>
        </div>
    
        
                            <footer class="auto-style36">
<div class="contain">
    <div class="footer-content">
        <h3 class="auto-style35">Contact Us</h3>
        <p class="auto-style35">Email:skillforge@gmail.com</p>
        <p class="auto-style35">Phone:8180983610</p>
        <p class="auto-style35">Address:Khed</p>
    </div>
    <div class="footer-content">
        <h3 class="auto-style35">Quick Links</h3>
         <ul class="list">
            <li><a href="Master.aspx" class="auto-style35">Home</a></li>

            <li><a href="Contact.aspx" class="auto-style35">Contact Us</a></li>
             <li><a href="newaboutus.aspx" class="auto-style35">About Us</a></li>
            <li><a href="Regist.aspx" class="auto-style35">Register</a></li>
            
         </ul>
    </div>
    <div class="footer-content">
        <h3 class="auto-style35">Follow Us</h3>
        <ul class="social-icons">
         <li><a href="https://www.instagram.com/skillforge._2?igsh=MXZpcnhtYWx3dWNvMg=="><i class="fab fa-instagram"></i></a></li>
         <li><a href=" https://in.linkedin.com/in/gayatri-hatkar-5b92a8360 "><i class="fab fa-linkedin"></i></a></li>         </ul>
        </div>
</div>
<div class="bottom-bar">
    <p><strong>&copy; 2024-25 SkillForge . All rights reserved</strong></p>
</div>

        </footer>
    </form>
</body>
</html>