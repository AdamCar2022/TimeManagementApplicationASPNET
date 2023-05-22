<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TMMainPage.aspx.cs" Inherits="TimeManagementASPNET.TMMainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color:blanchedalmond;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <h1 style="font-family:Berlin Sans FB; width: 830px; margin-left: 356px;">TIME MANAGEMENT APPLICATION</h1><br />
            <asp:Button ID="MainStartBtn" runat="server" Text="START" style="margin-left: 484px" Height="34" Width="144" OnClick="MainStartBtn_Click"/>

            
        &nbsp;&nbsp;

            
            <asp:Button ID="MainLogOutBtn" runat="server" Text="LOG OUT" Height="34" Width="144" OnClick="MainLogOutBtn_Click"/>

            
        </div>
    </form>
</body>
</html>
