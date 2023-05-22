<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TMRegisterPage.aspx.cs" Inherits="TimeManagementASPNET.TMRegisterPage" %>

<!DOCTYPE html>
<style>
    .centerLogin {
        max-width: 500px;
        margin: auto;
    }
    </style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    

<body>
    <form id="form1" runat="server">
        <div>
            <h3 style="font-family:Berlin Sans FB">TIME MANAGEMENT APPLICATION REGISTRATION</h3><br />
            <h5 style="font-family:Berlin Sans FB">Please enter the relevant details for your registration</h5><br /><br />
            <asp:Label ID="Label1" runat="server" Text="Username:" Font-Names="Arial"></asp:Label>
        &nbsp;&nbsp;
            <asp:TextBox ID="regUnameTxt" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="Label2" runat="server" Text="Password:" Font-Names ="Arial"></asp:Label>
        &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="regPwordTxt" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="tmpLbl1" runat="server" Text="" Font-Names="Arial"></asp:Label>
            <br /><br /><br />
            <asp:Button ID="RegSubmitBtn" runat="server" Text="SUBMIT" Height="34" Width="144" OnClick="RegSubmitBtn_Click" />
        &nbsp;
            <asp:Button ID="RegBackToLoginBtn" runat="server" Text="BACK TO LOGIN" Height="34" Width="200" OnClick="RegBackToLoginBtn_Click"/>
        </div>
    </form>
</body>
</html>
