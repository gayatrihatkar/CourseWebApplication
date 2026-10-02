<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDashboard.aspx.cs" Inherits="CourseWebApplication.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <style>
             *{    margin: 0;    padding: 0;    font-family: Arial, Helvetica, sans-serif;    font-size: 16px;    color: white;}footer{    background: #343434;    padding-top: 50px;}.container{    width: 1140px;    margin: auto;    display: flex;    justify-content: center;}.footer-content{    width: 33.3%;}h3{    font-size: 28px;    margin-bottom: 15px;    text-align: center;}.footer-content p{    width:190px;    margin: auto;    padding: 7px;}.footer-content ul{    text-align: center;}.list{    padding: 0;}.list li{    width: auto;    text-align: center;    list-style-type:none;    padding: 7px;    position: relative;}.list li::before{    content: '';    position: absolute;    transform: translate(-50%,-50%);    left: 50%;    top: 100%;    width: 0;    height: 2px;    background: #f18930;    transition-duration: .5s;}.list li:hover::before{    width: 70px;}.social-icons{    text-align: center;    padding: 0;}.social-icons li{    display: inline-block;    text-align: center;    padding: 5px;}.social-icons i{    color: white;    font-size: 25px;}a{    text-decoration: none;}a:hover{    color: #f18930;}.social-icons i:hover{    color: #f18930;}.bottom-bar{    background: #f18930;    text-align: center;    padding: 10px 0;    margin-top: 50px;}.bottom-bar p{    color: #343434;    margin: 0;    font-size: 16px;    padding: 7px;}
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
    <style>
        .containers {
            background-position: center;
            display: flex;
            background-image: url('Resources/photo.jpg');
            background-repeat: no-repeat;
            background-size:cover;
        }

.sidebar {
            width: 264px;
            background-color: #C299D7;
            color: white;
            padding: 20px;
            height: 471px;
        }

    .sidebar h2 {
        text-align: center;
    }

    .sidebar nav ul {
        list-style: none;
        padding: 0;
    }

        .sidebar nav ul li {
            margin: 15px 0;
        }

            .sidebar nav ul li a {
                color: white;
                text-decoration: none;
                text-size-adjust:50px;
                
            }

                .sidebar nav ul li a:hover {
                    text-decoration: underline;
                }
                .main-content {
    flex: 1;
    padding: 20px;
}

header {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.user-info {
    display: flex;
    align-items: center;
}

    .user-info span {
        margin-right: 15px;
    }

.stats {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
}

.card {
    background-color:white;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    flex: 2;
    margin: 0 10px;
    width:50px;
    height:100px;
}
.recent-orders {
    margin-top: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

    table th, table td {
        border: 1px solid #ddd;
        padding: 10px;
    }

    table th {
        background-color: #343a40;
        color: white;
    }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            font-size: 50px;
            color:#000000;
        }
        .newStyle2 {
            font-family: "Times New Roman", Times, serif;
            font-size:50px;
            text-align:center;
            color:#1016da;
        }
        .newStyle3 {
            font-family: "Times New Roman", Times, serif;
            font-size: 40px;
            color: #000000;
        }
        .card h3{
            color:black;
        }


        .auto-style43 {
            font-size: 18px;
        }
       

        .auto-style44 {
            font-size: 18px;
            color: black;
        }
        .auto-style45 {
            font-size: 20px;
            color: maroon;
        }
       

    </style>
</head>
        <div class="auto-style39">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="auto-style40" src="image/newlogo.jpg" /><span class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style42">SKILLFORGE</span></div>
<nav>
        <div class="nav-wrapper">
            <ul>
                <li><a href="managereg.aspx">Students</a></li>
               
                <li><a href="managequiz.aspx">Quiz</a></li>
                    
                
                <li><a href="managefeedback.aspx">Feedback</a></li>
                
            </ul>
        </div>
    </nav>
<body>
    <form id="form1" runat="server">
        <div class="containers">
        <aside class="sidebar">
            <h2 class="newStyle1">Online Course System</h2>
            <nav>
  <ul class="newStyle2">
     <li><a href="#" class="auto-style45">Dashboard</a></li>
     <li><a href="managereg.aspx" class="auto-style45">Students</a></li>
     <li><a href="managequiz.aspx" class="auto-style45">Quiz</a></li>
     <li><a href="managefeedback.aspx" class="auto-style45">Feedback</a></li>
  </ul>
</nav>
        </aside>

        <main class="main-content">
            <header>
                <h1 class="auto-style44">Dashboard</h1>
                <div class="user-info">
                    <span class="newStyle3">Admin</span>
                    <asp:Button ID="Button1" runat="server"  Text="Logout" BackColor="Gray" CssClass="auto-style43" ForeColor="White" Height="34px" Width="81px" OnClick="Button1_Click"/>
                    
                </div>
            </header>
<section class="stats">
                <div class="card">
                    <h3>Students</h3>
                    <p><asp:Label ID="lblStudents" runat="server" Text="0" ForeColor="Black" Font-Bold="true" ></asp:Label></p>
                </div>
                <div class="card">
                    <h3>Quiz</h3>
                    <p><asp:Label ID="lblQuiz" runat="server" Text="0" ForeColor="Black" Font-Bold="true"></asp:Label></p>
                </div>
                <div class="card">
                    <h3>Feedback</h3>
                    <p><asp:Label ID="lblFeedback" runat="server" Text="0" ForeColor="Black" Font-Bold="true"></asp:Label></p>
                </div>
                
            </section>

        </main>
            
    </div>

                <footer>        <div class="container">            <div class="footer-content">                <h3 class="auto-style38">Contact Us</h3>                <p class="auto-style38">Email:skillforge@gmail.com</p>                <p class="auto-style38">Phone:+91 8180983610</p>                <p class="auto-style38">Address:Khed</p>            </div>                       <div class="footer-content">    <h3 class="auto-style38">Quick Links</h3>     <ul class="list">        <li><a href="Master.aspx" class="auto-style38">Home</a></li>        <li><a href="newaboutus.aspx" class="auto-style38">About</a></li>        <li><a href="Contact.aspx" class="auto-style38">Contact Us</a></li>     </ul></div>                  <div class="footer-content"><h3 class="auto-style38">Follow Us</h3><ul class="social-icons"> <li><a href="https://www.instagram.com/skillforge._2?igsh=MXZpcnhtYWx3dWNvMg=="><i class="fab fa-instagram"></i></a></li> <li><a href=" https://in.linkedin.com/in/gayatri-hatkar-5b92a8360 "><i class="fab fa-linkedin"></i></a></li>
</ul></div>        </div>        <div class="bottom-bar">            <p class="auto-style38">&copy;2024-25 SkillForge . All rights reserved</p>
        </div>
    </footer>  
    </form>
</body>
</html>
