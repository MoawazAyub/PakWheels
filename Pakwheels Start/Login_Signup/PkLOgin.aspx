<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PkLOgin.aspx.cs" Inherits="Pakwheelers.Login_Signup.PkLOgin" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>PakWheels | Login</title>
    <link href="../CSS%20Files/LoginSS.css" rel="stylesheet" />
</head>

<body>
   <%-- <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>--%>
    <div class="container">
        <div class="login">
            <h1 class="login-heading">
                <strong>Welcome.</strong> Please login.</h1>
            <form id="Form1" method="post" runat="server">

                
                <asp:TextBox ID="UserName" runat="server" placeholder='Enter Username' Height="28px" Width="430px"></asp:TextBox>
                <br><br>
                <asp:TextBox ID="Password" runat="server" placeholder='Enter Password' TextMode="password" Height="28px"  Width="430px"></asp:TextBox>
                <br>
                <div class="login-footer">
                    <a href="PkLOgin.aspx" class="lnk">I've forgotten something</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
                    <asp:Button ID="btnSubmit1" OnClick="Submit"  Text="Submit" runat="server" class ="btn" />

                    <br />
                    <a href="PkLOgin.aspx" class="lnk">&nbsp;</a>
                    <asp:Label ID="Label_Message_login" runat="server"></asp:Label>

                </div>
            </form>
        </div>
    </div>
   
</body>
</html>

