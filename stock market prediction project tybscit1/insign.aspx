<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insign.aspx.cs" Inherits="insign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    
    
     <style type="text/css">
    

   
      .navbar
      {
        
          background:Black;
          color:White;
      }
      .nav
      {
                  background:Black;
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
                 color:White;
            
         }

         .style8
         {
             width: 100%;
             height: 237px;
         }
         .style9
         {
             width: 76px;
         }
         .style10
         {
             width: 142px;
         }
         .style11
         {
             text-align: center;
             width: 142px;
         }
        
         .fc
         {
             border-radius:25px;
             border-color:Black);
             
         }

         .style12
         {  
            width: 146px;
            color:White;
      
         }

         .style13
         {
             font-family: Arial;
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
                  }
         .style17
         {          background:Black);
            
         }
     

         

         

          .style20
         {
             color:White;
         }
         .style21
         {
             width: 142px;
             color:white;
         }
         .style22
         {
             width: 76px;
             color: white;
         }
         

        </style>
</head>
<body style="
background: url(bgm.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">   <form id="form1" runat="server">
    
    <nav class="navbar navbar-fixed">
  
    <div class="navbar-header">
    
      <button class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1" style="color:White" 
         >
      </button>
        <span class="style7"></span>
        
   
      <a class="style2" href="#" style="color:White;">StockPro</a><span 
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
    
    
    
    
    <div class="container-fluid" style="height:400px;width:330px;background:rgba(0,0,0,0.5);
          border:1px solid Black;border-radius:25px;">
  
        
    
        <div class="text-center"><h1 class="style5">SignIn</h1>
          
            <table class="style8">
                <tr class="style6">
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" ShowSummary="false"  runat="server" />
                    <td class="style12">Email</td>
                    <td class="style11">
                       <center>                        
                           <asp:TextBox ID="TextBox1" runat="server" 
                               placeholder="email" class="fc" Width="145px" Height="42px" CssClass="form-control" 
                           ></asp:TextBox></center>
                    </td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox1" runat="server" ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
                    
                    <asp:RequiredFieldValidator
                        ID="RequiedFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Required Email"></asp:RequiredFieldValidator>
                    <td class="style20">
                        &nbsp;</td>
                </tr>
               
                <tr>
                    <td class="style12">Password</td>
                    <td class="style10"><center>
                        <asp:TextBox ID="TextBox2" placeholder="password" runat="server"   
                            class="fc" Width="145px" Height="42px" CssClass="form-control" TextMode="Password"
                            ></asp:TextBox></center>
                    </td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" ControlToValidate="TextBox2" runat="server" ErrorMessage="Required Password"></asp:RequiredFieldValidator>

                    <td class="style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        </td>
                    <td class="style10">
                        <asp:Button ID="Button1" runat="server" Text="Login"  
                            OnClick="Button1_Click1" CssClass="btn btn-primary" Width="100px"/>
                    </td>
                    <td><a href="resetpass.aspx" class="style20">Forgot Password?</a><span 
                            class="style20"> </span>
                    </td>
                </tr>
            </table>
        </div>
    
        
    
    </div>
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

 

    </form></body>
</html>
