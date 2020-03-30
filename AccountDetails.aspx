<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccountDetails.aspx.cs" Inherits="AccountDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Money | Account Details</title>
    <link href="css/animate.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/sidebar-nav.css" />
    <link rel="stylesheet" href="css/style.css" />
    <style type="text/css">
        .transForm {
            margin-top: 120px;
            margin-left: 50px;
            border: 2px solid #f8f8f8;
            align-content: center;
            box-shadow: rgba(128, 128, 128, 4) 10px 10px;
            height: auto;
            width: 40%;
            border-radius: 3px 2px;
        }

        .auto-style2 {
            width: 140px;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
    </style>
</head>
<body class="fix-header">
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
                    <a class="logo" href="Default.aspx">
                        <b>
                            <img src="img/favicon.png" style="width: auto; height: 100px;" alt="home" class="dark-logo" />
                        </b>
                    </a>
                </div>
            </div>
        </nav>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
            </div>

        </div>
        <div id="page-wrapper">
            <div class="container-fluid">
                <form class="transForm" id="form1" runat="server">
                    <br />
                    <table style="margin-left:10px;">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label1" runat="server" Text="Account Number:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbAccNo" runat="server" Text=""></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label2" runat="server" Text="Please do NOT forget your Account Number!!!"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbMsg" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2"></td>
                            <td>
                                <asp:Button ID="detailsBtn" OnClick="detailsBtn_Click" class="main_btn mt-md-0 mt-4" runat="server" Text="Okay" Width="187px" CssClass="auto-style3" Height="39px" />
                            </td>
                        </tr>
                    </table>
                </form>

                <footer class="footer text-center">2019 &copy; Bank</footer>
            </div>
        </div>
    </div>
    <script src="js/bootstrap.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/sidebar-nav.js"></script>
</body>
</html>

