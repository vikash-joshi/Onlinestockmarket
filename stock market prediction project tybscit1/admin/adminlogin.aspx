<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="admin_adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
     <style type="text/css">
    

   
      .footer
      {
          position:fixed;
          bottom:0;
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
          color: #FF3399;
           font-family:Arial;
      }
   

         .style5
         {
             color: #FF3399;
             font-family: Arial;
         }
         .style6
         {
             color: #99FF66;
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
             color: #99FF66;
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
             width: 76px;
             color: #99FF66;
         }
         .style13
         {
             color: #FF3399;
         }
         .style14
         {
             width: 142px;
             color: #FF3399;
         }
         .style15
         {
             width: 76px;
             color: #FF3399;
         }
         </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <nav class="navbar navbar-fixed">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <button class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1" style="color: #FF3399">
      </button>
        <span class="style7"></span>
        
   
      <a class="style2" href="#">StockPro</a><span class="style5"> </span>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
      <li class="style1"><a href="" class="style5">Admin SignIn</a></li>
  
      </ul>
    </div>
  </div>
</nav>
    
    
    <h1 class="style13">welcome Admin</h1>

    
    <div class="container-fluid" style="height:400px;width:330px;background:white;
          border:1px solid Black);border-radius:25px;">
  
        
    
        <div class="text-center"><h1 class="style5">Admin SignIn</h1>
          
            <table class="style8">
                <tr class="style6">
                    <td class="style15">
                        &nbsp;</td>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" ShowSummary="false"  runat="server" />
                    <td class="style12"><i class="fas fa-user" style="color: #FF3399;"></i></td>
                    <td class="style11">
                       <center>                        
                           <asp:TextBox ID="TextBox1" runat="server" 
                               placeholder="email" class="fc" Width="144px" Height="29px" 
                               CssClass="style13" TextMode="Email" 
                           ></asp:TextBox></center>
                    </td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox1" runat="server" ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
                   
                    <asp:RequiredFieldValidator
                        ID="RequiedFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Required Email"></asp:RequiredFieldValidator>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
               
                <tr>
                    <td class="style12"><i class="fas fa-lock" style="color: #FF3399;"></i></td>
                    <td class="style10"><center>
                        <asp:TextBox ID="TextBox2" placeholder="password" runat="server"   
                            class="fc" Width="144px" Height="30px" CssClass="style13" TextMode="Password"
                            ></asp:TextBox></center>
                    </td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" ControlToValidate="TextBox2" runat="server" ErrorMessage="Required Password"></asp:RequiredFieldValidator>

                    <td class="style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        </td>
                    <td class="style10">
                        <asp:Button ID="Button1" runat="server" Text="SignIn" CssClass="btn btn-outline-success"
                          onclick="Button1_Click" style="color: #FF3399"/>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </div>
    
        
    
    </div>
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <footer class="footer">
    <div class="col-sm-12" style="background:Black);">
      
           
            <center>     <a class="style5">Social Media</a><span class="style13">&nbsp;&nbsp;&nbsp;&nbsp;       <a href="#"><i class="fab fa-facebook fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-pinterest-p fa-2x" style="color: #FF3399;"></i></a>&nbsp;
            <a><i class="fab fa-twitter fa-2x" style="color: #FF3399;"></i></a>&nbsp;
            <a><i class="fab fa-youtube fa-2x" style="color: #FF3399;"></i></a>&nbsp;
            </span>
            <a><i class="fab fa-linkedin fa-2x" style="color: #FF3399;"></i></a>

         <hr />
        <div class="footer-copyright">
            <p class="style1"><span class="style13">© 2019 Copyright  </span>  <a class="style5">Designed And Developed By Vikash Joshi</a></p>
        </div>
                 </center>
     </div>
    </footer>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
