<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resetpassword.aspx.cs" Inherits="resetpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 302px;
        }
        .style2
        {
            width: 159px;
        }
        .style3
        {
            width: 457px;
        }
        .style6
        {
            text-align: center;
            height: 53px;
        }
        .style7
        {
            width: 457px;
            height: 53px;
        }
        .style8
        {
            width: 159px;
            height: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Change Password</h1>
    <div class="container" style="border:1px solid rgba(0,0,0,0.5)">
    
        <table class="style1">
            <tr>
                <td class="style7">
                    Email</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:Button ID="Button2" runat="server" Text="SendCode" 
                        onclick="Button2_Click" />
                &nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Verification Code</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    New Password</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    conform Password</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="updatePassword" 
                        />
                </td>
            </tr>
        </table>
    
    </div>
    </div>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ErrorMessage="Conform Password Must match" ControlToCompare="TextBox3" 
        ControlToValidate="TextBox4"  Display="None" ></asp:CompareValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
         Display="None"  ErrorMessage="Required Email" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
         Display="None" ControlToValidate="TextBox1" ErrorMessage="Invalid Email" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Enabled="False" Visible="False"></asp:Label>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="false" ShowMessageBox="true"/>
    </form>
</body>
</html>
