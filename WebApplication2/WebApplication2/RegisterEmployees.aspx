<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterEmployees.aspx.cs" Inherits="WebApplication2.RegisterEmployees" %>

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
    <div>
    
        <span class="auto-style1"><strong>Register New Employee:</strong></span><br />
    
    </div>
    <form id="form1" runat="server">
        <p>
            SSN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            NAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            SEX (M/F):
            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            AGE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            ADDRESS:
            <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            PHONE:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" Width="120px" Height="30px" />
        </p>
        <p>
            CATEGORY:</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Receptionist_Click" Text="RECEPTIONIST" Width="120px" Height="30px" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Nurse_Click" Text="NURSE" Height="30px" Width="120px" />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Physician_Click" Text="PHYSICIAN" Height="30px" Width="120px" />
&nbsp;&nbsp;&nbsp; If so, Speciality:
            <asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    <div>
    
    </div>
    </form>
</body>
</html>
