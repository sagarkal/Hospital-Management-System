<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete Employee.aspx.cs" Inherits="WebApplication2.Delete_Employee" %>

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
    
        <span class="auto-style1"><strong>Delete Employee:</strong></span><br />
    
        <br />
        Enter SSN of Employee to be deleted:
        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="120px"></asp:TextBox>
        <br />
        <br />
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Height="30px" Width="120px" />
    </form>
</body>
</html>
