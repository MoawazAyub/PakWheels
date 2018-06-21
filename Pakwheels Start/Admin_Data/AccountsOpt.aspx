<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountsOpt.aspx.cs" Inherits="Pakwheelers.Admin_Data.AccountsOpt" %>

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
        Total Number Of Accounts : 
        <asp:Label ID="T_Accounts" runat="server" Text="Label"></asp:Label>
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
                            <asp:GridView ID="datagrid" runat="server" CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AutoGenerateColumns="False" DataSourceID="Grid_Accounts">
                                <Columns>
                                    <asp:BoundField DataField="P_name" HeaderText="P_name" SortExpression="P_name"></asp:BoundField>
                                    <asp:BoundField DataField="P_email" HeaderText="P_email" SortExpression="P_email"></asp:BoundField>
                                    <asp:BoundField DataField="P_password" HeaderText="P_password" SortExpression="P_password"></asp:BoundField>
                                    <asp:BoundField DataField="P_contactNO" HeaderText="P_contactNO" SortExpression="P_contactNO"></asp:BoundField>
                                    <asp:BoundField DataField="P_currCity" HeaderText="P_currCity" SortExpression="P_currCity"></asp:BoundField>
                                </Columns>

                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="Grid_Accounts" ConnectionString='<%$ ConnectionStrings:DBCS %>' SelectCommand="SELECT * FROM [Detail_Of_Account_Holders]"></asp:SqlDataSource>

                        </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Button ID="home_back" runat="server" Style="margin-left: 4px"  Text="Back To Home" Width="159px" OnClick="home_back_Click" />
        &nbsp;&nbsp; 
        <asp:Button ID="back_account" runat="server" Style="margin-left: 0px"  Text="Accounts Options " Width="159px" OnClick="back_account_Click" />
                    
                </div>
            </div>
        </div>
        </form>
</body>
