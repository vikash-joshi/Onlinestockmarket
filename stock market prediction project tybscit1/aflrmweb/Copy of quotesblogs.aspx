<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy of quotesblogs.aspx.cs" Inherits="aflrmweb_quotesblogs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
       .footer
      {
          position:inherit;
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
           position: relative;
           min-height: 1px;
           float: left;
           width: 100%;
           color:White;
           padding-left: 15px;
           padding-right: 15px;
           background:Black;
       }
   

       

       .style4
       {
           width: 8px;
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
    <li class="style1"><a href="Copy of livepricing.aspx" class="style1">Buy Stock</a></li>
    <li class="style1"><a href="market.aspx" class="style1">Market</a></li>
    <li class="style1"><a href="livepricing.aspx" class="style1">Livepricing</a></li>
<li class="style1"><a href="Copy of quotesblogs.aspx" class="style1">SellStock</a></li>
<li class="style1"><a href="livepricing.aspx" class="style1">Orders</a></li>
    <li class="style1"><a class="style1">hello <asp:Label ID="Label1" runat="server" Text=""></asp:Label></a></li><li>
     <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Logout" 
         onclick="Button1_Click" CssClass=""></asp:Button></li>

      </ul>
    </div>
  </div>
</nav>
<h1>Sell Stock</h1>

<div class="container">
<h1 class="text-center">
   <strong>Orders </strong></h1>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        
        
        
        SelectCommand="SELECT [oname], [price], [qty] FROM [orders] WHERE ([uname] = @uname)">
         <SelectParameters>
             <asp:SessionParameter Name="uname" SessionField="username1" Type="String" />
         </SelectParameters>
    </asp:SqlDataSource>
     <asp:GridView ID="GridView1" runat="server" Width="100%" 
        AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
        AllowSorting="True" onrowcommand="GridView1_RowCommand" 
        >
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="oname" HeaderText="oname" SortExpression="oname" />
             <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
             <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />

             <asp:CommandField ButtonType="Button" ShowSelectButton="True">
             <ControlStyle CssClass="btn bnt-secondary" />
             </asp:CommandField>
         </Columns>
         <EditRowStyle BackColor="#7C6F57" />
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#E3EAEB" />
         <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F8FAFA" />
         <SortedAscendingHeaderStyle BackColor="#246B61" />
         <SortedDescendingCellStyle BackColor="#D4DFE1" />
         <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>

</div>
<br />
<div class="container" style="border:1px solid Black;border-radius:25px;" id="mn" runat="server">
  <h2 style="text-align:center">Selected Company Stock</h2>
  <table class="table">
    <thead class="thead-dark">
      <tr class="style11">
        <th class="style10">Company Name</th>
        
        <th class="style10">Quantity</th>
        
              <th class="style10">Current Price</th>
                    <th class="style10"></th>
      </tr>
    </thead>
    <tbody>
    <tr>
    <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:Label ID="Label7" runat="server"></asp:Label>
        </td>
    
    <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Label ID="Label8" runat="server"></asp:Label>
                <asp:Label ID="Label9" runat="server"></asp:Label>
        </td>
    <td>
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
    <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Sell" />
        </td>
    <td>
        <asp:Label ID="Label6" runat="server" Enabled="False" Visible="False"></asp:Label>
        </td>
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    </tr>
    </tbody>
    </table></div>


    </form>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    
</body>
</html>
