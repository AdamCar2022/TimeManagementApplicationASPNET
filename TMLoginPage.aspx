<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TMLoginPage.aspx.cs" Inherits="TimeManagementASPNET.TMLoginPage" %>

<!DOCTYPE html>

<head runat="server">
    <title></title>
</head>

<body style="width: 596px; margin-left: 414px; margin-right: 0px; margin-top: 123px; margin-bottom: 292px">

    <form id="form2" runat="server">
        <div>
            <h3 style="font-family:Berlin Sans FB;">Welcome to the Time Management Application</h3>
            <br />
            <p>
                <asp:Label ID="Label1" runat="server" Text="Username:" Font-Names="Arial"></asp:Label>
        &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="lgUnameTxt" runat="server"></asp:TextBox>
        
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password:" Font-Names="Arial"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="lgPwordTxt" runat="server" TextMode="Password"></asp:TextBox>    
            <p>
                &nbsp;<p>
                <asp:Label ID="lgTmpLbl" runat="server" Text="" Font-Names="Arial"></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="LoginBtn" runat="server" Text="LOGIN" Height="34" Width="144" OnClick="LoginBtn_Click"/>
        </p>
        <p>
            <asp:Button ID="RegisterBtn" runat="server" style="margin-left: 2px" Text="REGISTER" Height="34" Width="144" OnClick="RegisterBtn_Click"/>
        </p>
                </div>
        
    </form>
</body>
