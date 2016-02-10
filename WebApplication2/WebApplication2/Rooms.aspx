<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="WebApplication2.Rooms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        body{
            background: url("Hospital-room.jpg") no-repeat center center fixed;
            background-size: 25% 45%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Rooms Page:</strong></div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="VIEW ALL ROOMS" Height="30px" Width="208px" />
        </p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ADD NEW ROOM" Height="30px" Width="208px" />
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="VIEW ROOM ASSIGNMENT" Height="30px" Width="208px" />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="ADD NEW ROOM ASSIGNMENT" Height="30px" Width="208px" />
        </p>
        <asp:GridView ID="GridView3" runat="server">
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView4" runat="server" >
        </asp:GridView>
    </form>
</body>
</html>
