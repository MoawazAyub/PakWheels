<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchAds.aspx.cs" Inherits="Pakwheelers.Used_Cars.SearchAds" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Pak Wheels | Used Car Search </title>
    <link href="../CSS%20Files/LoginSS.css" rel="stylesheet" />

</head>


<body>
    <form id="form1" runat="server">
        <br />

        <div class="drop">
            <ul class="drop_menu">

                <div align="center">
                    <header class="text-normal">
                        <br />
                        <br />
                        <div >
                            <h1><strong>Used</strong> Car Searching </h1>
                        </div>
                        <br />
                        <br />
                    </header>
                </div>

                <div align="center">


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
                    <br>   <br>  <br> 
                    
                     Price High To Low&nbsp;&nbsp;&nbsp;&nbsp; 
                    
                     <asp:RadioButton ID="PriceHighToLow" runat="server" checked="true"  OnCheckedChanged="PriceHighToLow_CheckedChanged" GroupName="Rs"/> &nbsp; &nbsp;&nbsp;Price Low To High&nbsp;&nbsp; <asp:RadioButton ID="PriceLowToHigh" runat="server" GroupName="Rs"  />
                     <br> <br> 
                    Millage High To Low 
                    <asp:RadioButton ID="MilageLowToHigh" checked="true" runat="server" OnCheckedChanged="MilageLowToHigh_CheckedChanged" GroupName="Millage" />  &nbsp;Millage Low To High&nbsp; <asp:RadioButton ID="MilageHighToLow" runat="server"   GroupName="Millage"  />


                    <br> <br> <br>

                    

                    <asp:Button ID="searchID" runat="server" Text="Search" OnClick="search_click" class="btn" />
                </div>

                <div style="width: 674px; margin-left: 104px">
                </div>
        </div>


    </form>
</body>
</html>
