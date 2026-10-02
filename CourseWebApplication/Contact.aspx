<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="CourseWebApplication.Contact" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Navigation Menu</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <style>
        /* Basic styles for the navigation menu */
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

        .active a {
            background-color:#808080; /* Highlight active link */
        }
        footer{
            background: #343434;
            padding-top: 50px;
            width: inherit;
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


        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style38{
            color:#fff;
        }
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
.auto-style42 {
    font-family: "Copperplate Gothic Bold";
    font-size: 90px;
    color: #FFFFFF;
    padding-bottom:2em;
}
        

h2 {
    text-align: center;
    font-size: 2.5rem;
    margin-bottom: 20px;
}

p {
    font-size: 1.25rem;
}

form {
            margin-top: 20px;
            width: inherit;
            background-image: url('image/bgimg.jpg');
            background-repeat: no-repeat;
            background-size:cover;
        }

input, textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 1rem;
}

button, .auto-style1 {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 1rem;
}

.auto-style1:hover {
    background-color: #45a049;
}

.newStyle1 {
    font-family: "Bahnschrift Light Condensed", sans-serif;
}
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
                <div class="auto-style39">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img alt="" class="auto-style40" src="image/newlogo.jpg" /><span class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style42">SkillForge</span></div>
        <nav>
            <div class="menu-bar">
                <ul>
                    <li class="active"><a href="Master.aspx">Home</a></li>
                    <li>
                        <a href="#">Courses</a>
                        <div class="sub-menu-1">
                            <ul>
                                <li><a href="pythonpage.aspx" class="auto-style37">Python</a></li>
                                <li><a href="Cpp Page.aspx" class="auto-style37">C++</a></li>
                                <li><a href="javapage.aspx" class="auto-style37">Java</a></li>
                                <li><a href="Cpage" class="auto-style37">C</a></li>
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
                <h2>Contact Us</h2>
<p>Fill out the form below to get in touch with us.</p>

<div>
    <label for="name">Your Name</label>
    <asp:TextBox ID="name" runat="server" required="required" ></asp:TextBox>
</div>

<div>
    <label for="email">Your Email</label>
    <asp:TextBox ID="email" runat="server" TextMode="Email" required="required"  ></asp:TextBox>
</div>

<div>
    <label for="message">Message</label>
    <asp:TextBox ID="message" runat="server" TextMode="MultiLine" Rows="4" required="required"></asp:TextBox>
</div>

<asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="auto-style1" OnClick="submitButton_Click"     />

<p>You can also reach us at <a href="mailto:skillforge@gmail.com">skillforge@gmail.com</a> or by phone at <a href="tel:+918180983610">8180983610</a>.</p>
                         <footer>
        <div class="container">
            <div class="footer-content">
                <h3 class="auto-style38">Contact Us</h3>
                <p class="auto-style38">Email:skillforge@gmail.com</p>
                <p class="auto-style38">Phone:+91 8180983610</p>
                <p class="auto-style38">Address:Khed</p>
            </div>
                       <div class="footer-content">
    <h3 class="auto-style38">Quick Links</h3>
     <ul class="list">
        <li><a href="Master.aspx" class="auto-style38"><span class="auto-style3">Home</span></a></li>        <li><a href="newaboutus.aspx" class="auto-style38"><span class="auto-style3">About</span></a></li>        <li><a href="Contact.aspx" class="auto-style38"><span class="auto-style3">Contact Us</span></a></li>     </ul></div>                  <div class="footer-content"><h3 class="auto-style3">Follow Us</h3><ul class="social-icons">  <li><a href="https://www.instagram.com/skillforge._2?igsh=MXZpcnhtYWx3dWNvMg=="><i class="fab fa-instagram"></i></a></li> <li><a href=" https://in.linkedin.com/in/gayatri-hatkar-5b92a8360"><i class="fab fa-linkedin"></i></a></li></ul></div>        </div>        <div class="bottom-bar">            <p class="auto-style38">&copy;2024-25 SkillForge . All rights reserved</p>
        </div>
    </footer>     
    </form>
</body>
</html>
