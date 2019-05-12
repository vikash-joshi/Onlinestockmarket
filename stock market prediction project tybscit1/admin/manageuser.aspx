<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manageuser.aspx.cs" Inherits="admin_manageuser" %>

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
          color: #FF0066;
           font-family:Arial;
      }
   

         .style5
         {
             color: #99FF66;
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
             color: #99FF66;
         }

         
         .fc
         {
             border-radius:25px;
             border-color:Black);
             
         }


         .style10
         {
             background-color: #000000;
             color: #FF0066;
         }
         .style11
         {
             color: #FFFFFF;
         }


         .style12
         {
             color: #FF0066;
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
        
   
      <a class="style2" href="#">StockPro</a><span class="style12"> </span>
      
<div class="spinner-grow text-success"></div>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
      <li class="style1"><a href="manageuser.aspx" class="style12">Manage User</a></li>
    <li class="style1"><a href="managepost.aspx" class="style12">Manage Post</a></li>
    <li class="style1"><a href="managefeedback.aspx" class="style12">Manage Feedback</a></li>
    <li class="style1"><a href="#" class="style5">
    <asp:Label ID="Label1" runat="server" Text="" CssClass="style6"></asp:Label>
    <asp:Button ID="Button1"
        runat="server" Text="Logout" CssClass="btn btn-outline-secondary btn-sm" 
            onclick="Button1_Click" style="color: #FF0066" />


 </a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="table-responsive">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="uid" 
        DataSourceID="SqlDataSource1" CssClass="table table-striped thead-dark" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
        onrowcommand="GridView1_RowCommand" style="color: #FF0066" 

        
        >
        <Columns>
            <asp:BoundField DataField="uid" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="uid" />
            <asp:BoundField DataField="username" HeaderText="UserName" 
                SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="Password" 
                SortExpression="password" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="country" HeaderText="Country" 
                SortExpression="country" />

            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                HeaderText="OPERATION" ShowEditButton="True" ShowSelectButton="True">
            <ControlStyle CssClass="btn btn-outline-secondary" />
            </asp:CommandField>

        </Columns>
        <FooterStyle BackColor="#CCCC99" Forecolor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" Forecolor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=MY-BUDDY\SQLEXPRESS;Initial Catalog=stockmarket;Integrated Security=True;Pooling=False" 
        ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT * FROM [Usrdata] ORDER BY [uid]" 
        DeleteCommand="DELETE FROM [Usrdata] WHERE [uid] = @uid" 
        InsertCommand="INSERT INTO [Usrdata] ([username], [password], [email], [phone], [country]) VALUES (@username, @password, @email, @phone, @country)" 
        UpdateCommand="UPDATE [Usrdata] SET [username] = @username, [password] = @password, [email] = @email, [phone] = @phone, [country] = @country WHERE [uid] = @uid">
        <DeleteParameters>
            <asp:Parameter Name="uid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="country" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="uid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</div>



<div class="container" style="border:1px solid Black);border-radius:25px;">
  <h2 style="text-align:center" class="style6">Selected User Detail</h2>
  <table class="table">
    <thead class="thead-dark">
      <tr class="style11">
        <th class="style10">#</th>
        <th class="style10">USERNAME</th>
        <th class="style10">PASSWORD</th>
        <th class="style10">EMAIL</th>
              <th class="style10">PHONE</th>
                    <th class="style10">COUNTRY</th>
      </tr>
    </thead>
    <tbody>
    <tr class="style6">
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
      
           
            <center>     <a class="style12">Social Media</a><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;       <a href="#"><i class="fab fa-facebook fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-pinterest-p fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-twitter fa-2x"></i></a>&nbsp;
            <a><i class="fab fa-youtube fa-2x"></i></a>&nbsp;
            </span>
            <a><i class="fab fa-linkedin fa-2x"></i></a>

         <hr />
        <div class="footer-copyright">
            <p class="style1"><span class="style6">© 2019 Copyright  </span>  
                <a class="style12">Designed And Developed By Vikash Joshi</a></p>
        </div>
                 </center>
     </div>
    </footer>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
