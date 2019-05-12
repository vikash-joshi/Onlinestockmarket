<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
 <style type="text/css">
 
 .footer
      {
          position:inherit;
          bottom:0;
          width:100%;
          background-color:Black);
          color:White;
                    
      }
      .navbar
      {
        
          background-color:Black;
          
      }
      .nav
      {
        
          background-color:Black;
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
   

         .style5
         {
             color:White;
             font-family: Arial;
         }
         .style6
         {
             color:White;
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
             color:White;
         }

         
         .fc
         {
             border-radius:25px;
             border-color:Black);
             
         }
     </style>
    <title></title>
</head>
<body style="
background: url(bgm.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;" >
    <nav class="navbar navbar-static-top">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <button class="navbar-toggle collapsed" data-toggle="collapse" 
            data-target="#bs-example-navbar-collapse-1" style="color: #99FF66">
      </button>
        <span class="style7"></span>
        
   
      <a class="style2" href="#">StockPro</a><span class="style5"> </span>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
      <li class="style1"><a href="Default.aspx" class="style5">Home</a></li>
    <li class="style1"><a href="contact.aspx" class="style5">ContactUs</a></li>
    <li class="style1"><a href="Register.aspx" class="style5">Register</a></li>
    <li class="style1"><a href="insign.aspx" class="style5">Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- TradingView Widget BEGIN -->
<!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container">
  <div class="tradingview-widget-container__widget"></div>
  <div class="tradingview-widget-copyright"><a href="https://in.tradingview.com" rel="noopener" target="_blank"><span class="blue-text"></span></a> </div>
  <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js" async>
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
  "theme": "light",
  "isTransparent": false,
  "displayMode": "adaptive",
  "locale": "in"
}
  </script>
</div>
<!-- TradingView Widget END -->
<br />

  <div class="jumbotron" style="background:rgba(0,0,0,0.1)">
  <h1 class="text-center text-capitalize">Welcome....
  <br />
  <button class="btn btn-primary btn-lg">Learn More</button></h1>
  </div>  <form id="form1" runat="server">
  
&nbsp;

     <script src="mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>



</form>
</body>
</html>
