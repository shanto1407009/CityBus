<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCorner.aspx.cs" Inherits="CityBus.AdminCorner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Button.css" rel="stylesheet" />
    <link href="font.css" rel="stylesheet" />
    <link href="slider.css" rel="stylesheet" />
    <link href="StyleNav.css" rel="stylesheet" />
    <link href="TextBox.css" rel="stylesheet" />
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
                    <li><a class="icon-picture" href="AboutUs.aspx">About Us</a></li>
                    <li   class="active"><a class="icon-envelope-alt" href="AdminCorner.aspx">Admin Corner</a></li>
                </ul>
            </nav>

            <br /><br />
            <div class="wrapper13" runat="server" id="div1">
                <asp:Label ID="Label2" runat="server" Text="Sorry! Only Admin's has access here" style="color:red; font-size: 30px; font-family: 'Electrolize'; background: rgba(0, 0, 0, 0.5); padding: 30px 30px 30px 30px;"></asp:Label>
            </div>

        </div></center>
        <center>
            <div class="wrapper16" runat="server" id="div2">
                <p style="color:red; font-size: 30px; font-family: 'Electrolize';">All Orders Are Here</p> 
                <asp:Button ID="Refresh" runat="server" Text="Refresh" CssClass="myButton" OnClick="Refresh_Click"></asp:Button><br /><br />

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

                <br /><br /><br /><br />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter OrderID" style="color:red; font-family: 'Electrolize';"></asp:TextBox><a>  </a>
                <asp:Button ID="Check" runat="server" Text="Check Availability" CssClass="myButton" OnClick="Check_Click"></asp:Button><br /><br />
                <asp:Label ID="Label3" runat="server" Text="" style="font-family:'Electrolize'; color:red; font-size:18px;"></asp:Label>

                <br /><br /><br /><br />
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter UserName" style="color:red; font-family: 'Electrolize';"></asp:TextBox><a>  </a>
                <asp:Button ID="PhoneNo" runat="server" Text="Get Phone NO" CssClass="myButton" OnClick="PhoneNo_Click"></asp:Button><br /><br />
                <asp:Label ID="Label4" runat="server" Text="" style="font-family:'Electrolize'; color:red; font-size:18px;"></asp:Label>

                <br /><br /><br /><br />
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter OrderID" style="color:red; font-family: 'Electrolize';"></asp:TextBox><a>  </a>
                <asp:Button ID="Confirm" runat="server" Text="Confirm Order" CssClass="myButton" OnClick="Confirm_Click"></asp:Button><br /><br />
                <asp:Label ID="Label5" runat="server" Text="" style="font-family:'Electrolize'; color:red; font-size:18px;"></asp:Label>

                <br /><br /><br /><br />
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter OrderID" style="color:red; font-family: 'Electrolize';"></asp:TextBox><a>  </a>
                <asp:Button ID="Cancel" runat="server" Text="Cancel Order" CssClass="myButton" OnClick="Cancel_Click"></asp:Button><br /><br />
                <asp:Label ID="Label6" runat="server" Text="" style="font-family:'Electrolize'; color:red; font-size:18px;"></asp:Label>

                <br /><br /><br /><br />
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter BusID" style="color:red; font-family: 'Electrolize';"></asp:TextBox><a>  </a>
                <asp:Button ID="Clear" runat="server" Text="Clear History" CssClass="myButton" OnClick="Clear_Click"></asp:Button><br /><br />
                <asp:Label ID="Label7" runat="server" Text="" style="font-family:'Electrolize'; color:red; font-size:18px;"></asp:Label>


                <br /><br /><br /><br />
                <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter OrderID" style="color:red; font-family: 'Electrolize';"></asp:TextBox><a>  </a>
                <asp:Button ID="Final" runat="server" Text="Final Confirmation" CssClass="myButton" OnClick="Final_Click"></asp:Button><br /><br />
                

                <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" Width="750px" style="color:white; border:none; background:black; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%; text-align:center;" CellSpacing="2">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor= "orange" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView><br /><br />

                <asp:GridView ID="GridView3" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" Width="750px" style="color:white; border:none; background:black; font-family: 'Electrolize'; font-size:18px; height:auto; width:100%; text-align:center;" CellSpacing="2">
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
            </div>
        </center>

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
