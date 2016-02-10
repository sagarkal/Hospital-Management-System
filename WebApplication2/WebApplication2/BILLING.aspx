<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BILLING.aspx.cs" Inherits="WebApplication2.BILLING" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background: url("Bill.jpg") no-repeat center center fixed;
            background-size: 20% 40%;
        }
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong>Billing:</strong></span><br />
    
    </div>
    &nbsp;&nbsp;
        <br />
        Enter SSN of Patient to view all the records:
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Height="20px" Width="120px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="VIEW RECORDS" Height="30px" Width="150px" />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <br />
        Enter Record ID to view Bill:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged" Height="20px" Width="120px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Viewbill_Click" Text="VIEW BILL" Height="30px" Width="150px" />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="CREATE NEW BILL" Height="30px" Width="150px" />
        <br />
        <br />
        Image source: <a class="_ZR irc_hol" data-ved="0CAYQjB0" href="http://www.clipartguide.com/_pages/0060-0807-0714-4613.html" style="text-decoration: none; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.2); color: rgb(125, 125, 125); cursor: pointer; font-family: arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 241);"><span class="irc_ho" dir="ltr" style="unicode-bidi: -webkit-isolate; color: rgb(125, 125, 125); margin-right: -2px; overflow: hidden; padding-right: 2px; text-overflow: ellipsis;">www.clipartguide.com</span></a><br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
