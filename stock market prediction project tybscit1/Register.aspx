<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style type="text/css">
 
       
      
       
           
            
        .fas
        {
            color:White;
        }
        .style
        {
            width: 61%
        }
        .style10
        {
            font-family: Arial;
            
        }
        .style11
        {
            text-align: right;
            width: 146px;
            color: White;
        }
        .style12
        {
            text-align: left;
            font-family: Arial;
        }
        .footer
      {
          position:inherit;
          bottom:0px;
          background:rgba(0,0,0,0.5);
        
          width:100%;
                    
      }
      .navbar
      {
        

        background:black;
          
      }
      .nav
      {
        background:black;
          
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
   

        .style13
        {
            color: White;
            text-align: center;
        }
                
        .style11
        {
            color: White;
        }
        .fas,fa
        {
            color:White;
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
      <li ><a href="Default.aspx" class="style1">Home</a></li>
    <li ><a href="contact.aspx" class="style1">ContactUs</a></li>
    <li ><a href="Register.aspx" class="style1">Register</a></li>
    <li><a href="insign.aspx" class="style1">Login</a></li>
      </ul>
    </div>
  </div>
</nav>














<div class="container" style="border:1px solid black;border-radius:25px;
            height:500px;
            width:460px;background:rgba(0,0,0,0.2)">
               <h1 class="style13">SignUp</h1>
           
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="true" ShowSummary="false" CssClass="style10" />
    <table class="style9">
        <tr>
            <td class="style11">
                Username&nbsp;&nbsp;</td>
            <td class="text-left">
                <asp:TextBox ID="TextBox1" Width="218px" runat="server" class="form-control" placeholder="vicks"></asp:TextBox>
                <span class="style13"><br />
                <span class="text-white"><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" Display="None" 
                    ErrorMessage="username required" ControlToValidate="TextBox1" CssClass="style10"></asp:RequiredFieldValidator>
                </span></span></td>
                
        </tr>
        <tr>
            <td class="style11">
               Password&nbsp;&nbsp;</td>
            <td class="text-left">
               <asp:TextBox ID="TextBox2" TextMode="Password" Width="218px" runat="server" class="form-control" placeholder="asd@123#"></asp:TextBox>
                <span class="style13"><br />
               
               <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" Display="None" 
                    ErrorMessage="password required" ControlToValidate="TextBox2" CssClass="style10"></asp:RequiredFieldValidator>
                </span></td>
        </tr>
        <tr>
            <td class="style11">
                Email&nbsp;&nbsp;</td>
            <td class="text-left">
               <asp:TextBox ID="TextBox3" Width="218px" runat="server" class="form-control" placeholder="abc@gmail.com"></asp:TextBox>
                <span class="style13"><br />
               
               <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3" runat="server" Display="None" 
                    ErrorMessage="email required" ControlToValidate="TextBox3" CssClass="style10"></asp:RequiredFieldValidator>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    ControlToValidate="TextBox3" runat="server" 
                    ErrorMessage="Insert valid email" Display="None" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </span>
                    </td>
        </tr>
        <tr>
            <td class="style11">
                Phone&nbsp;&nbsp;</td>
            <td class="text-left">
              <asp:TextBox ID="TextBox4" Width="218px" runat="server" class="form-control" placeholder="9648296155"></asp:TextBox>
                <span class="style13"><br />
              
                <span class="style10">
              
              <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4" runat="server" Display="None" ErrorMessage="phone no required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>


                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="None" runat="server" ErrorMessage="Insert valid number" ValidationExpression="\d{10}" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                    
                    </span>
                    
                    </span>
                    
                    </td>
        </tr>
        <tr>
            <td class="style11">
                Country&nbsp;&nbsp;</td>
            <td class="style12">
                <asp:TextBox ID="TextBox5" width="218" runat="server"  class="form-control" 
                    placeholder="India" CssClass="form-control"></asp:TextBox>
                <span class="style13"><br />
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator5" runat="server" Display="None" 
                    ErrorMessage="country required" ControlToValidate="TextBox5" CssClass="style10"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator3" runat="server" ErrorMessage="Insert Text only" ControlToValidate="TextBox5" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                </span>
                </td>
        </tr>
        <tr>
            <td>  <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            <td>
            
                 <asp:Button ID="Button1" runat="server" Text="signup" 
                    onclick="Button1_Click" CssClass="btn btn-primary" />
              </td>
              <td><a href="insign.aspx">
                        <span class="style13">Already registered</span></a> </td>
        </tr>
        <tr>
            <td class="style8">
                
                      </td>
            <td class="text-center">
               </td>
                    <td></td>
        </tr>
    </table>
    </div>
    
&nbsp;
    
   
     <script src="mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    </form>
</body>
</html>
