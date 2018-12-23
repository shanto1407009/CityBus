<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyTickets.aspx.cs" Inherits="CityBus.BuyTickets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Table.css" rel="stylesheet" />
    <link href="TextBox.css" rel="stylesheet" />
    <link href="Button.css" rel="stylesheet" />
    <link href="font.css" rel="stylesheet" />
    <link href="slider.css" rel="stylesheet" />
    <link href="StyleNav.css" rel="stylesheet" />
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
                    <li  class="active"><a class="icon-leaf" href="BuyTickets.aspx">Buy Tickets</a></li>
                    <li><a class="icon-picture" href="AboutUs.aspx">About Us</a></li>
                    <li><a class="icon-envelope-alt" href="AdminCorner.aspx">Admin Corner</a></li>
                </ul>
            </nav>
        </div></center>

                <center><div class="wrapper15">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter BusID" style="color:red; font-family: 'Electrolize';"></asp:TextBox>
            <asp:Button ID="Check" runat="server" Text="Check" CssClass="myButton" OnClick="Check_Click"></asp:Button><br /><br /><br />
            <asp:Label ID="Label2" runat="server" Text="Hello Sir" style="font-family:'Electrolize'; color:white; font-size:18px; background: green; padding: 15px 15px 15px 15px;"></asp:Label>
            <br /><br />
            <div runat="server" id="mydiv"><table>
                      <thead>
                        <tr>
                          <th colspan="5" style="font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;">Sample Seat Plan</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td style="color:green; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" colspan="2"><b>GATE</b></td>
                          <td style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;"></td>
                          <td style="color:green; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px; text-align:right;" colspan="2"><b>DRIVER</b></td>
                        </tr>

                          <tr>
                          <td><asp:Button ID="A1" runat="server" Text="A1" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="A1_Click"></asp:Button></td>
                          <td><asp:Button ID="A2" runat="server" Text="A2" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="A2_Click"></asp:Button></td>
                          <td style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="A3" runat="server" Text="A3" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="A3_Click"></asp:Button></td>
                          <td><asp:Button ID="A4" runat="server" Text="A4" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="A4_Click"></asp:Button></td>
                        </tr>

                          <tr>
                          <td><asp:Button ID="B1" runat="server" Text="B1" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="B1_Click"></asp:Button></td>
                          <td><asp:Button ID="B2" runat="server" Text="B2" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="B2_Click"></asp:Button></td>
                          <td style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="B3" runat="server" Text="B3" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="B3_Click"></asp:Button></td>
                          <td><asp:Button ID="B4" runat="server" Text="B4" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="B4_Click"></asp:Button></td>
                        </tr>

                          <tr>
                          <td><asp:Button ID="C1" runat="server" Text="C1" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="C1_Click"></asp:Button></td>
                          <td><asp:Button ID="C2" runat="server" Text="C2" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="C2_Click"></asp:Button></td>
                          <td style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="C3" runat="server" Text="C3" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="C3_Click"></asp:Button></td>
                          <td><asp:Button ID="C4" runat="server" Text="C4" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="C4_Click"></asp:Button></td>
                        </tr>

                          <tr>
                          <td><asp:Button ID="D1" runat="server" Text="D1" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="D1_Click"></asp:Button></td>
                          <td><asp:Button ID="D2" runat="server" Text="D2" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="D2_Click"></asp:Button></td>
                          <td style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="D3" runat="server" Text="D3" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="D3_Click"></asp:Button></td>
                          <td><asp:Button ID="D4" runat="server" Text="D4" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="D4_Click"></asp:Button></td>
                        </tr>

                          <tr>
                          <td><asp:Button ID="E1" runat="server" Text="E1" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="E1_Click"></asp:Button></td>
                          <td><asp:Button ID="E2" runat="server" Text="E2" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="E2_Click"></asp:Button></td>
                          <td style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="E3" runat="server" Text="E3" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="E3_Click"></asp:Button></td>
                          <td><asp:Button ID="E4" runat="server" Text="E4" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="E4_Click"></asp:Button></td>
                        </tr>

                          <tr>
                          <td><asp:Button ID="F1" runat="server" Text="F1" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="F1_Click"></asp:Button></td>
                          <td><asp:Button ID="F2" runat="server" Text="F2" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="F2_Click"></asp:Button></td>
                          <td><asp:Button ID="F3" runat="server" Text="F3" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="F3_Click"></asp:Button></td>
                          <td><asp:Button ID="F4" runat="server" Text="F4" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="F4_Click"></asp:Button></td>
                          <td><asp:Button ID="F5" runat="server" Text="F5" style="color:white; border:none; font-family: 'Electrolize'; font-size:18px; height:60px; width:60px;" OnClick="F5_Click"></asp:Button></td>
                          </tr>
                      </tbody>
                    </table>
                <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="" style="font-family:'Electrolize'; color:white; font-size:18px; padding: 15px 15px 15px 15px;"></asp:Label><br /><br />
                    <asp:Button ID="Order" runat="server" Text="Place Order" CssClass="myButton" OnClick="Order_Click"></asp:Button>
                </div>
            
        </div></center>
        <center>
            <div class="footer">
                <hr/>
                 <a href="Home.aspx">CityBus</a> (c) Copyright 2017 Shanto Kumar<br />
                The ticket booking and Bus reservation website<br />
                <a href="Home.aspx">Desktop Version</a><br />
            </div>
        </center>
    </form>
</body>
</html>
