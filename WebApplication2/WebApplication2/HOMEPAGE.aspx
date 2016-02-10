<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOMEPAGE.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background: url("hospital.png") no-repeat center center fixed;
            background-size: 25% 45%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700; text-decoration: underline; text-align: center;">
    
        <h3>HOSPITAL MANAGEMENT SYSTEM</h3> <br />
        <br />
        </div>
        <p style="margin-left: 120px; text-align: justify;">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="PATIENTS" Width="150px" Height="30px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="EMPLOYEES" Width="150px" Height="30px" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="RECORDS" Width="150px" Height="30px" />
            <asp:Button ID="Button4" runat="server" Height="30px" OnClick="Button4_Click" Text="ROOMS" Width="150px" />
            <asp:Button ID="Button5" runat="server" Height="30px" OnClick="Button5_Click" Text="BILLING" Width="150px" />
            <asp:Button ID="Button6" runat="server" Height="30px" OnClick="Button6_Click" Text="ABOUT US" Width="150px" />
        </p>
        <p style="margin-left: 120px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
    <p>
        Image source: <a class="_ZR irc_hol" data-ved="0CAYQjB0" href="http://www.clipartlord.com/free-cartoon-hospital-clip-art-2/" style="text-decoration: none; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.2); color: rgb(125, 125, 125); cursor: pointer; font-family: arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 241);"><span class="irc_ho" dir="ltr" style="unicode-bidi: -webkit-isolate; color: rgb(125, 125, 125); margin-right: -2px; overflow: hidden; padding-right: 2px; text-overflow: ellipsis;">www.clipartlord.com</span></a></p>
</body>
</html>
