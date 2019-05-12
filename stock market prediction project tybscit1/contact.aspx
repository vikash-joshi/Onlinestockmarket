<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    
    
     <style type="text/css">
    

   
      .footer
      {
          position:fixed;
          bottom:0;
          width:100%;
          background-color:Black);
          color:White;
                    
      }
      .navbar
      {
                  background:Black; }
      .nav
      {
        
          background:Black;
      }

        .style1
      {
          color: White;
           font-family:Arial;
      }
      .style2
      {
          float: left;
          height: 60px;
          padding: 20px 15px;
          font-size: 18px;
          line-height: 20px;
          color: White;
           font-family:Arial;
      }
   

         .style5
         {
             color: White;
             font-family: Arial;
         }
         .style6
         {
             color: White;
         }
         .style7
         {
             width: 100%;
             height: 200px;
             color: White;
         }
         .style8
         {
             width: 100%;
             height: 304px;
         }
     </style>
</head>
<body  style="
background: url(bgm.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">
    <form id="form1" runat="server">
    
      <nav class="navbar navbar-fixed">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <button class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1" style="color: White">
      </button>
        <span class="style7"></span>
        
   
      <a class="style2" href="#">StockPro</a><span class="style5"> </span>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
      <li class="style1"><a href="Default.aspx" class="style5">Home</a></li>
    <li class="style1"><a href="contact.aspx" class="style5">ContactUs</a></li>
    <li class="style1"><a href="Register.aspx" class="style5">Register</a></li>
    <li class="style1"><a href="insign.aspx" class="style5">Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container" style="border:1px solid Black;height:380px;width:350px;border-radius:25px;">

    <h3 style="text-align:center" class="style6">Get In Touch With Us</h3>
    

    
    
    
    
    
    
        <table class="style8">
            <tr>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
                <td style="
            width: 146px;
            color: White;
      " >
                    Username</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="223px" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <span class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" runat="server" ErrorMessage="Name Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                 <td style="
            width: 146px;
            color: White;
      " >
                   Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </i></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="223px" CssClass="form-control" ></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" runat="server" ErrorMessage="Email Required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                
                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBox2"  Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
               <td style="
            width: 146px;
            color: White;
      " >
                   Comment</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="147px" Width="223px" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" Display="None" ErrorMessage="Comment Required"></asp:RequiredFieldValidator>
                
                </td>
            </tr>
            <tr>
                <td>
                    </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Feedback" 
                        CssClass="btn btn-primary" onclick="Button1_Click" 
                        style="color: White"/>
                </td>
                <td class="style6">
                    <asp:Label ID="Label1" runat="server" Text="" ></asp:Label></td>
            </tr>
        </table>

    
    
    
    
    
    
    </div>
    
    
    




   




















   
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>



    </form>
</body>
</html>
