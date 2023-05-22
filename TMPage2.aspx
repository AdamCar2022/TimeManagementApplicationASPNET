<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TMPage2.aspx.cs" Inherits="TimeManagementASPNET.TMPage2" %>

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
            <h3 style="font-family:Berlin Sans FB">MODULE WORK HOURS ON A SPECIFIC DATE</h3>
            <br />
            <h5 style="font-family:Berlin Sans FB">Please enter your work hours and select your module name and date when you were working</h5>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Work hours for module:" Font-Names="Arial"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="workHoursTxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Module name:" Font-Names="Arial"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="whModDD" runat="server" Width="242px"></asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Date of hours of work:" Font-Names="Arial"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="whDateTxt" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;<asp:Button ID="SeeRemainingSelfStudyHoursBtn" runat="server" Text="SEE REMAINING SELF STUDY HOURS" Width="296px" Height="34" style="margin-left: 0px" OnClick="SeeRemainingSelfStudyHoursBtn_Click" />
            <br />
            <br />
            <asp:Button ID="whLogOutBtn" runat="server" Text="LOG OUT" Height="34" Width="144" OnClick="whLogOutBtn_Click"/>
&nbsp;&nbsp;
            <asp:Button ID="whPrevBtn" runat="server" Text="PREVIOUS" Height="34" Width="144" OnClick="whPrevBtn_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Module Name and Remaining Self Study Hours" Font-Names="Berlin Sans FB"></asp:Label>
            <br />
            <br />
            <asp:ListBox ID="lbPage2" runat="server" Height="245px" Width="480px"></asp:ListBox>
            <br />
        </div>
    </form>
</body>
</html>
