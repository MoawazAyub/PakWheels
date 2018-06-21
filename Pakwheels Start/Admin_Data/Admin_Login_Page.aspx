<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login_Page.aspx.cs" Inherits="Pakwheelers.Admin_Data.Admin_Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <title>PakWheels | Admin</title>
    <link href="../CSS%20Files/LoginSS.css" rel="stylesheet" />
</head>
<body>
    <div>
        <div class="container">
        <div class="login">
            <h1 class="login-heading">
                <strong>Adminstator</strong> Please login.</h1>
            <form id="Form2" method="post" runat="server">

                
                <asp:TextBox ID="UserName" runat="server" placeholder='Enter Username' Height="28px" Width="430px"></asp:TextBox>
                <br><br>
                <asp:TextBox ID="Password" runat="server" placeholder='Enter Password' TextMode="password" Height="28px"  Width="430px"></asp:TextBox>
                <div class="login-footer">

                    <a href="#" class="lnk">I've forgotten something</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                     <asp:Button ID="btnSubmit1" OnClick="Submit"  Text="Submit" runat="server" class ="btn"  />

                    <asp:Label ID="L_admin_login" runat="server" Text=""></asp:Label>

                </div>
            </form>
        </div>
    </div>
    </div>
</body>
</html>

