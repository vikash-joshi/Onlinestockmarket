<%@ Page Language="C#" AutoEventWireup="true" CodeFile="quotesblogs.aspx.cs" Inherits="aflrmweb_quotesblogs" %>

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
        
          background:Black;
          
      }
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
   

       

       .style3
       {
           width: 100%;
           height: 286px;
       }
       .style4
       {
           width: 528px;
       }
       .style5
       {
           width: 528px;
           text-align: center;
           font-family: Arial;
       }
       .style6
       {
           width: 528px;
           text-align: center;
           height: 1px;
       }
       .style7
       {
           height: 1px;
       }
   

       

       .style8
       {
           color:Black;
       }
       .style9
       {
           font-family: Arial;
           color:Black;
       }
   

       

    </style>
</head>
<body>
    <form id="form1" runat="server">
     <nav class="navbar navbar-fixed">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <button class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1" 
            style="left: 0px; top: 0px; font-family: Arial;">
      </button>
        <span class="sr-only"></span>
        
   
      <a class="style2" href="#">StockPro</a><span class="style1"> </span>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
     
      <li class="style1"><a href="profile.aspx" class="style1">Profile</a></li>
    <li class="style1"><a href="quotesblogs.aspx" class="style1">Quotesblogs</a></li>
    <li class="style1"><a href="Copy of livepricing.aspx" class="style1" >Buy Stock</a></li>
    <li class="style1"><a href="market.aspx" class="style1">Market</a></li>
    <li class="style1"><a href="livepricing.aspx" class="style1">Livepricing</a></li>
<li class="style1"><a href="Copy of quotesblogs.aspx" class="style1">SellStock</a></li>
<li class="style1"><a href="livepricing.aspx" class="style1">Orders</a></li>
    <li class="style1"><a class="style1" class="style1">hello <asp:Label ID="Label1" runat="server" Text=""></asp:Label></a></li><li>
     <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Logout" 
         onclick="Button1_Click" CssClass=""></asp:Button></li>

      </ul>
    </div>
  </div>
</nav>
<div class="container">
<h1 class="style9">Quote's</h1>
    <table class="style3">
        <tr>
            <td class="style6">
               </td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="style9">
                <h2>
               Post</h2>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"  Height="142px" Width="352px" 
                    CssClass="form-group-lg" style="font-family: Arial"></asp:TextBox>
                <span class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot be null" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                </span></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Post" onclick="Button2_Click" 
                    CssClass="btn btn-info" style="font-family: Arial" />
                <span class="style9">
                <asp:Label ID="Label3" runat="server" CssClass="style8"></asp:Label>
            </td>

        </tr>
    </table>


</div>
 
    </form>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    

</body>
</html>
