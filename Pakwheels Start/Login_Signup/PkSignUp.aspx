<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PkSignUp.aspx.cs" Inherits="Pakwheelers.Login_Signup.PkSignUp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>PakWheels | SignUp</title>
    <link href="../CSS%20Files/LoginSS.css" rel="stylesheet" />
</head>

<body>
    <div class="container">
        <div class="login">
            <h1 class="login-heading">
                <strong>Welcome.</strong> Please SignUp.</h1>
            <form id="Form1" method="post" runat="server">

                
                <asp:TextBox ID="Name_up" runat="server" placeholder='Full Name' Height="28px" Width="430px"></asp:TextBox>
                <br><br>
                <asp:TextBox ID="Email_up" runat="server" placeholder='Email Address' Height="28px" Width="430px"></asp:TextBox>
                <br><br>
                <asp:TextBox ID="Password_up" runat="server" placeholder='Password' TextMode="Password"  Height="28px" Width="430px"></asp:TextBox>
                <br><br>
                <asp:TextBox ID="ContactNumber_up" runat="server" placeholder='Contact No' Height="28px" Width="430px"></asp:TextBox>
                <br><br>
                <asp:TextBox ID="CurrCity_up" runat="server" placeholder='Current City' Height="28px" Width="430px"></asp:TextBox>
                <br>
                <div class="login-footer">
                    
                    <a href="PkSingUp.aspx" class="lnk">I've forgotten something</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSubmit" OnClick="Submit" Text="Submit" runat="server" class ="btn"  />
    
                     <br />
                    &nbsp;<asp:Label ID="Label_Message_signup" runat="server" ></asp:Label>
                
                </div>
            </form>
        </div>
    </div>

</body>
</html>
