<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy of Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="footer.css" rel="stylesheet" type="text/css" />
 <style type="text/css">
 
     .style9
     {
         color:Black);
     }
     .style10
     {
         color: #000000;
         font-family: Arial;
     }
     .style11
     {
         float: left;
         height: 60px;
         padding: 20px 15px;
         font-size: 18px;
         line-height: 20px;
         color: #000000;
         font-family: Arial;
                   background:white;
     }
     .style12
     {
         position: relative;
         min-height: 1px;
         float: left;
         width: 100%;
         padding-left: 15px;
         padding-right: 15px;
                   background:white;
         color:Black);
     }
 
     .style13
     {
         color: #FFFFFF;
         background-color: Black);
     }
 
     .style14
     {
         background-color: #666666;
     }
 
    </style>
    <title></title>
</head>
<body>
    <nav class="navbar navbar-fixed navbar-dark bg-danger">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <button class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1">
      </button>
        <span class="style7"></span>
        
   
      <a class="style11" href="#">StockPro</a><span class="style10"> </span>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
      <li class="style1"><a href="Default.aspx" class="style10">Home</a></li>
    <li class="style1"><a href="contact.aspx" class="style10">ContactUs</a></li>
    <li class="style1"><a href="Register.aspx" class="style10">Register</a></li>
    <li class="style1"><a href="insign.aspx" class="style10">Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container">
  <div class="tradingview-widget-container__widget"></div>
  <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-tickers.js" async>
  {
  "symbols": [
    {
      "title": "S&P 500",
      "proName": "INDEX:SPX"
    },
    {
      "title": "Shanghai Composite",
      "proName": "INDEX:XLY0"
    },
    {
      "title": "EUR/USD",
      "proName": "FX_IDC:EURUSD"
    },
    {
      "title": "BTC/USD",
      "proName": "BITFINEX:BTCUSD"
    },
    {
      "title": "ETH/USD",
      "proName": "BITFINEX:ETHUSD"
    }
  ],
  "locale": "in"
}
  </script>
</div>

<br class="style9" />
    <form id="form1" runat="server">
    
    <center>
    <div class="jumbotron" style="height:430px">
    
  <h1 class="style9">Stock Market</h1>
  <p class="style9">“Life seems to be like a stock market...
Where relationships are traded...

Can't judge when the value of a relationship will go high or low...!”</p>
  <p><asp:Button ID="Button1" runat="server" Text="Learn More" class="btn btn-outline-success btn-lg" /></p></div>
        
</center>
</form>

    <span class="style9">&nbsp;

</span>

<div style="color:Black);"><footer class="footer" style="border:1px solid Black);">
<div class="style12">
      
           
            <center>     <a class="style9">Social Media</a><span class="style9">&nbsp;&nbsp;&nbsp;&nbsp;       <a href="#"><i class="fab fa-facebook fa-2x" style="color:Black)"></i></a>&nbsp;
            <a ><i class="fab fa-pinterest-p fa-2x" style="color:Black)"></i></a>&nbsp;
            <a><i class="fab fa-twitter fa-2x" style="color:Black)"></i></a>&nbsp;
            <a><i class="fab fa-youtube fa-2x" style="color:Black)"></i></a>&nbsp;
            </span>
            <a><i class="fab fa-linkedin fa-2x" style="color:Black)"></i></a>

         <hr />
        <div class="style14" style="color:>
            <p class="style1"><span class="style9">© 2019 Copyright  </span>  
                <a class="style9">Designed And Developed By Vikash Joshi</a></p>
        </div>
                 </center>
     </div>
    
   </footer>
   </div>
     <script src="mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js"></script>




</body>
</html>
