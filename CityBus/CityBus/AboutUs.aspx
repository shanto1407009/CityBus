<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="CityBus.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Button.css" rel="stylesheet" />
    <link href="StyleNav.css" rel="stylesheet" />
    <link href="font.css" rel="stylesheet" />
    <script src="Nav.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="holder">
            <asp:Button ID="Login" runat="server" Text="Login" class="myButton" BorderStyle="None" OnClick="Login_Click"/>
            <div class="wrapper5">
                <asp:Label ID="Label1" runat="server" Text="" class="smallStyle"></asp:Label>
            </div>
            <div class="wrapper8">
                <img src="Images/user.png" style="max-width:100%; max-height:100%"/>
            </div>
        </div>
    <center><div id="wrapper">
            <nav role="navigation" id="access">
                <a class="skip-link icon-reorder" title="Accéder au menu" href="#menu">Menu</a>
                <ul id="menu">
                    <li><a class="icon-home" href="Home.aspx">Home</a></li>
                    <li><a class="icon-group" href="SearchBus.aspx">Search Bus</a></li>
                    <li><a class="icon-leaf" href="BuyTickets.aspx">Buy Tickets</a></li>
                    <li  class="active"><a class="icon-picture" href="AboutUs.aspx">About Us</a></li>
                    <li><a class="icon-envelope-alt" href="AdminCorner.aspx">Admin Corner</a></li>
                </ul>
            </nav>
        </div></center>
        <center><div id="wrapper3">
            <font class="bigStyle"><br /><br />Thanks for browsing our website</font><br /><br />
            <font class="smallStyle">
                This website is developted by shanto kumar<br />
                Department of Computer Science & Engineering<br />
                Khulna University of Engineering & Technology, KUET<br />
                Khulna, Bangladesh<br /><br /><br />
            </font>
            <font class="bigStyle">For any quary: </font><br /><br />
            <div class="wrapper11">
                <img src="Images/mine.jpg" style="max-width:100%; max-height:100%; margin-left:25px; border-radius:300px;"/>
            </div>
            <font class="smallStyle">
                Email: <u>shantokumarkuet@gmail.com</u> or <u>shanto1407009@gmail.com</u><br />
                Facebook: <a href="https://www.facebook.com/androyid1" target="_blank" style="text-decoration:none">শান্ত</a><br />
                Address: Lalan Shah Hall, KUET<br /><br />
            </font>
            <div class="footer">
                <hr/>
                 <a href="Home.aspx">CityBus</a> (c) Copyright 2017 Shanto Kumar<br />
                The ticket booking and Bus reservation website<br />
                <a href="Home.aspx">Desktop Version</a><br />
            </div>
        </div></center>
    </form>
</body>
</html>
