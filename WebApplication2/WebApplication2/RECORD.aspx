<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RECORD.aspx.cs" Inherits="WebApplication2.RECORD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        body{
            background: url("receptionist.jpg") no-repeat right center ;
            background-size: 20% 35%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong>RECORDS PAGE:</strong></span><br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="VIEW ALL RECORDS" Height="30px" Width="208px" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Height="30px" OnClick="Button4_Click" Text="VIEW INPATIENT RECORDS" Width="208px" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Height="30px" OnClick="Button5_Click" Text="VIEW OUT PATIENT RECORDS" Width="208px" />
        <br />
        <br />
        <span class="auto-style1"><strong>View Particular Record</strong></span><br />
        ENTER SSN OF PATIENT: <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="120px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="VIEW RECORD" />
        <br />
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            <strong>CREATE NEW RECORD</strong></p>
        <p>
            Enter SSN of Patient:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="120px" Height="20px"></asp:TextBox>
        </p>
        <p>
            Enter Record ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="120px" Height="20px"></asp:TextBox>
        </p>
        <p>
            Enter Date: (YYYY-MM-DD)&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Width="120px" Height="20px"></asp:TextBox>
        </p>
        <p>
            Enter &#39;Y&#39; If Inpatient:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox10" runat="server" Width="120px" Height="20px"></asp:TextBox>
        </p>
        <p>
            If Inpatient, Enter no. of Days:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox11" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            Enter Symptoms:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            Enter EID of Receptionist:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            Enter EID of Physician:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            Treatment Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBox8" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            Estimated Treatment cost:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox9" runat="server" Height="20px" Width="120px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="SUBMIT" Height="30px" Width="120px" />
        </p>
        <p>
            Image source:
            <a class="_ZR irc_hol" data-href="http://www.thinkstockphotos.co.uk/image/stock-illustration-customer-service-representative-and/185503138" data-ved="0CAYQjB0" href="https://www.google.com/url?sa=i&amp;rct=j&amp;q=&amp;esrc=s&amp;source=images&amp;cd=&amp;ved=0CAYQjB0&amp;url=http%3A%2F%2Fwww.thinkstockphotos.co.uk%2Fimage%2Fstock-illustration-customer-service-representative-and%2F185503138&amp;ei=imtzVMi7C4KSoQSxn4GwDg&amp;bvm=bv.80185997,d.cGU&amp;psig=AFQjCNEggIoOMDrtbZRMwp6YPb1h6EMF0A&amp;ust=1416936694416424" style="text-decoration: none; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.2); color: rgb(125, 125, 125); cursor: pointer; font-family: arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 241);">
            <span class="irc_ho" dir="ltr" style="unicode-bidi: -webkit-isolate; color: rgb(125, 125, 125); margin-right: -2px; overflow: hidden; padding-right: 2px; text-overflow: ellipsis;">www.thinkstockphotos.co.uk</span></a></p>
        <p>
            &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
