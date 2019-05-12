<%@ Page Language="C#" AutoEventWireup="true" CodeFile="market.aspx.cs" Inherits="aflrmweb_market" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
       <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.5/css/bootstrap-select.css" type="text/css" />
   <style type="text/css">
       

      
      .footer
      {
          position:relative;         bottom:0;
         
                background:Black);
                color:White;
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
   

       

       .style4
       {
           color:White;
       }
       
   

       

       .style7
       {
           color:white;
           font-family: Arial;
           background-color: Black;
       }
   

       

       .style9
       {
           color:White;
           font-family: Arial;
           background-color: Black;
       }
   

       

       .style10
       {
           width: 253px;
       }
       .style11
       {
           width: 269px;
       }
   

       

       .style12
       {
           min-height: .01%;
           overflow-x: auto;
           width: 847px;
           overflow-y: hidden;
           -ms-overflow-style: -ms-autohiding-scrollbar;
           height: 257px;
           margin-bottom: 15px;
       }
   

       

       .style15
       {
           background-color:Black);
       }
   

       

       .style16
       {
           position: relative;
           min-height: 1px;
           float: left;
           width: 100%;
           padding-left: 15px;
           padding-right: 15px;
        
       }
   

       

       .style17
       {
           min-height: .01%;
           overflow-x: auto;
           overflow-y: hidden;
           -ms-overflow-style: -ms-autohiding-scrollbar;
           border: 1px solid #dfd7ca;
           margin-bottom: 15px;
       }
   

       

       .style18
       {
           width: 361px;
       }
       .style19
       {
           width: 100%;
           height: 192px;
       }
       .style20
       {
           width: 361px;
    
       }
   

       

       .style21
       {
           background-color:Black;
       }
   .style1
   {
       color:White;
   }

       

       </style>
    
</head>
<body>
    <form id="form1" runat="server">
     <div class="text-center">
     <nav class="navbar navbar-fixed">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <button class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1" 
            style="left: 0px; top: 0px; background-color: #FFFFFF;">
      </button>
        <span class="sr-only"></span>
        
   
      <a class="style2" href="#">StockPro</a><span class="style7"> </span>
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
    </div>  </div>
  </nav>
        <h1>Select The Company</h1>
     <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
             CssClass="btn-lg" 
             onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="60px" Width="250px" 
            >
         <asp:ListItem Selected="True">TCS</asp:ListItem>
         <asp:ListItem>LTI</asp:ListItem>
         <asp:ListItem>INFOSYS</asp:ListItem>
         <asp:ListItem>WIPRO</asp:ListItem>
         <asp:ListItem>CAPGEMINI</asp:ListItem>
         <asp:ListItem>TECH MAHINDRA</asp:ListItem>
     </asp:DropDownList>
         <br />
         <br />
     <div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Profile</h3>
  </div>
  <div class="panel-body bg-warning">
   <table class="style12" align="center">
             <tr>
                 <td class="style10">
                     Company Name</td>
                 <td>
                     &nbsp;</td>
                 <td class="style11">
                     <asp:Label ID="Label2" runat="server"></asp:Label>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
           
             <tr>
                 <td class="style10">
                
                     Sector</td>
                 <td>
                     <asp:Label ID="Label3" runat="server"></asp:Label>
                 </td>
                 <td class="style11">
                     Country</td>
                 <td>
                     <asp:Label ID="Label6" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="style10">
                     Industry</td>
                 <td>
                     <asp:Label ID="Label4" runat="server"></asp:Label>
                 </td>
                 <td class="style11">
                     Website</td>
                 <td>
                     <asp:Label ID="Label5" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="style10">
                     Total No. of Employees</td>
                 <td>
                     <asp:Label ID="Label7" runat="server"></asp:Label>
                 </td>
                 <td class="style11">
                     Telephone</td>
                 <td>
                     <asp:Label ID="Label8" runat="server"></asp:Label>
                 </td>
             </tr>
            
                 
         </table>
            
  </div>
</div>
<br />
 <div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Description</h3>
  </div>
  <div class="panel-body bg-warning">
  <asp:Label ID="Label9" runat="server"></asp:Label>
         
  </div></div>

         <br />
         <div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Indexes</h3>
  </div>
  <center>
  <div class="panel-body bg-warning" style="text-align: left">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:GridView ID="GridView1" runat="server" CellPadding="3" Height="383px" 
          Width="100%" AllowPaging="True" 
          CssClass="style17" BackColor="White" BorderColor="#CCCCCC" 
          BorderStyle="None" BorderWidth="1px">
          <FooterStyle BackColor="White" ForeColor="#000066" />
          <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
          <RowStyle ForeColor="#000066" />
          <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#007DBB" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#00547E" />
      </asp:GridView>
  </div></center></div><br />
  
  <div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Statistics</h3>
  </div>
  <div class="panel-body bg-warning">
      <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2">
          <series>
              <asp:Series ChartType="Spline" Name="Series1">
              </asp:Series>
          </series>
          <chartareas>
              <asp:ChartArea Name="ChartArea1">
              </asp:ChartArea>
          </chartareas>
      </asp:Chart>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

  </div></div>
  <div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Financial</h3>
  </div>
  <div class="panel-body bg-warning">
      <table class="style19" border="1">
          <tr class="style4">
              <td class="style20">
                  INCOME</td>
              <td class="style20">
                  2018</td>
              <td class="style20">
                  2017</td>
              <td class="style20">
                  2016</td>
              <td class="style20">
                  2015</td>
          </tr>
          <tr>
              <td class="style18">
                  TOTAL REVENUE</td>
              <td>
                  <asp:Label ID="Label10" runat="server"></asp:Label>
              </td>
              <td>
                  <asp:Label ID="Label24" runat="server"></asp:Label>
              </td>
              <td>
                  <asp:Label ID="Label25" runat="server"></asp:Label>
              </td>
              <td>
                  <asp:Label ID="Label26" runat="server"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="style18">
                  COST OF REVENUE</td>
              <td>
                  <asp:Label ID="Label22" runat="server"></asp:Label>
              </td>
              <td>
                  <asp:Label ID="Label27" runat="server"></asp:Label>
              </td>
              <td>
                  <asp:Label ID="Label28" runat="server"></asp:Label>
              </td>
              <td>
                  <asp:Label ID="Label29" runat="server"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="style18">
                  GROSS PROFIT</td>
              <td>
                  <asp:Label ID="Label23" runat="server"></asp:Label>
              </td>
              <td>
                  <asp:Label ID="Label30" runat="server"></asp:Label>
              </td>
              <td>
                  <asp:Label ID="Label31" runat="server"></asp:Label>
              </td>
              <td>
                  <asp:Label ID="Label32" runat="server"></asp:Label>
              </td>
          </tr>
      </table>
  </div></div>
&nbsp;<br />

         &nbsp;<br />
      
           
            <center>  
     
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.5/js/bootstrap-select.js
    "type="text/javascript"></script>


     </div>

   </form>  
</body>
</html>
