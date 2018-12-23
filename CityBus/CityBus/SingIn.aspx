<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingIn.aspx.cs" Inherits="CityBus.SingIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Sign.css" rel="stylesheet" />
    <link href="Button.css" rel="stylesheet" />
    <link href="StyleNav.css" rel="stylesheet" />
    <link href="font.css" rel="stylesheet" />
    <script src="Nav.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="holder">
            <asp:Button ID="Login2" runat="server" Text="Login" class="myButton" BorderStyle="None" CssClass="myButton" />
            <div class="wrapper5">
                <asp:Label ID="Label1" runat="server" Text="[Sing In]" class="smallStyle"></asp:Label>
            </div>
        </div>
        <div id="wrapper">
            <nav role="navigation" id="access">
                <a class="skip-link icon-reorder" title="Accéder au menu" href="#menu">Menu</a>
                <ul id="menu">
                    <li><a class="icon-home" href="Home.aspx">Home</a></li>
                    <li><a class="icon-group" href="SearchBus.aspx">Search Bus</a></li>
                    <li><a class="icon-leaf" href="BuyTickets.aspx">Buy Tickets</a></li>
                    <li><a class="icon-picture" href="AboutUs.aspx">About Us</a></li>
                    <li><a class="icon-envelope-alt" href="AdminCorner.aspx">Admin Corner</a></li>
                </ul>
            </nav>
        </div>
        <center>
            <div class="wrapper6">
                <center><h1 style="color:white">City Bus Express</h1></center>
                <div class="login">
                    <asp:TextBox ID="TextBox1" runat="server" Type="text" placeholder="Username"></asp:TextBox>
                    <div class="spacer"></div>
                    <asp:TextBox ID="TextBox2" runat="server" Type="Password" placeholder="Password"></asp:TextBox>
                    <div class="spacer"></div>
                    <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click"></asp:Button>
                </div>
                <div>
                    <center><asp:Label ID="Label2" runat="server" Text="" style="color:red; font-size:15px; font-family:Helvetica;"></asp:Label></center>
                </div>   
                <div class="wrapper9">
                    <img src="Images/user.png" style="max-width:100%; max-height:100%; margin-left:25px;"/>
                    <center><h1 style="color:white; margin-left:0px; margin-top: -5px;">Login</h1></center>
                </div>

            </div>
        </center>
        <center><div class="wrapper7">
            <center><h1 style="color:white">Don't have an account?</h1></center>
                <div class="login">
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Username" Type="text"></asp:TextBox>
                    <div class="spacer"></div>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Email" Type="text"></asp:TextBox>
                    <div class="spacer"></div>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Password" Type="Password"></asp:TextBox>
                    <div class="spacer"></div>
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Confirm Password" Type="Password"></asp:TextBox>
                    <div class="spacer"></div>
                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Mobile No" Type="text"></asp:TextBox>
                    <div class="spacer"></div>
                    <asp:Button ID="Button3" runat="server" Text="Sign Up" OnClick="Button3_Click"></asp:Button>
                </div>
            <div>
                    <center><asp:Label ID="Label3" runat="server" Text="" style="color:red; font-size:15px; font-family:Helvetica;"></asp:Label></center>
                </div>

            <div class="wrapper10">
                <img src="Images/user.png" style="max-width:100%; max-height:100%; margin-left:25px;"/>
                <center><h1 style="color:white; margin-left:0px; margin-top: -5px;">Sign Up</h1></center>
            </div>

         </div></center>
                    <div class="footer">
                <hr/>
                 <a href="Home.aspx">CityBus</a> (c) Copyright 2017 Shanto Kumar<br />
                The ticket booking and Bus reservation website<br />
                <a href="Home.aspx">Desktop Version</a><br />
            </div>
    </form>
</body>
</html>
