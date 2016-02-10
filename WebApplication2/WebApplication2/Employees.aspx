<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="WebApplication2.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        body{
            background: url("Hospital-staff.jpg") no-repeat center center fixed;
            background-size: 50% 37%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>EMPLOYEES<br />
        <br />
        <br />
        </strong></div>
        <p>
            <asp:Button ID="Button1"  runat="server"  OnClick="Button1_Click" Text="VIEW ALL REGISTERED EMPLOYEES" Height="30px" Width="250px" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="VIEW RECEPTIONISTS" Height="30px" Width="250px" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server"  OnClick="Button3_Click" Text="VIEW NURSES" Height="30px" Width="250px" />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server"  OnClick="Button4_Click" Text="VIEW PHYSICIANS" Height="30px" Width="250px" />
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" Text="ADD NEW EMPLOYEE" OnClick="Button5_Click" Height="30px" Width="250px" />
        </p>
        <p>
            <asp:Button ID="Button6" runat="server" Text="DELETE EMPLOYEE" OnClick="Button6_Click" Height="30px" Width="250px" />
        </p>
        <p>
            <asp:Button ID="Button7" runat="server" OnClick="Update_Click" Text="UPDATE EMPLOYEE" Width="250px" Height="30px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </p>
        <p>
            Image source: <a class="_ZR irc_hol" data-ved="0CAYQjB0" href="http://vizthinker.com/hospital-staff-pictogram-set/" style="text-decoration: none; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.2); color: rgb(125, 125, 125); cursor: pointer; font-family: arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 241);"><span class="irc_ho" dir="ltr" style="unicode-bidi: -webkit-isolate; color: rgb(125, 125, 125); margin-right: -2px; overflow: hidden; padding-right: 2px; text-overflow: ellipsis;">vizthinker.com</span></a></p>
    </form>
</body>
</html>
