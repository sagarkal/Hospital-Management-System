<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRooms.aspx.cs" Inherits="WebApplication2.AddRooms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong>Add new room:</strong></span><br />
        <br />
        Enter Room ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="120px"></asp:TextBox>
        <br />
        <br />
        Enter Room Type:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="120px"></asp:TextBox>
    
    </div>
        <p>
            Enter Cost Per Day:
            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" Height="30px" Width="108px" />
    </form>
</body>
</html>
