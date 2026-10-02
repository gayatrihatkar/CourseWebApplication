<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newaboutus.aspx.cs" Inherits="CourseWebApplication.newaboutus" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About Us</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <style>
    body {
    background-color: rgba(0, 181, 245, 0.05);
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
    
}

.title {
    text-align: center;
    text-transform: uppercase;
    font-size: 2rem;
    color: #8170b3;
    margin-bottom: 20px;
    color:black;
}

.content {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 40px;
    margin: 30px 0;
}

.article {
    box-shadow: 0px 0px 2px rgba(0, 0, 0, 0.2);
    background-color: #eee;
    padding: 25px;
    text-align: center;
}

.article h2 {
    color: #380c5c;
    font-size: 1.5rem;
    line-height: 1.5;
    letter-spacing: 1px;
}

.article p {
    margin-top: 20px;
    font-size: 1.25rem;
    line-height: 1.5;
    color: #222;
}

.article a {
    font-size: 1.25rem;
    text-decoration: none;
    display: inline-block;
    padding: 12px 35px;
    background-color: #8170b3;
    border-radius: 25px;
    color: #fff;
    border: 1px solid #8170b3;
    letter-spacing: 1.5px;
    margin-top: 10px;
}

.article a:hover {
    background-color: #fff;
    color: #8170b3;
    transition: 0.2s ease;
    border-color: #8170b3;
}

.auto-style1 {
    width: 100%;
    text-align: center;
}

.auto-style6 {
    width: 100%;
    max-width: 792px;
    height: auto; /* Maintain aspect ratio */
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
        width: inherit;
    }
.containerr{
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
               
.sub-menu-2 {
    display: none;
}

.menu-bar ul li:hover .sub-menu-2 {
    display: block;
    position: absolute;
    background:#420c35;
    margin-top: 15px;
    margin-left: -15px;
}

    .menu-bar ul li:hover .sub-menu-2 ul {
        display: block;
        margin: 10px;
    }

        .menu-bar ul li:hover .sub-menu-2 ul li {
            width: 100px;
            padding: -5px;
            padding-left:-50px;
            padding-right:30px;
            border-bottom:1px dotted #fff;
            background: transparent;
            border-radius: 0;
            text-align: left;
        }
.active {
  background-color: #717171;
}
  .auto-style29 {
        width: 1603px;
        background-color: #343434;
    }
  




    .auto-style30 {
        color: #9933FF;
        font-size: 60px;
    }
    .newStyle1 {
        font-family: "Arial Black";
        font-size: 80px;
    }
    .dropdown {
    display: none; /* Hide dropdown by default */
    position: absolute; /* Position it relative to the parent */
    background-color: #333; /* Same background as navbar */
    min-width: 160px; /* Minimum width of dropdown */
    z-index: 1; /* Make sure it appears above other elements */
}

.navbar li:hover .dropdown {
    display: block; /* Show dropdown on hover */
}

.dropdown a {
    padding: 10px 16px; /* Padding for dropdown items */
    text-align: left; /* Align text to the left */
}

.dropdown a:hover {
    background-color: #ddd;
    color: black;
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

 

    .newStyle2 {
        font-family: "Copperplate Gothic Bold";
        font-size: 90px;
    }


</style>
</head>
        <header class="auto-style29">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image4" runat="server" Height="141px" ImageUrl="~/Resources/logo.jpg" Width="212px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="newStyle2">SkillForge</span></header>
       <nav>
    <div class="menu-bar">
        <ul>
            <li><a href="Master.aspx">Home</a></li>
            <li>
                <a href=" ">Courses</a>
                <div class="sub-menu-1">
                    <ul>
                        <li><a href="pythonpage.aspx" class="auto-style37">Python</a></li>
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
                <a href=" ">Others</a>
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
        
        
    
<body>
    <form id="form1" runat="server">
        <div class="container">
            <header class="title">
                <h1 class="auto-style30">About Us</h1>
            </header>

            </div>
            <main>
                <div class="content">
                    <article class="article">
                        <h2>Welcome to SkillForge</h2>
                        <p>
                            At SkillForge, we’re dedicated to making learning accessible, engaging, and transformative for everyone. 
                            Whether you’re looking to advance your career, explore a new hobby, or simply expand your knowledge, 
                            we offer a diverse range of high-quality online courses designed to fit your schedule and learning style.
                        </p>
                        <asp:HyperLink ID="RegisterLink" runat="server" NavigateUrl="~/Regist.aspx" CssClass="button">Register</asp:HyperLink>
                    </article>
                    <div class="auto-style1">
                        <img src="image/ONLINE CLASS.jpg" class="auto-style6" alt="Online Class" />
                    </div>
                </div>
            </main>
           
    </form>
     
                 <footer>
        <div class="containerr">
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

</body>
</html>
