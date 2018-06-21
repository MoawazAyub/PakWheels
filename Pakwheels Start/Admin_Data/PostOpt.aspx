<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostOpt.aspx.cs" Inherits="Pakwheelers.Admin_Data.PostOpt" %>

<!DOCTYPE html>
<head id="Head1" runat="server">
    <title>PKW | Account Options</title>
    <link href="../CSS%20Files/TableViews.css" rel="stylesheet" />
    <style>
        body {
            background: url("../assets/img/lg6.jpg");
            background-size: inherit; /* <------ */
            background-repeat: no-repeat;
            background-position: center;
        }
    </style>
</head>

<body>
    <div style="font-size: large inherit" class="mytxt">
        <h1 style="text-align: center">Accounts Options 
        </h1>
    </div>
    <br />
    <br />
    <div style="font-size: large inherit" class="mytxt">
        Total Post : 
        <asp:Label ID="T_Post" runat="server" Text=""></asp:Label>
    </div>
    <br />
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
        <div class="mydatagrid">
            <div class="rows">
                <div class="selectedrow">
                    <div>
                        <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AutoGenerateColumns="False" DataSourceID="post2">
                            <Columns>
                                <asp:BoundField DataField="PostID" HeaderText="PostID" ReadOnly="True" InsertVisible="False" SortExpression="PostID"></asp:BoundField>
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
                                <asp:BoundField DataField="Post_Date" HeaderText="Post_Date" SortExpression="Post_Date"></asp:BoundField>
                                <asp:BoundField DataField="ManufacturerName" HeaderText="ManufacturerName" SortExpression="ManufacturerName"></asp:BoundField>
                                <asp:BoundField DataField="Car_Name" HeaderText="Car_Name" SortExpression="Car_Name"></asp:BoundField>
                                <asp:BoundField DataField="ColourName" HeaderText="ColourName" SortExpression="ColourName"></asp:BoundField>
                                <asp:BoundField DataField="UserAccountID" HeaderText="UserAccountID" ReadOnly="True" InsertVisible="False" SortExpression="UserAccountID"></asp:BoundField>
                                <asp:BoundField DataField="version_name" HeaderText="version_name" SortExpression="version_name"></asp:BoundField>
                                <asp:BoundField DataField="CitiesName" HeaderText="CitiesName" SortExpression="CitiesName"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="post2" ConnectionString='<%$ ConnectionStrings:DBCS %>' SelectCommand="SELECT Post_Used_Cars.PostID, Post_Used_Cars.Price, Post_Used_Cars.Post_Date, Manufacturer_Car.ManufacturerName, Used_Cars.Car_Name, Colours.ColourName, UserAccuont.UserAccountID, Version_old.version_name, Cities.CitiesName FROM Post_Used_Cars LEFT OUTER JOIN Used_Cars ON Post_Used_Cars.CarID = Used_Cars.CarID LEFT OUTER JOIN Manufacturer_Car ON Post_Used_Cars.ManufacturerID = Manufacturer_Car.ManufacturerId LEFT OUTER JOIN Colours ON Post_Used_Cars.ColorID = Colours.ColorID LEFT OUTER JOIN Version_old ON Version_old.Version_oldId = Post_Used_Cars.Version_oldId INNER JOIN Features_old ON Features_old.Features_oldId = Post_Used_Cars.Features_oldId LEFT OUTER JOIN Cities ON Cities.CitiesId = Post_Used_Cars.CitiesId LEFT OUTER JOIN UserAccuont ON UserAccuont.UserAccountID = Post_Used_Cars.UserAccountID"></asp:SqlDataSource>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button2" runat="server" OnClick="Button2_Click"  Style="margin-left: 4px"  Text="Back To Home" Width="159px" />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="margin-left: 0px"  Text="Back To Home" Width="159px"  />
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
                  
                    
                </div>
            </div>
        </div>
        </form>
</body>
