<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Options_Page.aspx.cs" Inherits="Pakwheelers.Admin_Data.Admin_Options_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>PW | Admin Details</title>

    <link href="../assets/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <link href="../assets/lib/slick-carousel/slick/slick.css" rel="stylesheet" />

    <link href="../assets/css/adspoticons.css" rel="stylesheet" />

    <link href="../assets/css/style.css" rel="stylesheet" />

    <link href="../assets/css/custom.css" rel="stylesheet" />
    <style>
        body {
            background: url("../assets/img/bamboo.jpg");
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <div class="text-center">

        <br>
        <h2 style="font-family: 'High Tower Text'">Select to View The Details</h2>
        <br />
        <br>
        <br>
        <br>
        <br>
        <br>
        <a href="AccountsOpt.aspx" class="btn btn-transparent btn-small" style="border: solid">Accounts Options_</a>
        &nbsp;&nbsp;
                            <a href="PostOpt.aspx" class="btn btn-transparent btn-small" style="border: solid">__Posts Options__</a>
        <br>
        <br>
        <a href="Old_CarOpt.aspx" class="btn btn-transparent btn-small" style="border: solid">__Old Car Options_</a>
        &nbsp;&nbsp;
                            <a href="New_CarOpt.aspx" class="btn btn-transparent btn-small" style="border: solid">__New Car Options_</a>
        &nbsp;&nbsp;
                            <a href="Feed_backOpt.aspx" class="btn btn-transparent btn-small" style="border: solid">Review Car Options_</a>

    </div>
</body>
</html>

