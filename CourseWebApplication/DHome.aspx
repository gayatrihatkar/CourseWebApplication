<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DHome.aspx.cs" Inherits="CourseWebApplication.DHome" %>
<!DOCTYPE html> 
<html lang="en"> 
    <head>     
        <meta charset="UTF-8">     
        <meta name="viewport" content="width=device-width, initial-scale=1.0">     
        <title>SkillForge</title>  
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>    

        <link rel="stylesheet" href="Final.css">     
        <script src="https://kit.fontawesome.com/1165876da6.js"></script>
    <style>
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
        .active a{
            background-color:#808080;
        }
        
    </style>
    <style type="text/css">
                .auto-style15 {
            float: right;
            width: 49%;
            padding: 20px;
            background: #f0f0f0;
            height: 389px;
            margin-left: 4px;
        }
         .auto-style23 {             
             float: left;             
             width: 42%;             
             padding: 20px;             
             height: 383px;             
             margin-top: 18px;         }         
         .slideshow-container {   
             max-width: 1650px;   
             position:center;   
             margin:auto;   
             width:fit-content; 

         }  
         /* Caption text */ 
         .text {   
             color: #f2f2f2;   
             font-size: 18px;   
             padding: 8px 12px;   
             position: absolute;   
             bottom: 8px;   
             width: 100%;   
             text-align: center; 

         }  
         /* Number text (1/3 etc) */   
         /* The dots/bullets/indicators */ 
         .dot {   
             height: 15px;   
             width: 15px;   margin: 0 2px;   background-color: #bbb;   border-radius: 50%;   display: inline-block;   transition: background-color 0.6s ease; }  .active {   background-color: #717171; }  /* Fading animation */ .fade {   animation-name: fade;   animation-duration: 1.5s; }  @keyframes fade {   from {opacity: .4}    to {opacity: 1} }  /* On smaller screens, decrease text size */ @media only screen and (max-width: 300px) {   .text {font-size: 11px} }                  .newStyle7 {             font-family: Georgia;         }         .newStyle8 {             font-size: 65px;         }         .newStyle9 {             font-size: 75px;             color:black;         }         .auto-style24 {     height: 419px;     text-align: left;     width: 1594px; }                   *{             margin: 0;             padding: 0;             font-family: Arial, Helvetica, sans-serif;             font-size: 16px;             color: #000000;         }        footer{      background: #343434;      padding-top: 50px;  }  .container{      width: 1140px;      margin: auto;      display: flex;      justify-content: center;  }  .footer-content{      width: 33.3%;  }  h3{      font-size: 28px;      margin-bottom: 15px;      text-align: center;  }  .footer-content p{      width:190px;      margin: auto;      padding: 7px;  }  .footer-content ul{      text-align: center;  }  .list{      padding: 0;  }  .list li{      width: auto;      text-align: center;      list-style-type:none;      padding: 7px;      position: relative;  }  .list li::before{      content: '';      position: absolute;      transform: translate(-50%,-50%);      left: 50%;      top: 100%;      width: 0;      height: 2px;      background: #f18930;      transition-duration: .5s;  }  .list li:hover::before{      width: 70px;  }  .social-icons{      text-align: center;      padding: 0;  }  .social-icons li{      display: inline-block;      text-align: center;      padding: 5px;  }  .social-icons i{      color: white;      font-size: 25px;  }  a{      text-decoration: none;  }  a:hover{      color: #f18930;  }  .social-icons i:hover{      color: #f18930;  }  .bottom-bar{      background: #f18930;      text-align: center;      padding: 10px 0;      margin-top: 50px;  }  .bottom-bar p{      color: #343434;      margin: 0;      font-size: 16px;      padding: 7px;  }           .auto-style25 {             height: inherit;             width:inherit;         }                          *{     margin: 0;     padding: 0;     font-family: Arial, Helvetica, sans-serif;     font-size: 16px;     color: white; } footer{     background: #343434;     padding-top: 50px; } .container{     width: 1140px;     margin: auto;     display: flex;     justify-content: center; } .footer-content{     width: 33.3%; } h3{     font-size: 28px;     margin-bottom: 15px;     text-align: center; } .footer-content p{     width:190px;     margin: auto;     padding: 7px; } .footer-content ul{     text-align: center; } .list{     padding: 0; } .list li{     width: auto;     text-align: center;     list-style-type:none;     padding: 7px;     position: relative; } .list li::before{     content: '';     position: absolute;     transform: translate(-50%,-50%);     left: 50%;     top: 100%;     width: 0;     height: 2px;     background: #f18930;     transition-duration: .5s; } .list li:hover::before{     width: 70px; } .social-icons{     text-align: center;     padding: 0; } .social-icons li{     display: inline-block;     text-align: center;     padding: 5px; } .social-icons i{     color: white;     font-size: 25px; } a{     text-decoration: none; } a:hover{     color: #f18930; } .social-icons i:hover{     color: #f18930; } .bottom-bar{     background: #f18930;     text-align: center;     padding: 10px 0;     margin-top: 50px; } .bottom-bar p{     color: #343434;     margin: 0;     font-size: 16px;     padding: 7px; } * {             box-sizing: border-box;             color: #000000;         }  body {     font-family: Arial, sans-serif;     background-color: #f0f0f0;     margin: 0;     padding: 20px; } .container12 {
    width: 90%;
    margin: auto;
    padding-top: 20px;
}

.row {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.card {
    background-color: #fff;
    border: 1px solid #dee2e6;
    border-radius: 0.25rem;
    width: 200px;
    margin-bottom: 20px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s;
    height:250px;
}

.card:hover {
    transform: scale(1.05);
}

.card img {
    max-width:90%;
    border-top-left-radius: 0.25rem;
    border-top-right-radius: 0.25rem;
    padding-left:2em;
}

.card-body {
    padding: 15px;
}

.card-title {
    font-size: 1.25rem;
    margin: 0;
}

.card-text {
    font-size: 1rem;
    color: #6c757d;
}

.btn {
    background-color: #007bff;
    color: white;
    padding: 10px 15px;
    text-decoration: none;
    border-radius: 5px;
}

.btn:hover {
    background-color: #0056b3;
}
           .auto-style30 {             height: 114px;             width: 90%;         }         .auto-style31 {             width: 152px;             height: 127px;         }         .auto-style32 {             width: 163px;             height: 131px;             margin-left: 9;         }         .auto-style33 {             width: 161px;             height: 126px;         }         .auto-style34 {             width: 164px;             height: 131px;         }         .auto-style35 {             background-color: #fff;             border: 1px solid #dee2e6;             border-radius: 0.25rem;             width: 200px;             margin-bottom: 20px;             box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);             transition: transform 0.2s;             height: 250px;             text-align: center;         }         .auto-style36 {             width: 163px;             height: 128px;         }         .auto-style37 {             padding: 15px;             height: 74px;         }          .auto-style38 {             color: #FFFFFF;         }          .auto-style39 {             height: 177px;             background-color: #343434;         }         .auto-style40 {             width: 204px;             height: 153px;             padding-top:1em;         }         .auto-style41 {             font-size: 90px;         }          .newStyle10 {             font-family: "Copperplate Gothic Bold";         }         .auto-style42 {             font-family: "Copperplate Gothic Bold";             font-size: 90px;             color: #FFFFFF;             padding-bottom:2em;         }          </style>          </head>     <body style="left: -478px; top: -50px; width: inherit; height: 1000px; background-color: #FFFFFF; overflow: inherit;">          <form id="form1" runat="server" class="auto-style25">         <div class="auto-style39">          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             <img alt="" class="auto-style40" src="image/newlogo.jpg" /><span class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style42">SKILLFORGE</span></div>
    <nav>
            <div class="nav-wrapper">
                <ul>
                    <li class="active"><a href="Master.aspx">Home</a></li>`
                   
                    <li>
                        <a href="#">Courses</a>
                        <div class="dropdown">
                            <ul>
                                <li><a href="Alert.aspx">Python</a></li>
                                <li><a href="Alert.aspx">C++</a></li>
                                <li><a href="Alert.aspx">Java</a></li>
                                <li><a href="Alert.aspx">C</a></li>
                                <li><a href="Alert.aspx">Artificial Intelligence</a></li>
                                <li><a href="Alert.aspx">Data Science</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="DAbout.aspx">About Us</a></li>
                    <li><a href="DContact.aspx">Contact Us</a></li>
                    <li>
                        <a href="#">Others</a>
                        <div class="dropdown1">
                            <ul>
                                <li><a href="#">Quizzes</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="Regist.aspx">New Registration</a></li>
                    <li><a href="LoginPage.aspx">Login</a></li>
                </ul>
            </div>
        </nav>  
               <div class="slideshow-container">  <div class="mySlides fade">   <div class="numbertext"></div>   <img src="Resources/Screenshot 2024-08-08 194839.png" style="width:100%">    </div>  <div class="mySlides fade">   <div class="numbertext"></div>   <img src="Resources/Screenshot 2024-08-08 193543.png" style="width:100%">   </div>  <div class="mySlides fade">   <div class="numbertext"></div>   <img src="Resources/Screenshot 2024-08-08 200514.png" style="width:100%">   </div>  <div class="mySlides fade">   <div class="numbertext"></div>   <img src="image/C LAN.jpg" style="width:100%">    </div>  <div class="mySlides fade">   <div class="numbertext"></div>   <img src="Resources/Screenshot 2024-08-08 202434.png" style="width:100%">   </div>  <div class="mySlides fade">   <div class="numbertext"></div>   <img src="image/ds.jpg" style="width:100%">    </div>  </div> <br/>  <div style="text-align:center">   <span class="dot"></span>    <span class="dot"></span>    <span class="dot"></span>   <span class="dot"></span>    <span class="dot"></span>    <span class="dot"></span>  </div>  <script>     let slideIndex = 0;     showSlides();      function showSlides() {         let i;         let slides = document.getElementsByClassName("mySlides");         let dots = document.getElementsByClassName("dot");         for (i = 0; i < slides.length; i++) {             slides[i].style.display = "none";         }         slideIndex++;         if (slideIndex > slides.length) { slideIndex = 1 }         for (i = 0; i < dots.length; i++) {             dots[i].className = dots[i].className.replace(" active", "");         }         slides[slideIndex - 1].style.display = "block";         dots[slideIndex - 1].className += " active";         setTimeout(showSlides, 4000); // Change image every 2 seconds     } </script>                 <div class="auto-style14">                          <br />                      <aside class="auto-style15">             <p>                 <asp:Image ID="Image1" runat="server" CssClass="auto-style9" Height="398px" ImageUrl="~/image/WhatsApp Image 2024-07-18 at 8.02.56 PM.jpeg" Width="790px" />             </p>         </aside>              <section class="auto-style23">                 <h2 class="newStyle9">Find The Best Online Course &amp; Learn</h2>                         &nbsp;                  <br />                 <br />                 <br />                 <br />                 <br />          </section>             <div class="auto-style24">                  <br />                 <br />                 <br />                 <br />              </div>         </div>         <div class="container12">         <div class="row">             <div class="auto-style35">                 <img src="Resources/C%20lang.jpeg" alt="Card image" class="auto-style30" /><div class="card-body">                     <h5 class="card-title">&nbsp;</h5>                     <h5 class="card-title">C Language</h5>                     <br /> &nbsp;&nbsp;&nbsp;                     <br /><a href="#" class="btn">Learn More</a>                 </div>             </div>             <div class="auto-style35">                 <img src="image/python%20lang.jpeg" alt="Card image" class="auto-style31" />                 <div class="card-body">                     <h5 class="card-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Python Language</h5> &nbsp;                     <br /><a href="#" class="btn">Learn More</a>                 </div>             </div>             <div class="auto-style35">                 <img src="Resources/cpp.jpeg" alt="Card image" class="auto-style32" />                 <div class="card-body">                     <h5 class="card-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C++ Language</h5> &nbsp;                     <br /><a href="#" class="btn">Learn More</a>                 </div>             </div>             <div class="auto-style35">                 <img src="image/java%20lang.jpeg" alt="Card image" class="auto-style33" />                 <div class="card-body">                     <h5 class="card-title">&nbsp;</h5>                     <h5 class="card-title">&nbsp;Java Language</h5> &nbsp;&nbsp;                     <br /><a href="#" class="btn">Learn More</a>&nbsp;&nbsp;&nbsp;&nbsp;                 </div>             </div>             <div class="auto-style35">                 <img src="Resources/data%20logo.jpeg" alt="Card image" class="auto-style34" />                 <div class="card-body">                     <h5 class="card-title">&nbsp;Data Science</h5>                     <br />                     <br /><a href="#" class="btn">Learn More</a>                 </div>             </div>             <div class="auto-style35">                 <img src="Resources/AI%20logo.png" alt="Card image" class="auto-style36" /><div class="auto-style37">                     <h5 class="card-title">Artifical Intelligence</h5>                     <br />                     <a href="#" class="btn">Learn More</a>                 </div>             </div>         </div>     </div>         <footer>         <div class="container">             <div class="footer-content">                 <h3 class="auto-style38">Contact Us</h3>                 <p class="auto-style38">Email:skillforge@gmail.com</p>                 <p class="auto-style38">Phone:+91 8180983610</p>                 <p class="auto-style38">Address:khed</p>             </div>                        <div class="footer-content">     <h3 class="auto-style38">Quick Links</h3>      <ul class="list">         <li>
        <a href="DHome.aspx" class="drag">Home</a></li>         <li><a href="DAbout.aspx" class="drag">About</a>         <li><a href="DContact.aspx" class="drag">Contact Us</a></li>        <li><a href="Register.aspx" class="auto-style38">New Registration</a></li>      </ul> </div>                    <div class="footer-content"> <h3 class="auto-style38">Follow Us</h3> <ul class="social-icons">  <li><a href="https://www.instagram.com/skillforge._2?igsh=MXZpcnhtYWx3dWNvMg=="><i class="fab fa-instagram"></i></a></li>  <li><a href="https://in.linkedin.com/in/gayatri-hatkar-5b92a8360"><i class="fab fa-linkedin"></i></a></li>
</ul>
</div>
<script>        let slideIndex = 0;        showSlides();        function showSlides() {            let i;            let slides = document.getElementsByClassName("mySlides");            let dots = document.getElementsByClassName("dot");            for (i = 0; i < slides.length; i++) {                slides[i].style.display = "none";            }            slideIndex++;            if (slideIndex > slides.length) { slideIndex = 1 }            for (i = 0; i < dots.length; i++) {                dots[i].className = dots[i].className.replace(" active", "");            }            slides[slideIndex - 1].style.display = "block";            dots[slideIndex - 1].className += " active";            setTimeout(showSlides, 4000); // Change image every 2 seconds        }</script>
        </div>
        <div class="bottom-bar">
            <p class="auto-style38">&copy;2024-25 SkillForge . All rights reserved</p>
        </div>
    </footer>    
 </form> </body> </html>


