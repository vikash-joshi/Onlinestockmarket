<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="aflrmweb_Orders" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
       

   
      .footer
      {
          position:inherit;
          bottom:0;
          
          background-color:Black);
        color:White;
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
        color:White;
           font-family:Arial;
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
   

        .style3
       {
           width: 408px;
           text-align: center;
       }
       .style4
       {
           width: 29%;
           height: 221px;
       }

    </style>
</head>
<body>
    <form id="form1" runat="server">
     <nav class="navbar navbar-fixed">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1" style="left: 0px; top: 0px">
      </button>
        <span class="sr-only"></span>
        
   
      <a class="style2" href="#">StockPro</a><span class="style1"> </span>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
    
      <li class="style1"><a href="profile.aspx">Profile</a></li>
    <li class="style1"><a href="quotesblogs.aspx">Quotesblogs</a></li>
    <li class="style1"><a href="Copy of livepricing.aspx">Buy Stock</a></li>
    <li class="style1"><a href="market.aspx">Market</a></li>
    <li class="style1"><a href="livepricing.aspx">Livepricing</a></li>
<li class="style1"><a href="Copy of quotesblogs.aspx">SellStock</a></li>
<li class="style1"><a href="Orders.aspx">Orders</a></li><li><a style="
        color:White;
       ">hello <asp:Label ID="Label1" runat="server" Text=""></asp:Label></a></li><li>
     <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Logout" 
         onclick="Button1_Click"></asp:Button></li>

      </ul>
    </div>
  </div>
</nav>
<h1 class="text-center">Order's</h1>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:stockmarketConnectionString %>" 
        SelectCommand="SELECT * FROM [orders] WHERE ([uname] = @uname)">
         <SelectParameters>
             <asp:SessionParameter Name="uname" SessionField="username1" Type="String" />
         </SelectParameters>
    </asp:SqlDataSource>
     <asp:GridView ID="GridView1" runat="server" Width="100%" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="oid" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
        AllowSorting="True" onrowcommand="GridView1_RowCommand" 
        >
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="oid" HeaderText="oid" InsertVisible="False" 
                 ReadOnly="True" SortExpression="oid" />
             <asp:BoundField DataField="oname" HeaderText="oname" SortExpression="oname" />
             <asp:BoundField DataField="txsid" HeaderText="txsid" SortExpression="txsid" />
             <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
             <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
             <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
             <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
             <asp:BoundField DataField="totalamt" HeaderText="totalamt" 
                 SortExpression="totalamt" />
             <asp:BoundField DataField="status" HeaderText="status" 
                 SortExpression="status" />

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
<div class="container" style="border:1px solid Black);border-radius:25px;">
  <h2 style="text-align:center">Selected Company Stock</h2>
  <table class="table">
    <thead class="thead-dark">
      <tr class="style11">
        <th class="style10">Company Name</th>
        <th class="style10">TransactionId</th>
        <th class="style10">Quantity</th>
        
              <th class="style10">Current Price</th>
                    <th class="style10"></th>
      </tr>
    </thead>
    <tbody>
    <tr>
    <td>
                <asp:Label ID="Label2" runat="server"></asp:Label></td>
    
    <td>
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
    <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    <td>
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
    <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Sell" />
        </td>
    <td>
        &nbsp;</td>

    </tr>
    </tbody>
    </table></div>




    </form>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    

</body>
</html>
