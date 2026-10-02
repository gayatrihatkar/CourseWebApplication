<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginuser.aspx.cs" Inherits="CourseWebApplication.loginuser" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <style type="text/css">
        
        body {
            height: 820px;
            width: 1211px;
            background-image: url('image/virtuall.jpg');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            color: #FFFFFF;
        }

body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #84fab0, #8fd3f4);
            display: flex;
            justify-content: center;
            align-items: center;
            height: inherit;
            width: inherit;
        }

.login-container {
    display: flex;
    justify-content: center;
    align-items: center;
    padding-bottom:20px;
    padding-top:20px;
}

.login-form {
    background: white;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
}

h2 {
    margin-bottom: 20px;
    text-align: center;
    color: #333;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
    color: #333;
}

.form-control {
    width: 100%;
    padding: 12px;
    border: 1px solid #ddd;
    border-radius: 5px;
    transition: border-color 0.3s;
}

.form-control:focus {
    border-color: #84fab0;
    outline: none;
}

.btn {
    width: 100%;
    background-color: #3498db;
    color: white;
    border: none;
    padding: 12px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #2980b9;
}

.error-message {
    color: red;
    margin-top: 10px;
    text-align: center;
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

.newStyle5 {
    color: #000000;
    font-size: large;
}
.auto-style31{
    background-color:#343434;
}

        .auto-style35 {
            color: #FFFFFF;
        }

        .auto-style36 {
            font-size: 90px;
            
        }
         .menu-bar {
     background-color: #120D31;
     padding: 10px;
 }

     .menu-bar ul {
         list-style-type: none;
         padding: 0;
         margin: 0;
         display: flex;
     }

     .menu-bar li {
         position: relative;
         margin-right:20px;
     }

     .menu-bar a {
         color: #ffffff;
         text-decoration: none;
         font-weight: bold;
         padding: 10px 15px;
         display: block;
     }

     .menu-bar li:hover > a {
         background-color: #808080;
     }

 .sub-menu-1, .sub-menu-2 {
     display: none;
     position: absolute;
     background-color: #120D31;
     padding: 10px;
     z-index: 1;
 }

 .menu-bar li:hover .sub-menu-1, .menu-bar li:hover .sub-menu-2 {
     display: block;
 }

 .sub-menu-1 ul, .sub-menu-2 ul {
     list-style-type: none;
     padding: 0;
     margin: 0;
 }

 .sub-menu-1 li, .sub-menu-2 li {
     margin: 5px 0;
 }

 .auto-style37 {
     color: #ffffff; /* Make sure your text is visible */
 }

 
    </style>
</head>
                     
<body>
      <form id="form1" runat="server">
                               <header>
            <h1 class="auto-style31">&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="178px" Width="239px" ImageUrl="~/image/newlogo.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style36">SkillForge</span></h1>

        </header>
      
    <nav>
        <div class="menu-bar">
            <ul>
                <li><a href="Master.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Home</a></li>
                <li>
                    <a href="#">Courses</a>
                    <div class="sub-menu-1">
                        <ul>
                            <li><a href="Pythonpage.aspx" class="auto-style37">Python</a></li>
                            <li><a href="Cpp page.aspx" class="auto-style37">C++</a></li>
                            <li><a href="javapage.aspx" class="auto-style37">Java</a></li>
                            <li><a href="Cpage.aspx" class="auto-style37">C</a></li>
                            <li><a href="AIpage.aspx" class="auto-style37">Artificial Intelligence</a></li>
                            <li><a href="datapage.aspx" class="auto-style37">Data Science</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="newaboutus.aspx">About Us</a></li>
                <li><a href="Contact.aspx">Contact Us</a></li>
                <li>
                    <a href="#">Others</a>
                    <div class="sub-menu-2">
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

        <div class="login-container">
            <div class="login-form">
                <h2>User Login</h2>
                <div class="form-group">
                    <label for="username">Username:</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ForeColor="Black"  />
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" ForeColor="Black" />
                </div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click"  />
                <asp:Label ID="lblMessage" runat="server" CssClass="error-message" />
            </div>
        </div>

                    <footer>
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
            
         </ul>
    </div>
    <div class="footer-content">
        <h3 class="auto-style35">Follow Us</h3>
        <ul class="social-icons">
         <li><a href=""><i class="fab fa-facebook"></i></a></li>
         <li><a href="https://www.instagram.com/skillforge._2?igsh=MXZpcnhtYWx3dWNvMg=="><i class="fab fa-instagram"></i></a></li>
         <li><a href=" https://in.linkedin.com/in/gayatri-hatkar-5b92a8360"><i class="fab fa-linkedin"></i></a></li>
         </ul>
        </div>
</div>
<div class="bottom-bar">
    <p><strong>&copy; 2024-25 SkillForge . All rights reserved</strong></p>
</div>

        </footer>
          </form>
</body>
</html>

