<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TMPage1.aspx.cs" Inherits="TimeManagementASPNET.TMPage1" %>

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
            <h3 style="font-family:Berlin Sans FB">ADD A MODULE FOR THE SEMESTER</h3><br />
            <h5 style="font-family:Berlin Sans FB">Please enter the following information to add a module for the semester</h5><br />
            <asp:Label ID="Label1" runat="server" Text="Module code:" Font-Names="Arial"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="modCodeTxt" runat="server"></asp:TextBox>
            
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Module name:" Font-Names="Arial"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="modNameTxt" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Number of credits for the module:" Font-Names="Arial"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="modNumCreditsTxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Class hours per week:" Font-Names="Arial"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="modClassHoursTxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Number of weeks in the semester:" Font-Names="Arial"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="modNumWeeksSemTxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Start date for first week of the semester:" Font-Names="Arial"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="modStartDateTxt" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            &nbsp;&nbsp;<br />
            <br />
            <asp:Label ID="pg1TmpLbl" runat="server" Text="" Font-Names="Arial"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="SeeModNameAndSelfStudyHoursBtn" runat="server" Height="34px" Text="SEE MODULE NAME AND SELF STUDY HOURS" Width="454px" OnClick="SeeModNameAndSelfStudyHoursBtn_Click" />
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="ModNextBtn" runat="server" Height="34" Text="NEXT" Width="144" OnClick="ModNextBtn_Click" />
            &nbsp;
            <asp:Button ID="ModAddDetailsBtn" runat="server" Height="34" Text="ADD DETAILS" Width="144" OnClick="ModAddDetailsBtn_Click" />
            &nbsp;&nbsp;<asp:Button ID="ModLogOutBtn" runat="server" Height="34" Text="LOG OUT" Width="144" OnClick="ModLogOutBtn_Click" />
            &nbsp;<br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Font-Names="Berlin Sans FB" Text="Module Name and Self Study Hours"></asp:Label>
            <br />
            <br />
            <asp:ListBox ID="lbPage1" runat="server" Height="245px" Width="404px"></asp:ListBox>
            <br />

        </div>
    </form>
</body>
</html>