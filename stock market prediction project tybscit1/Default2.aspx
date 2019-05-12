<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title></title>
    <link href="mainpagecss/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
  
    <style type="text/css">
        body{
	 background-image:url("bgm.jpg");
	 background-repeat:no-repeat;
	 background-size:cover;
	 width:100%;
	 height:100vh;
	 overflow:auto;
	 
}
        .style1
        {
            text-align: center;
        }
        .style2
        {
            width: 43%;
            height: 179px;
        }
         .container
        {
            background-color:White;
            height:280px;
            width:380px;
            
        }
        .style3
        {
            width: 220px;
        }
        .style4
        {
            width: 220px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <br />

    <div class="container">
        <h1 class="style1">Login</h1>
       <table align="center" class="style2">
           <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" ShowSummary="false"  runat="server" />
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                     <i class="fas fa-user fa-2x"></i></td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" 
                        placeholder="Username" Width="218px"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" ControlToValidate="TextBox1" Display="None" runat="server" ErrorMessage="Required Username"></asp:RequiredFieldValidator>
                  </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                     <i class="fas fa-lock fa-2x"></i></td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                        placeholder="Password" Width="218px"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2"  ControlToValidate="TextBox2" Display="None" runat="server" ErrorMessage="Required Password"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                   </td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="signin" 
                        Width="79px" /></td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
&nbsp;<br />
       
    </div>
     </form>
</body>
</html>
