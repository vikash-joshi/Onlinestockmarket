<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy of livepricing.aspx.cs" Inherits="aflrmweb_livepricing" %>

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
          font-family:Arial;
          color:White;
      }
   

       

       .style3
       {
           font-family: Arial;
           color:White;
       }
       .style4
       {
           color:Black;
       }
       .style11
       {
           color:Black;
       }
 .style10
 {
     color:Black;
 }  
 #GridView1
 {
     color:Black;
     
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
        
   
      <a class="style2" href="#">StockPro</a><span class="style3"> </span>
    </div>
     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
     
      <li class="style1"><a href="profile.aspx" class="style3">Profile</a></li>
    <li class="style1"><a href="quotesblogs.aspx" class="style3">Quotesblogs</a></li>
    <li class="style1"><a href="Copy of livepricing.aspx" class="style3" >Buy Stock</a></li>
    <li class="style1"><a href="market.aspx" class="style3">Market</a></li>
    <li class="style1"><a href="livepricing.aspx" class="style3">Livepricing</a></li>
<li class="style1"><a href="Copy of quotesblogs.aspx" class="style3">SellStock</a></li>
<li class="style1"><a href="livepricing.aspx" class="style3">Orders</a></li>
    <li class="style1"><a class="style1" ><span class="style3">hello 
        </span> <asp:Label ID="Label1" runat="server" Text="" CssClass="style3"></asp:Label></a></li><li>
     <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Logout" 
         onclick="Button1_Click"></asp:Button></li>

      </ul>
    </div>
</nav>

<div class="table-responsive">
<h1>MARKET</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
         SelectCommand="SELECT * FROM [market]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
         AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
         BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
         DataSourceID="SqlDataSource1" Forecolor="Black" Height="168px" Width="100%" 
             CssClass="table table-striped thead-dark" 
        onrowcommand="GridView1_RowCommand" style="color:Black;" CellSpacing="2" 
             >
        <Columns>
            <asp:BoundField DataField="cname" HeaderText="Company Name" 
                SortExpression="cname" />
            <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
            <asp:BoundField DataField="cval" HeaderText="Current Value" 
                SortExpression="cval" />
            <asp:BoundField DataField="high" HeaderText="High" SortExpression="high" />
            <asp:BoundField DataField="low" HeaderText="Low" SortExpression="low" />
            <asp:CommandField ButtonType="Button" SelectText="Buy" 
                ShowSelectButton="True" />

        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" Forecolor="White" />
        <PagerStyle BackColor="#CCCCCC" Forecolor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" Forecolor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />

<SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="Gray"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
    </asp:GridView>
    </div>
  




  <div class="container" style="border:1px solid Black;border-radius:25px;">
  <h2 style="text-align:center">Selected Company Stock</h2>
  <table class="table">
    <thead class="thead-dark">
      <tr class="style11">
              <th class="style10">Company</th>
        <th class="style10">Quantity</th>
        <th class="style10">Pay</th>
       
                <th class="style10">Current Value</th>
        
      
      </tr>
    </thead>
    <tbody>
    <tr>
    <td>
                <asp:Label ID="Label2" runat="server"></asp:Label></td>
    
    <td>
                
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

        </td>
    <td>
    <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
        <input type="hidden" runat="server" id="hash" name="hash" value=""  />
        <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
        <asp:Button ID="Button2" runat="server" Text="MakePayment" 
            CssClass="btn btn-primary" onclick="Button2_Click"/>
    </td>
    <td>
              <asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
   
    </tr>
    </tbody>
    </table><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" 
                    ErrorMessage="Invalid Number And Number must be Greater Than 1" ForeColor="Red" ValidationExpression="^[1-9]\d*$"></asp:RegularExpressionValidator></div>



               
    





     
    </form>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    

</body>
</html>
