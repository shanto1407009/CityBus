<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchBus.aspx.cs" Inherits="CityBus.SearchBus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Dropdown.css" rel="stylesheet" />
    <link href="Button.css" rel="stylesheet" />
    <link href="font.css" rel="stylesheet" />
    <link href="StyleNav.css" rel="stylesheet" />
    <script src="clock.js"></script>
    <link href="clock.css" rel="stylesheet" />
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
                    <li class="active"><a class="icon-group" href="SearchBus.aspx">Search Bus</a></li>
                    <li><a class="icon-leaf" href="BuyTickets.aspx">Buy Tickets</a></li>
                    <li><a class="icon-picture" href="AboutUs.aspx">About Us</a></li>
                    <li><a class="icon-envelope-alt" href="AdminCorner.aspx">Admin Corner</a></li>
                </ul>
            </nav>
        </div></center>
        <center><div id="wrapper3">
                <div id="clock"></div>
            <font class="bigStyle">Fill the search boxes as you required. Please remember the Bus no. for buying tickets</font><br /><br />
        </div></center>

        <center>
            <div class="wrapper12">
            <div id="Div1">
                <div class="main">
                    <input type="radio" name="r" id="menu1" class="input1" />
                    <label for="menu1">
                        <div class="selector">
                            <div></div>
                        </div>
                        <asp:Label ID="Location" runat="server" Text="Your Location"></asp:Label>
                        <ul class="sub">
                            <li><asp:Button ID="Khulna1" runat="server" Text="Khulna" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Khulna1_Click"></asp:Button></li>
                            <li><asp:Button ID="Dhaka1" runat="server" Text="Dhaka" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Dhaka1_Click"></asp:Button></li>
                            <li><asp:Button ID="Rajshahi1" runat="server" Text="Rajshahi" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Rajshahi1_Click"></asp:Button></li>
                            <li><asp:Button ID="Rangpur1" runat="server" Text="Rangpur" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Rangpur1_Click"></asp:Button></li>
                            <li><asp:Button ID="Chittagong1" runat="server" Text="Chittagong" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Chittagong1_Click"></asp:Button></li>
                            <li><asp:Button ID="Sylhet1" runat="server" Text="Sylhet" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Sylhet1_Click"></asp:Button></li>
                            <li><asp:Button ID="Barishal1" runat="server" Text="Barishal" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Barishal1_Click"></asp:Button></li>
                        </ul>
                    </label>
                    <input type="radio" name="r" id="menu2" class="input1" />
                    <label for="menu2">
                        <div class="selector">
                            <div></div>
                        </div>
                        <asp:Label ID="Destination" runat="server" Text="Your Destination"></asp:Label>
                        <ul class="sub">
                            <li><asp:Button ID="Khulna2" runat="server" Text="Khulna" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Khulna2_Click"></asp:Button></li>
                            <li><asp:Button ID="Dhaka2" runat="server" Text="Dhaka" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Dhaka2_Click"></asp:Button></li>
                            <li><asp:Button ID="Rajshahi2" runat="server" Text="Rajshahi" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Rajshahi2_Click"></asp:Button></li>
                            <li><asp:Button ID="Rangpur2" runat="server" Text="Rangpur" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Rangpur2_Click"></asp:Button></li>
                            <li><asp:Button ID="Chittagong2" runat="server" Text="Chittagong" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Chittagong2_Click"></asp:Button></li>
                            <li><asp:Button ID="Sylhet2" runat="server" Text="Sylhet" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Sylhet2_Click"></asp:Button></li>
                            <li><asp:Button ID="Barishal2" runat="server" Text="Barishal" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Barishal2_Click"></asp:Button></li>
                        </ul>
                    </label>
                    <input type="radio" name="r" id="menu3" class="input1" />
                    <label for="menu3">
                        <div class="selector">
                            <div></div>
                        </div>
                        <asp:Label ID="Day" runat="server" Text="Day of Journey"></asp:Label>
                        <ul class="sub">
                            <li><asp:Button ID="Saturday3" runat="server" Text="Saturday" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Saturday3_Click"></asp:Button></li>
                            <li><asp:Button ID="Sunday3" runat="server" Text="Sunday" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Sunday3_Click"></asp:Button></li>
                            <li><asp:Button ID="Monday3" runat="server" Text="Monday" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Monday3_Click"></asp:Button></li>
                            <li><asp:Button ID="Tuesday3" runat="server" Text="Tuesday" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Tuesday3_Click"></asp:Button></li>
                            <li><asp:Button ID="Wednesday3" runat="server" Text="Wednesday" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Wednesday3_Click"></asp:Button></li>
                            <li><asp:Button ID="Thursday3" runat="server" Text="Thursday" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Thursday3_Click"></asp:Button></li>
                            <li><asp:Button ID="Friday3" runat="server" Text="Friday" style="color:white; border:none; background:none; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%;" OnClick="Friday3_Click"></asp:Button></li>
                        </ul>
                    </label>
                </div>
            </div>
        </div>
           
            <div class="wrapper13">
                <asp:Button ID="Search" runat="server" Text="Search" class="myButton" OnClick="Search_Click"></asp:Button>
            </div>
            </center>

        <center><div class="wrapper13">
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" Width="750px" style="color:white; border:none; background:black; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%; text-align:center;" CellSpacing="2">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor= "orange" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

            <div class="footer">
                <hr/>
                 <a href="Home.aspx" style="font-family: 'Electrolize';">CityBus</a> <a style="font-family: 'Electrolize';">(c) Copyright 2017 Shanto Kumar</a><br />
                <a style="font-family: 'Electrolize';">The ticket booking and Bus reservation website</a><br />
                <a href="Home.aspx" style="font-family: 'Electrolize';">Desktop Version</a><br />
            </div>
        </div></center>
    </form>
</body>
</html>
