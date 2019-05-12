<%@ Page Language="C#" AutoEventWireup="true" CodeFile="livepricing.aspx.cs" Inherits="aflrmweb_livepricing" %>

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
          
          background-color:Black);
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
    </div>
  </div>
</nav>

<h1 class="text-center">Live Market</h1>
<!-- TradingView Widget BEGIN -->

<div class="tradingview-widget-container">
  <div class="tradingview-widget-container__widget"></div>
  <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-market-quotes.js" async>
  {
  "width": "1450",
  "height": "500",
  "symbolsGroups": [
    {
      "originalName": "Indices",
      "symbols": [
        {
          "name": "NSE:TCS"
        },
        {
          "name": "BSE:WIPRO"
        },
        {
          "name": "NSE:INFY"
        },
        {
          "name": "CBOE:VXGOG"
        },
        {
          "name": "NASDAQ:MSFT"
        },
        {
          "name": "NSE:LT"
        },
        {
          "name": "BSE:TECHM"
        },
        {
          "name": "NYSE:ACN"
        },
        {
          "name": "NSE:TVSELECT"
        },
        {
          "name": "BSE:SONATSOFTW"
        },
        {
          "name": "BSE:SPARCSYS"
        },
        {
          "name": "NYSE:ORCL"
        }
      ],
      "name": "Indices"
    }
  ],
  "locale": "in"
}
  </script>
</div>

<!-- TradingView Widget END --> 

<h1 class="text-center">Market Analysis</h1>
<!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container">
  <div id="tv-medium-widget"></div>
  <div class="tradingview-widget-copyright"><a href="https://in.tradingview.com/symbols/NSE-TCS/" rel="noopener" target="_blank"><span class="blue-text"></span></a> <a href="https://in.tradingview.com/symbols/NSE-INFY/" rel="noopener" target="_blank"><span class="blue-text"></span></a> <span class="blue-text"></span> <a href="https://in.tradingview.com/symbols/NSE-WIPRO/" rel="noopener" target="_blank"><span class="blue-text"></span></a></div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
      new TradingView.MediumWidget(
  {
      "container_id": "tv-medium-widget",
      "symbols": [
    [
      "TCS",
      "NSE:TCS|1y"
    ],
    [
      "INFOSYS",
      "NSE:INFY|1y"
    ],
    [
      "WIPRO",
      "NSE:WIPRO|1y"
    ],
    [
      "TECH MAHINDRA",
      "BSE:TECHM|1y"
    ],
    [
      "ACCENTURE",
      "NYSE:ACN|1y"
    ]
  ],
      "greyText": "Quotes by",
      "gridLineColor": "rgba(182, 215, 168, 1)",
      "fontColor": "#83888D",
      "underLineColor": "#dbeffb",
      "trendLineColor": "rgba(91, 15, 0, 1)",
      "width": "1450",
      "height": "460px",
      "locale": "in"
  }
  );
  </script>
</div>
<!-- TradingView Widget END -->
    
    </form>
     <script type="text/javascript" src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
    <script src="../mainpagecss/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    

</body>
</html>
