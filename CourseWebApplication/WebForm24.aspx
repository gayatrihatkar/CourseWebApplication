<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm24.aspx.cs" Inherits="CourseWebApplication.WebForm24" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
                        .article a{
    font-size:22px;
    text-decoration:none;
    display:inline-block;
    padding: 12px 35px;
    background-color:#8170b3;
    border-radius: 25px;
    color:#fff;
    border:1px solid #8170b3;
    letter-spacing: 1.5px;
    margin-top: 10px;
}
       .article a:hover{
    background-color:#fff;
    color:#8170b3;
    transition: 0.2s ease;
    border-color:#8170b3;
    }
    </style>
</head>
<body style="height: 1028px">
    <div class="auto-style1">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Resources/c.jpg" />
        </div>
                <div class="article">
    <a href="" class="button"> Apply For Course </a>
</div>
    </form>
    </div>
</body>
</html>
