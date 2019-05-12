<%@ Page Language="C#" AutoEventWireup="true" CodeFile="managepost.aspx.cs" Inherits="admin_managepost" %>

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


         


         .style8
         {
             background-color: #000000;
             color: #FF0066;
         }


         


         .style9
         {
             color: #FFFFFF;
         }


         


         .style10
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
            data-target="#bs-example-navbar-collapse-1" style="color: #FF0066">
      </button>
        <span class="style7"></span>
        
   
      <a class="style2" href="#">StockPro</a><span class="style5"> </span>
      
<div class="spinner-grow text-success"></div>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
      <li class="style1"><a href="manageuser.aspx" class="style10"><span class="style6">Manage User</span></a></li>
    <li class="style1"><a href="managepost.aspx" class="style10"><span class="style6">Manage Post</span></a></li>
    <li class="style1"><a href="managefeedback.aspx" class="style10">
        <span class="style6">Manage Feedback</span></a></li>
    <li class="style1"><a href="#" class="style5">
    <asp:Label ID="Label1" runat="server" Text="" CssClass="style6"></asp:Label>
    

    <asp:Button ID="Button1"
        runat="server" Text="Logout" CssClass="btn btn-outline-secondary btn-sm" onclick="Button1_Click" />
    

 </a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="table table-responsive">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataKeyNames="pid" DataSourceID="SqlDataSource1" 
        ForeColor="Black" CssClass="table table-striped thead-dark" 
        onrowcommand="GridView1_RowCommand" style="color: #FF0066">
        <Columns>
            <asp:BoundField DataField="pid" HeaderText="#" InsertVisible="False" 
                ReadOnly="True" SortExpression="pid" />
            <asp:BoundField DataField="pdate" HeaderText="DATE" SortExpression="pdate" />
            <asp:BoundField DataField="pname" HeaderText="NAME" SortExpression="pname" />
            <asp:BoundField DataField="post" HeaderText="POST" SortExpression="post" />
            <asp:CommandField ButtonType="Button" HeaderText="VIEW" ShowSelectButton="True">
            <ControlStyle CssClass="btn btn-outline-success" />
            </asp:CommandField>
            <asp:CommandField ButtonType="Button" HeaderText="DELETE" 
                ShowDeleteButton="True">
            <ControlStyle CssClass="btn btn-outline-success" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle Backcolor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" Forecolor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:stockmarketConnectionString %>" 
        DeleteCommand="DELETE FROM [stockpost] WHERE [pid] = @pid" 
        InsertCommand="INSERT INTO [stockpost] ([pdate], [pname], [post]) VALUES (@pdate, @pname, @post)" 
        SelectCommand="SELECT * FROM [stockpost] ORDER BY [pdate]" 
        UpdateCommand="UPDATE [stockpost] SET [pdate] = @pdate, [pname] = @pname, [post] = @post WHERE [pid] = @pid">
        <DeleteParameters>
            <asp:Parameter Name="pid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="pdate" Type="DateTime" />
            <asp:Parameter Name="pname" Type="String" />
            <asp:Parameter Name="post" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="pdate" Type="DateTime" />
            <asp:Parameter Name="pname" Type="String" />
            <asp:Parameter Name="post" Type="String" />
            <asp:Parameter Name="pid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    <div class="container" style="border:1px solid Black);border-radius:25px;" CssClass="table table-striped thead-dark">
  <h2 style="text-align:center" class="style6">Selected User Post</h2>
  <table class="table">
    <thead class="thead-dark">
      <tr class="style9">
        <th class="style8">#</th>
        <th class="style8">DATE</th>
        <th class="style8">NAME</th>
        <th class="style8">POST</th>
      </tr>
    </thead>
    <tbody>
    <tr>
    <td>
                <span class="style6">
                <asp:Label ID="Label2" runat="server"></asp:Label></td>
    
    <td>
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
    <td>
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
    <td>
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
   

    </tr>
    </tbody>
    </table></div>
    <br />



    </span>



    <footer class="footer">
    <div class="col-sm-12" style="background:Black);">
      
           
            <center>     <a class="style1">Social Media</a><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;       <a href="#"><i class="fab fa-facebook fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-pinterest-p fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-twitter fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-youtube fa-2x"></i></a>&nbsp;
            </span>
            <a><i class="fab fa-linkedin fa-2x"></i></a>

         <hr />
        <div class="footer-copyright">
            <p class="style1"><span class="style6">© 2019 Copyright  </span>  
                <a class="style10">Designed And Developed By Vikash Joshi</a></p>
        </div>
                 </center>
     </div>
    </footer>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
