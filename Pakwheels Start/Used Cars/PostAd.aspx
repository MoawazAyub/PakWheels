<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostAd.aspx.cs" Inherits="Pakwheelers.Used_Cars.PostAd" %>

<!doctype html>
<html lang="en">

<!-- Mirrored from xvelopers.com/html/spot/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 30 Oct 2016 20:01:32 GMT -->
<head>

    <title>PAKWHEELS</title>
    <!--========================================
    Meta
    ===========================================-->

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Disable tap highlight on IE -->
    <meta name="msapplication-tap-highlight" content="no">

    <!-- Web Application Manifest -->

    <!-- Add to home screen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="application-name" content="xDocs">
    <link rel="icon" sizes="192x192" href="../assets/img/basic/chrome-touch-icon-192x192.png">

    <!-- Add to home screen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Web Starter Kit">
    <link rel="apple-touch-icon" href="../assets/img/basic/apple-touch-icon.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="assets/img/basic/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#55acee">
    <!-- Color the status bar on mobile devices -->
    <meta name="theme-color" content="#55acee">

    <!--========================================
    CSS
    ===========================================-->
    <!--3rd party plugins-->
    <link href="../assets/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../assets/lib/slick-carousel/slick/slick.css" rel="stylesheet" type="text/css">
    <!--custom icons for classified website-->
    <link href="../assets/css/adspoticons.css" rel="stylesheet" type="text/css">
    <!--main styles for template-->
    <link href="../assets/css/style.css" rel="stylesheet" type="text/css">
    <!--put your custom css on the file below-->
    <link href="../assets/css/custom.css" rel="stylesheet" type="text/css">

	<style>
	body {
    background-image: url("../assets/img/14.jpg");
    background-color: #cccccc;
}
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div class="web-app">

        <div class="doc-header">
            <div class="container">
                <div class="inner">
                    <div class="app-logo">
                      
                        <a href="index.html"><img src="../assets/img/basic/logo3.png" alt="adspot" height="100"></a>
						
                    </div>
                </div>
            </div>
        </div>
        
       <div class="app-canvas">
            <div class="container" style="background-color:#004d99">
                

                <div class="page contextual-page">
                   
                 <div>
                <div align="center" style="background-color:#004d99">
                    <header class="text-normal">
                        <br />
                        <br />
                        <div >
                            <h1><strong>Used Cars <br /> </strong> Post A New Classified </h1>
                        </div>
                        <br />
                        <br />
                    </header>
                </div>

            <div align="center" style="background-color:#004d99">
               
                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ManufacturerName" DataValueField="ManufacturerId" Height="50px" Width="160px">
                        <asp:ListItem Value="0">Select Manufacturer</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT * FROM [Manufacturer_Car]"></asp:SqlDataSource>

                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource4" DataTextField="Car_Name" DataValueField="Car_Name" Height="49px" Width="160px">
                        <asp:ListItem Value="0">Select Cars</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [Car_Name] FROM [Used_Cars] WHERE ([ManufacturerId] = @ManufacturerId)" ConflictDetection="CompareAllValues" CacheExpirationPolicy="Sliding">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="ManufacturerId"  DefaultValue="0" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    &nbsp;&nbsp;

                    <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="p_cityname" DataValueField="p_city" Height="50px" style="margin-bottom: 0px" Width="160px">
                       <asp:ListItem Value="City">Select City</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT * FROM [pak_cities]"></asp:SqlDataSource>
                    <br />   <br />  <br /> 
                    
                    <asp:TextBox ID="UserName" runat="server" placeholder='Enter Username' Height="28px" Width="430px"></asp:TextBox>
                    <br /><br /><br /> 
                    <asp:TextBox ID="Car_Price" runat="server" placeholder='Enter Price' TextMode="password" Height="28px"  Width="430px"></asp:TextBox>
                    <br /><br /> 
                    <asp:TextBox ID="Car_Millage" runat="server" placeholder='Enter Millage KM/h' Height="28px" Width="430px"></asp:TextBox>
                    <br /><br /> 
                    <asp:TextBox ID="Car_Model" runat="server" placeholder='Enter Model ' Height="28px"  Width="430px"></asp:TextBox>
                    <br /><br /> 
                    <asp:TextBox ID="Car_version" runat="server" placeholder='Enter Version'  Height="28px"  Width="430px"></asp:TextBox>
                    <br /><br /> 
                    <asp:TextBox ID="Car_color" runat="server" placeholder='Enter Color'  Height="28px"  Width="430px"></asp:TextBox>
                    <br /><br /> <br /> 
                   
                 
                    <asp:Button ID="Submit_Post" runat="server" CssClass="btn" Font-Bold="true" Font-Size="Medium" Text="Submit Post" OnClick="Submit_Post_Click" />

            </div>

        </div>
                </div>

            </div>
           
        </div>
        <footer class="doc-footer">
            <div class="container">
               
                <div class="social-links">
                    <ul>
                        <li><a href="#" target="_blank" class="fa fa-twitter"></a></li>
                        <li><a href="#" target="_blank" class="fa fa-facebook"></a></li>
                        <li><a href="#" target="_blank" class="fa fa-linkedin"></a></li>
                        <li><a href="#" target="_blank" class="fa fa-youtube-play"></a></li>
                    </ul>
                </div>
                <div class="text-center">
                    &copy; PAKWHEELS - Classified
                </div>
            </div>
        </footer>
    </div>

    <!--======================================
   Modals
   =======================================-->
   
     </form>
</body>

<!-- Mirrored from xvelopers.com/html/spot/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 30 Oct 2016 20:02:12 GMT -->
</html>
