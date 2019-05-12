<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="admin_Orders" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />
     <style type="text/css">
    

   
      .footer
      {
          position:inherit;
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
       color: #FF0066;
           font-family:Arial;
      }
         

         .style5
         {
             color: #FF0066;
             font-family: Arial;
         }
         .style6
         {
            color: #FF0066;
         }
         
         
         .fc
         {
             border-radius:25px;
             border-color:Black);
             
         }


         .style12
         {
             color: #FF0066;
         }


         .style13
         {
             font-family: Arial;
         }


        </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <nav class="navbar navbar-fixed">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <button class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1" style="color:#FF0066">
      </button>
        
   
      <a class="style6">StockPro</a><span class="style5"> </span>
      

    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
      <li class="style1"><a href="manageuser.aspx" class="style13"><span class="style6">Manage User</span></a></li>
    <li class="style1"><a href="managepost.aspx" class="style13"><span class="style6">Manage Post</span></a></li>
    <li class="style1"><a href="managefeedback.aspx" class="style13">
        <span class="style6">Manage Feedback</span></a></li>
        <li class="style1"><a href="Orders.aspx" class="style13"><span class="style6">Orders</span></a></li>
    <li class="style1">
    <a class="style13"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></a></li>
<li>   <a class="style1"> <asp:Button ID="Button1"
        runat="server" Text="Logout" CssClass="btn btn-outline-secondary btn-sm" onclick="Button1_Click" /></a>


 </li>
      </ul>
    </div>
  </div>
</nav>
<div class="table-responsive">


    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" DataKeyNames="oid" 
        DataSourceID="SqlDataSource2" CssClass="table table-striped thead-dark" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" ForeColor="Black" GridLines="Vertical" 
         AllowSorting="True" Width="100%" Height="397px" AllowPaging="True" style="color: #FF0066"
        
        >
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="oid" HeaderText="OrderId" InsertVisible="False" 
                ReadOnly="True" SortExpression="oid" />
            <asp:BoundField DataField="oname" HeaderText="CompanyName" 
                SortExpression="oname" />
            <asp:BoundField DataField="txsid" HeaderText="TransactionId" 
                SortExpression="txsid" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="qty" HeaderText="Quantity" 
                SortExpression="qty" />

            <asp:BoundField DataField="uname" HeaderText="UserName" 
                SortExpression="uname" />
            <asp:BoundField DataField="totalamt" HeaderText="Total" 
                SortExpression="totalamt" />
            <asp:BoundField DataField="status" HeaderText="Status" 
                SortExpression="status" />

        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle Backcolor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" Forecolor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:stockmarketConnectionString %>" 
        SelectCommand="SELECT * FROM [orders]"></asp:SqlDataSource>

</div>


    <span class="style6">


<br /><br />














    
    
    
    </span>














    
    
    
    <footer class="footer">
    <div class="col-sm-12" style="background:Black);">
      
           
            <center class="style12">     <a class="style13">Social Media</a><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;       <a href="#"><i style="color: #FF0066;" class="fab fa-facebook fa-2x"></i></a>&nbsp;
            <a><i style="color: #FF0066;" class="fab fa-pinterest-p fa-2x"></i></a>&nbsp;
            <a><i style="color: #FF0066;" class="fab fa-twitter fa-2x"></i></a>&nbsp;
            <a><i style="color: #FF0066;" class="fab fa-youtube fa-2x"></i></a>&nbsp;
            </span>
            <a><i style="color: #FF0066;" class="fab fa-linkedin fa-2x"></i></a>

         <hr />
        <div class="footer-copyright">
            <p class="style1"><span class="style6">© 2019 Copyright  </span>  
                <a class="style13">Designed And Developed By Vikash Joshi</a></p>
        </div>
                 </center>
     </div>
    </footer>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
