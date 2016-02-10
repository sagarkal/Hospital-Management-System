<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete Patient.aspx.cs" Inherits="WebApplication2.Delete_Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700; text-decoration: underline">
    
        Delete Patient:<br />
    
    </div>
        Enter SSN of the Patient to be deleted:
        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="120px"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Height="30px" Width="120px" />
        </p>
    </form>
</body>
</html>
