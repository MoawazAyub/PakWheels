<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test item.aspx.cs" Inherits="Pakwheels_Start.test_item" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PostID" DataSourceID="abc">
            <Columns>
                <asp:BoundField DataField="PostID" HeaderText="PostID" ReadOnly="True" InsertVisible="False" SortExpression="PostID"></asp:BoundField>
                <asp:BoundField DataField="Post_Date" HeaderText="Post_Date" SortExpression="Post_Date"></asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
                <asp:BoundField DataField="CarID" HeaderText="CarID" SortExpression="CarID"></asp:BoundField>
                <asp:BoundField DataField="Millage" HeaderText="Millage" SortExpression="Millage"></asp:BoundField>
                <asp:BoundField DataField="ManufacturerID" HeaderText="ManufacturerID" SortExpression="ManufacturerID"></asp:BoundField>
                <asp:BoundField DataField="ColorID" HeaderText="ColorID" SortExpression="ColorID"></asp:BoundField>
                <asp:BoundField DataField="UserAccountID" HeaderText="UserAccountID" SortExpression="UserAccountID"></asp:BoundField>
                <asp:BoundField DataField="CitiesId" HeaderText="CitiesId" SortExpression="CitiesId"></asp:BoundField>
                <asp:BoundField DataField="ModelId" HeaderText="ModelId" SortExpression="ModelId"></asp:BoundField>
                <asp:BoundField DataField="Features_oldId" HeaderText="Features_oldId" SortExpression="Features_oldId"></asp:BoundField>
                <asp:BoundField DataField="Version_oldId" HeaderText="Version_oldId" SortExpression="Version_oldId"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="abc" ConnectionString='<%$ ConnectionStrings:DBCS %>' SelectCommand="SELECT [PostID], [Post_Date], [Price], [CarID], [Millage], [ManufacturerID], [ColorID], [UserAccountID], [CitiesId], [ModelId], [Features_oldId], [Version_oldId] FROM [Post_Used_Cars]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
