<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CityBus.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Button.css" rel="stylesheet" />
    <link href="slider.css" rel="stylesheet" />
    <link href="StyleNav.css" type="text/css" rel="stylesheet" />
    <link href="font.css" rel="stylesheet" />
    <script src="Nav.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="holder">
            <asp:Button ID="Login" runat="server" Text="Login" class="myButton" BorderStyle="None" CssClass="myButton" OnClick="Login_Click"/>
            <div class="wrapper5">
                <asp:Label ID="Label1" runat="server" Text="" class="smallStyle"></asp:Label>
            </div>
            <div class="wrapper8">
                <img src="Images/user.png" style="max-width:100%; max-height:100%"/>
            </div>
        </div>
        <center><div id="wrapper">
            <center><h1><img src="Images/cityBus.png" height="120" style="position:relative; top: -30px; left: 0px;"/></h1></center>
            <nav role="navigation" id="access">
                <a class="skip-link icon-reorder" title="Accéder au menu" href="#menu">Menu</a>
                <ul id="menu">
                    <li class="active"><a class="icon-home" href="Home.aspx">Home</a></li>
                    <li><a class="icon-group" href="SearchBus.aspx">Search Bus</a></li>
                    <li><a class="icon-leaf" href="BuyTickets.aspx">Buy Tickets</a></li>
                    <li><a class="icon-picture" href="AboutUs.aspx">About Us</a></li>
                    <li><a class="icon-envelope-alt" href="AdminCorner.aspx">Admin Corner</a></li>
                </ul>
            </nav>
        </div></center>
        <center>
            <div class="wrapper4">
                                      <div class="sLider">
                            <div class="slide slide1">
                              <div class="slideContent">
                                    Welcome To City Bus Express
                              </div>
                            </div>
                            <div class="slide slide2">
                              <div class="slideContent">
                                The Easiest Way to Buy Bus Tickets
                              </div>
                            </div>
                            <div class="slide slide3">
                              <div class="slideContent">
                                Ensures The Cheapest Deal With Bus Reservation
                              </div>
                            </div>
                            <div class="slide slide4">
                              <div class="slideContent">
                                Serve You a Comfortable and Safe Journey
                              </div>
                            </div>
                            <div class="slide slide5">
                              <div class="slideContent">
                                Have A Nice Day <br />Thank You
                              </div>
                            </div>
                          </div>
            <div class="footer">
                <hr/>
                 <a href="Home.aspx" style="font-family: 'Electrolize';">CityBus</a> <a style="font-family: 'Electrolize';">(c) Copyright 2017 Shanto Kumar</a><br />
                <a style="font-family: 'Electrolize';">The ticket booking and Bus reservation website</a><br />
                <a href="Home.aspx" style="font-family: 'Electrolize';">Desktop Version</a><br />
            </div>
           </div>
        </center>
    </form>
</body>
</html>
