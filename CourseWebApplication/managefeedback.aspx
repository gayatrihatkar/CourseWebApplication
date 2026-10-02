<%@ Page Language="C#" AutoEventWireup="true" CodeFile="managefeedback.aspx.cs" Inherits="CourseWebApplication.managefeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
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
                        </ul>
                    </div>
                </li>
                <li><a href="DHome.aspx">Logout</a></li>
            </ul>
        </div>
    </nav>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Total FeedBacks"></asp:Label>
            <asp:Label ID="numbering" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="show" runat="server" Text="Show" OnClick="show_Click"/>

            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"  
                 GridLines="Vertical"  OnRowUpdating="userdata_RowUpdating" OnRowDeleting="userdata_RowDeleting" OnRowCancelingEdit="userdata_RowCancelingEdit" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">

                <AlternatingRowStyle BackColor="White" />

                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SFConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Regemail] = @original_Email AND [Rating] = @original_Rating" InsertCommand="INSERT INTO [Feedback] ([Name], [Email], [Rating]) VALUES (@Name, @Email, @Rating)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SFConnectionString.ProviderName %>" SelectCommand="SELECT [Id], [Name], [Email], [Rating] FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [Name] = @name, [Email] = @Email, [Rating] = @Rating WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Email] = @original_Email AND [Rating] = @original_Rating">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Rating" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Rating" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Rating" Type="String" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Rating" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
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
<h3 class="drag">Follow Us</h3><ul class="social-icons"> <li><a href="https://www.instagram.com/skillforge._2?igsh=MXZpcnhtYWx3dWNvMg=="><i class="fab fa-instagram"></i></a></li> <li><a href=" https://in.linkedin.com/in/gayatri-hatkar-5b92a8360 "><i class="fab fa-linkedin"></i></a></li>
</ul></div>        </div>        <div class="bottom-bar">            <p class="auto-style38">&copy;2024-25 SkillForge . All rights reserved</p>
        </div>
    </footer>  
    </form>
</body>
</html>

