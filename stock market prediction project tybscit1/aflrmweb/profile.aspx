<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="aflrmweb_profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
    
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat" />
   <style type="text/css"> 
       

   
      .footer
      {
          position:inherit;
          bottom:0;
          background:Black);
        color:White;
          width:100%;
           font-family: "Leelawadee UI";
       
                    
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
        color:White; font-family: Leelawadee UI;
       
           
      }
      .style2
      {
          float: left;
          height: 60px;
          padding: 20px 15px;
          font-size: 18px;
          line-height: 20px;
          
        color:White;
       
                 }
   

        .style3
       {
           width: 408px;
           text-align: center;
           color: Black;
       }
       .style4
       {
           width: 29%;
           height: 221px;
       }

       .style5
       {
           font-family: Magneto;
       }
       .style7
       {
           font-family: Montserrat;
       }

       .style8
       {
           color: Black;
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
            style="left: 0px; top: 0px; font-family: Montserrat;">
      </button>
        <span class="sr-only"></span>
        
   
        <span class="style7">
        
   
      <a class="style2" href="#">StockPro</a><span class="style1"> </span>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right" >
      
      <li class="style1"><a href="profile.aspx" class="style1">Profile</a></li>
    <li class="style1"><a href="quotesblogs.aspx" class="style1">Quotesblogs</a></li>
    <li class="style1"><a href="Copy of livepricing.aspx" class="style1">Buy Stock</a></li>
    <li class="style1"><a href="market.aspx" class="style1">Market</a></li>
    <li class="style1"><a href="livepricing.aspx" class="style1">Livepricing</a></li>
<li class="style1"><a href="Copy of quotesblogs.aspx" class="style1">SellStock</a></li>
<li class="style1"><a href="livepricing.aspx" class="style1">Orders</a></li> <li><a style="
        color:White;
       ">hello <asp:Label ID="Label1" runat="server" Text=""></asp:Label></a></span></li><li>
     <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Logout" 
         onclick="Button1_Click" ></asp:Button></li>

      </ul>
    </div>
  </div>
</nav>


<div class="container-fluid" style="border:1px solid Black);border-radius:25px;">
<center><h1 class="style7">Profile</h1><br class="style7" /><i class="far fa-user-circle fa-7x"></i>
    </center>


    <span class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="style4" align="center">
        <tr>
            <td class="style3">
                
                UserName</td>

            <td>
                <asp:Label ID="Label2" runat="server" CssClass="style8" ></asp:Label>
            </td>
        </tr>
   


        <tr>
            <td class="style3">
                Password</td>
    <td>
                <asp:Label ID="Label3" runat="server" CssClass="style8" ></asp:Label>
            </td>
        </tr>
   




        <tr>
            <td class="style3">
                Email</td>

            <td>
                <asp:Label ID="Label4" runat="server" CssClass="style8" ></asp:Label>
            </td>
        </tr>
 


        <tr>
            <td class="style3">
                PhoneNumber</td>

            <td>
                <asp:Label ID="Label5" runat="server" CssClass="style8" ></asp:Label>
            </td>
        </tr>
   


        <tr>
            <td class="style3">
                Country</td>

            <td>
                <asp:Label ID="Label6" runat="server" CssClass="style8" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>

            </span><span class="style5"></span>

            <td>
                          </td>
        </tr>
    </table>
   
   
  
</div>
    </form>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    

</body>
</html>
