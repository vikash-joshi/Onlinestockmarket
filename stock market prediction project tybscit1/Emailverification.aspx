<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Emailverification.aspx.cs" Inherits="aflrmweb_Emailverification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            background-color: #99FF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Email verification</h1>

    </div>
    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="193px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
        Text="Verify" Width="69px" />

        <br />
    <asp:Label ID="Label1" runat="server" Text="" CssClass="style1"></asp:Label>
    </form>
</body>
</html>
