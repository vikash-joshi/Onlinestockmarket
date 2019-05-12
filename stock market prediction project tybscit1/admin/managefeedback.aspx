<%@ Page Language="C#" AutoEventWireup="true" CodeFile="managefeedback.aspx.cs" Inherits="admin_managefeedback" %>

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
      .style2
      {
          float: left;
          height: 60px;
          padding: 20px 15px;
          font-size: 18px;
          line-height: 20px;
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
             color: #FF0066;
         }

         
         .fc
         {
             border-radius:25px;
             border-color:Black);
             
         }
         
         .style10
         {
             background-color: #000000;
         }


         


        </style>

</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-fixed">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <button class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1" style="color: #FF0066;">
      </button>
        <span class="style7"></span>
        
   
      <a class="style2" href="#">StockPro</a><span class="style5"> </span>
      

    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
      <li class="style1"><a href="manageuser.aspx" class="style5">Manage User</a></li>
    <li class="style1"><a href="managepost.aspx" class="style5">Manage Post</a></li>
    <li class="style1"><a href="managefeedback.aspx" class="style5">Manage Feedback</a></li>
    <li class="style1"><a href="#" class="style5">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:Button ID="Button1"
        runat="server" Text="Logout" CssClass="btn btn-outline-secondary btn-sm" onclick="Button1_Click" />


 </a></li>
      </ul>
    </div>
  </div>
</nav>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Feedbackf]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataKeyNames="fid" DataSourceID="SqlDataSource1" 
        ForeColor="
        Black" CssClass="table table-striped thead-dark" 
        onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" 
                ReadOnly="True" SortExpression="fid" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="femail" HeaderText="femail" 
                SortExpression="femail" />
            <asp:BoundField DataField="fcommnent" HeaderText="fcommnent" 
                SortExpression="fcommnent" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle Backcolor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" Forecolor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    
<div class="container" style="border:1px solid Black);border-radius:25px;">
  <h2 style="text-align:center">Selected User Feedback</h2>
  <table class="table">
    <thead class="thead-dark">
      <tr class="style11">
        <th class="style10">#</th>
        <th class="style10">DATE</th>
        <th class="style10">NAME</th>
        <th class="style10">EMAIL</th>
              <th class="style10">COMMENT</th>
      </tr>
    </thead>
    <tbody>
    <tr>
    <td>
                <asp:Label ID="Label2" runat="server"></asp:Label></td>
    
    <td>
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
    <td>
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
    <td>
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
    <td>
                <asp:Label ID="Label6" runat="server"></asp:Label></td>
    <td>
    <asp:Label ID="Label7" runat="server"></asp:Label></td>

    </tr>
    </tbody>
    </table></div>
    <footer class="footer">
    <div class="col-sm-12" style="background:Black);">
      
           
            <center>     <a class="style5">Social Media</a><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;       <a href="#"><i class="fab fa-facebook fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-pinterest-p fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-twitter fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-youtube fa-2x"></i></a>&nbsp;
            </span>
            <a><i class="fab fa-linkedin fa-2x"></i></a>

         <hr />
        <div class="footer-copyright">
            <p class="style1"><span class="style6">© 2019 Copyright  </span>  <a class="style5">Designed And Developed By Vikash Joshi</a></p>
        </div>
                 </center>
     </div>
    </footer>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
