<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patients Page.aspx.cs" Inherits="WebApplication2.Patients_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        body{
            background: url("Patient.jpg") no-repeat center center fixed;
            background-size: 25% 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Patients:</strong></div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="VIEW REGISTERED PATIENTS" Width="208px" Height="30px" />
        </p>
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="REGISTER NEW PATIENT" Height="30px" Width="208px" />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Delete_Click" Text="DELETE PATIENT" Width="208px" Height="30px" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="UPDATE PATIENT" Width="208px" Height="30px" />
        </p>
        <p>
            Enter SSN to check if Patient has Insurance:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="SUBMIT" Height="30px" Width="120px" />
        </p>
        <asp:GridView ID="GridView3" runat="server">
        </asp:GridView>
    </form>
    <p>
            Image Source:<a class="_ZR irc_hol" data-ved="0CAYQjB0" href="http://www.dreamstime.com/royalty-free-stock-photos-sick-boy-hospital-bed-image9590078" style="text-decoration: none; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.2); color: rgb(125, 125, 125); cursor: pointer; font-family: arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 241);"><span class="irc_ho" dir="ltr" style="unicode-bidi: -webkit-isolate; color: rgb(125, 125, 125); margin-right: -2px; overflow: hidden; padding-right: 2px; text-overflow: ellipsis;">www.dreamstime.com</span></a></p>
</body>
</html>
