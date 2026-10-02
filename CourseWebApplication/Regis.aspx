<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regis.aspx.cs" Inherits="CourseWebApplication.Regis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="https://kit.fontawesome.com/1165876da6.js"></script>
    <style>
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
.auto-style39 {    height: 177px;    background-color: #343434;}.auto-style40 {    width: 204px;    height: 153px;    padding-top:1em;}.auto-style41 {    font-size: 90px;}.newStyle10 {    font-family: "Copperplate Gothic Bold";}.auto-style42 {    font-family: "Copperplate Gothic Bold";    font-size: 90px;    color: #FFFFFF;    padding-bottom:2em;}
.content {
            max-width: 400px;
            margin: 30px auto;
            padding: 20px;
            background-color: #FFCCCC;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

h2 {
    text-align: center;
    margin-bottom: 20px;
    color:black;
}

label {
    margin: 10px 0 5px;
    font-weight: bold;
    color:black;
}

.input-field {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    transition: border 0.3s;
    color:black;
}

.input-field:focus {
    border-color: #4CAF50;
    outline: none;
}

.submit-button {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    transition: background 0.3s;
}

.submit-button:hover {
    background-color: #45a049;
}
   *{    margin: 0;    padding: 0;    font-family: Arial, Helvetica, sans-serif;    font-size: 16px;    color: white;}footer{    background: #343434;    padding-top: 50px;}.container{    width: 1140px;    margin: auto;    display: flex;    justify-content: center;}.footer-content{    width: 33.3%;}h3{    font-size: 28px;    margin-bottom: 15px;    text-align: center;}.footer-content p{    width:190px;    margin: auto;    padding: 7px;}.footer-content ul{    text-align: center;}.list{    padding: 0;}.list li{    width: auto;    text-align: center;    list-style-type:none;    padding: 7px;    position: relative;}.list li::before{    content: '';    position: absolute;    transform: translate(-50%,-50%);    left: 50%;    top: 100%;    width: 0;    height: 2px;    background: #f18930;    transition-duration: .5s;}.list li:hover::before{    width: 70px;}.social-icons{    text-align: center;    padding: 0;}.social-icons li{    display: inline-block;    text-align: center;    padding: 5px;}.social-icons i{    color: white;    font-size: 25px;}a{    text-decoration: none;}a:hover{    color: #f18930;}.social-icons i:hover{    color: #f18930;}.bottom-bar{    background: #f18930;    text-align: center;    padding: 10px 0;    margin-top: 50px;}.bottom-bar p{    color: #343434;    margin: 0;    font-size: 16px;    padding: 7px;}

    </style>
</head>
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
                <li><a href="">Contact Us</a></li>
                <li>
                    <a href="#">Others</a>
                    <div class="dropdown1">
                        <ul>
                            <li><a href="#">Quizzes</a></li>
                            <li><a href="#">Certificates</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="newregistration.aspx">New Registration</a></li>
                <li><a href="FinalLogin.aspx">Login</a></li>
            </ul>
        </div>
    </nav>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <h2>Create an Account</h2>

            <asp:Label ID="Label1" runat="server" Text="Full Name:"></asp:Label>
            <asp:TextBox ID="FullNameTextBox" runat="server" CssClass="input-field" OnTextChanged="FullNameTextBox_TextChanged"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="input-field"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>

            <asp:Label ID="Label4" runat="server" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>


            <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
            <asp:DropDownList ID="GenderDropDown" runat="server" CssClass="input-field">
                <asp:ListItem Text="Select Gender" Value=""></asp:ListItem>
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="RegisterButton" runat="server" Text="Register" CssClass="submit-button" OnClick="RegisterButton_Click"/>
        </div>
                <footer>        <div class="container">            <div class="footer-content">                <h3 class="auto-style38">Contact Us</h3>                <p class="auto-style38">Email:pranjalvinchu@gmail.com</p>                <p class="auto-style38">Phone:+91 8180983610</p>                <p class="auto-style38">Address:Chiplun</p>            </div>                       <div class="footer-content">    <h3 class="auto-style38">Quick Links</h3>     <ul class="list">        <li><a href="" class="auto-style38">Home</a></li>        <li><a href="aboutus.aspx" class="auto-style38">About</a></li>        <li><a href="ContactPage.aspx" class="auto-style38">Contact Us</a></li>       <li><a href="register.aspx" class="auto-style38">New Registration</a></li>     </ul></div>                  <div class="footer-content"><h3 class="auto-style38">Follow Us</h3><ul class="social-icons"> <li><a href="https://www.instagram.com/pranjalvinchu?igsh=MTZ6OXZoOHFhNTZvNA=="><i class="fab fa-instagram"></i></a></li> <li><a href="https://in.linkedin.com/in/pranjal-vinchu-812842330 "><i class="fab fa-linkedin"></i></a></li></ul></div>        </div>        <div class="bottom-bar">            <p class="auto-style38">&copy;2024-25 SkillForge . All rights reserved</p>
        </div>
    </footer>    

    </form>
    <script>
        document.getElementById('RegisterButton').addEventListener('submit', function(event) {
            // Perform validation here
            // event.preventDefault(); // Uncomment if using AJAX to handle submission
        });
    </script>
</body>
</html>
