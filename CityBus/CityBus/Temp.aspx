<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Temp.aspx.cs" Inherits="CityBus.Temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <script src="Selector.js"></script>
    <link href="Dropdown.css" rel="stylesheet" />
    <link href="Button.css" rel="stylesheet" />
    <link href="font.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <div class="wrapper12">
            <div id="menu">
                <div class="main">
                    <input type="radio" name="r" id="menu1" />
                    <label for="menu1">
                        <div class="selector">
                            <div></div>
                        </div>
                        <span id="Location">Your Location</span>
                        <ul class="sub">
                            <li onclick="selector11();">Khulna</li>
                            <li onclick="selector12();">Dhaka</li>
                            <li onclick="selector13();">Rajshahi</li>
                            <li onclick="selector14();">Barishal</li>
                            <li onclick="selector15();">Chittagong</li>
                            <li onclick="selector16();">Rangpur</li>
                            <li onclick="selector17();">Sylhet</li>
                        </ul>
                    </label>
                    <input type="radio" name="r" id="menu2" />
                    <label for="menu2">
                        <div class="selector">
                            <div></div>
                        </div>
                        <span id="Destination">Your Destination</span>
                        <ul class="sub">
                            <li onclick="selector21();">Khulna</li>
                            <li onclick="selector22();">Dhaka</li>
                            <li onclick="selector23();">Rajshahi</li>
                            <li onclick="selector24();">Barishal</li>
                            <li onclick="selector25();">Chittagong</li>
                            <li onclick="selector26();">Rangpur</li>
                            <li onclick="selector27();">Sylhet</li>
                        </ul>
                    </label>
                    <input type="radio" name="r" id="menu3" />
                    <label for="menu3">
                        <div class="selector">
                            <div></div>
                        </div>
                        <span id="Day">Day of Journey</span>
                        <ul class="sub">
                            <li onclick="selector31();">Saturday</li>
                            <li onclick="selector32();">Sunday</li>
                            <li onclick="selector33();">Monday</li>
                            <li onclick="selector34();">Tuesday</li>
                            <li onclick="selector35();">Wednesday</li>
                            <li onclick="selector36();">Thursday</li>
                            <li onclick="selector37();">Friday</li>
                        </ul>
                    </label>
                </div>
            </div>
        </div>
            </center>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
