<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy of insign.aspx.cs" Inherits="insign" %>

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
        
          background:Black);
          color:White;
      }
      .nav
      {
        
          background:Black);
          color:White; }

    
      .style2
      {
          float: left;
          height: 60px;
          padding: 20px 15px;
          font-size: 18px;
          line-height: 20px;
          color:White;
           font-family:Arial;
      }
   

         .style5
         {
             color:White;
             font-family: Arial;
         }
         .style6
         {
             color: Black);
         }
         .style7
         {
             border-style: none;
             border-color: inherit;
             border-width: 0;
             position: absolute;
             width: 1px;
             height: 1px;
             padding: 0;
             margin: -1px;
             overflow: hidden;
             clip: rect(0, 0, 0, 0);
             background-color:Black);
             color:White;
            
         }

         .fc
         {
             border-radius:25px;
             border-color:Black);
             
         }

         .style14
         {
             position: relative;
             min-height: 1px;
             float: left;
             width: 100%;
             padding-left: 15px;
             padding-right: 15px;
         }
         .style15
         {
             color:white;
             background-color: Black);
         }
         .style17
         {
             background-color:Black);
            
         }
     

         

         

         .style20
         {
             color:White;
         }
         .style21
         {
             color: White;
             text-align: center;
             font-family: Arial;
         }
         .style22
         {
             width: 100%;
             height: 248px;
         }
         .style23
         {
             font-family: Arial;
         }
         

        </style>
</head>
<body style="background:url('bgm.jpg');height:100%;width:100%">   <form id="form1" runat="server">
    
    <nav class="navbar navbar-fixed">
  
    <div class="navbar-header">
    
      <button class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1" style="color:White; font-family: Arial;" 
         >
      </button>
        <span class="style7"></span>
        
   
      <a class="style2" href="#"><span class="style17">StockPro</span></a><span 
            class="style5"> </span>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
      <li class="style1"><a href="Default.aspx"><span class="style15">Home</span></a></li>
    <li class="style1"><a href="contact.aspx" "><span class="style15">ContactUs</span></a></li>
    <li class="style1"><a href="Register.aspx" ><span class="style15">Register</span></a></li>
    <li class="style1"><a href="insign.aspx" ><span class="style15">Login</span></a></li>
      </ul>
    </div>
 
</nav>
    
    
<div class="container" style="border:1px solid Black);border-radius:25px">
<br />
    </span>
<h1 class="style21">Change Password</h1>
    <table class="style22">
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="true" ShowSummary="false" CssClass="style10" />
  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>
        
            <asp:Label ID="Label2" runat="server" Text="" ForeColor="Green"></asp:Label>
        <tr>
            <td class="style21">
                Password</td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server" 
                    CssClass="form-control-static input-sm" Height="39px" Width="198px" 
                    style="font-family: Arial"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            <td class="style21">
                Confirm Password</td>
            <asp:CompareValidator ID="CompareValidator1" Display="None" runat="server" ControlToValidate="TextBox2" ControlToCompare="TextBox1" ErrorMessage="Password and confirm password not Matching"></asp:CompareValidator>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server" 
                    CssClass="form-control-static input-sm" Height="38px" Width="198px" 
                    style="font-family: Arial"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td></td>
        <td  class="style6">
            <asp:Button ID="Button2" runat="server" Text="Update" 
                CssClass="btn btn-primary" Height="49px" Width="117px" 
                onclick="Button1_Click1" style="font-family: Arial" />
        </td><td>
        </td></tr>
    </table>
</div>


    
    
    
    
    
    
    
    
    
    
    
    
    
    <footer class="footer">
    <div class="style14" 
        style="color:White">
      
           
            <center>     <a class="style5">Social Media</a><span class="style23"><span>&nbsp;&nbsp;&nbsp;&nbsp;       <a href="#"><i class="fab fa-facebook fa-2x" style="color:White"></i></a>&nbsp;
            <a><i class="fab fa-pinterest-p fa-2x" style="color:White"></i></a>&nbsp;
            <a><i class="fab fa-twitter fa-2x" style="color:White"></i></a>&nbsp;
            <a><i class="fab fa-youtube fa-2x" style="color:White"></i></a>&nbsp;
            
            <a><i class="fab fa-linkedin fa-2x" style="color:White"></i></a>
            </span>
         <hr />
        <div class="footer-copyright">
            <p class="style6"><span class="style20">© 2019 Copyright  </span>  
                <a class="style20">Designed And Developed By Vikash Joshi</a></p>
        </div>
                 </center>
     </div>
    </footer>
     <span class="style20">
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    </span>

    </span>

    </form></body>
</html>
