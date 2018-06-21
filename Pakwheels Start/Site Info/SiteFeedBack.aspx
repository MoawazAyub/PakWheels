<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiteFeedBack.aspx.cs" Inherits="Pakwheelers.Site_Info.SiteFeedBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PKW | Site Feedback </title>
    <link href="../CSS%20Files/LoginSS.css"  rel="stylesheet" />
</head>
<body>
     <div class="container">
        <div class="login">
            <h1 class="login-heading">
                <strong>Pakwheels : </strong>SiteFeedback </h1>
            <form id="Form1" method="post" runat="server">

                
                <asp:TextBox ID="SiteFeedBack_UserName" runat="server" placeholder='Username' Height="28px" Width="430px" ></asp:TextBox>
                <br><br>
                <asp:TextBox ID="Feedback_comment" runat="server" placeholder='Feedback' Height="100px" Width="430px" TextMode="MultiLine"></asp:TextBox>
                <br><br>
                <div class="login-footer">
                    <asp:Button ID="Button1" runat="server" Text="Submit Feedback" class ="btn" OnClick="Button1_Click" />

                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="feedback_status" runat="server" Text=""></asp:Label>
                    <br />

                    <br />

                </div>
                <br />
            </form>
        </div>
    </div>
</body>
</html>
