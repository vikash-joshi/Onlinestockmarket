﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chanpass.aspx.cs" Inherits="aflrmweb_profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
       

   
      .footer
      {
          position:absolute;
          bottom:0;
          background:Black);
        
          width:100%;
                    
      }
      .navbar
      {
        
          background:Black);
          
      }
      .nav
      {
        
          background:Black);
          
      }

        .style1
      {
          color: #FFFFFF;
           font-family:Arial;
      }
      .style2
      {
          float: left;
          height: 60px;
          padding: 20px 15px;
          font-size: 18px;
          line-height: 20px;
          color: #FFFFFF;
           font-family:Arial;
      }
   

        .style3
       {
           width: 419px;
           height: 72px;
       }

       .style6
       {
           height: 72px;
       }

    </style>
</head>
<body>
    <form id="form1" runat="server">

    <nav class="navbar navbar-fixed">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <button class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1" style="color: #99FF66">
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
    
<div class="container" style="border:1px solid Black);border-radius:25px">
<br />
<h1 class="text-center">Change Password</h1>
    <table class="nav-justified">
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="true" ShowSummary="false" CssClass="style10" />
  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>
        
            <asp:Label ID="Label2" runat="server" Text="" ForeColor="Green"></asp:Label>
        <tr>
            <td class="style3">
                Password</td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server" 
                    CssClass="form-control-static input-sm" Height="39px" Width="198px"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            <td class="style3">
                Confirm Password</td>
            <asp:CompareValidator ID="CompareValidator1" Display="None" runat="server" ControlToValidate="TextBox2" ControlToCompare="TextBox1" ErrorMessage="Password and confirm password not Matching"></asp:CompareValidator>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server" 
                    CssClass="form-control-static input-sm" Height="38px" Width="198px"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td></td>
        <td  class="style6">
            <asp:Button ID="Button2" runat="server" Text="Update" 
                CssClass="btn btn-primary" Height="49px" Width="117px" 
                onclick="Button2_Click" />
        </td><td>
        </td></tr>
    </table>
</div>


    <footer class="footer"
    ><div class="col-sm-12">
      
           
            <center>     <a class="style1">Social Media</a>&nbsp;&nbsp;&nbsp;&nbsp;       <a href="#"><i class="fab fa-facebook fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-pinterest-p fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-twitter fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-youtube fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-linkedin fa-2x"></i></a>

         <hr />
        <div class="footer-copyright">
            <p class="style1">© 2019 Copyright  <a class="style1">Designed And Developed By Vikash Joshi</a></p>
        </div>
                 </center>
     </div>
    </form>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    

</body>
</html>
