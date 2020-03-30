<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Money | Login</title>
    <link href="css/animate.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/sidebar-nav.css" />
    <link rel="stylesheet" href="css/style.css" />
    <style type="text/css">
        .loginForm{
            border: 2px solid #f8f8f8;
            margin-top:150px;
            margin-left: 50px;
            align-content:center;
            box-shadow: rgba(128, 128, 128, 4) 10px 10px;
            height: auto;
            width: 250px;
            border-radius: 3px 2px;
        }
        .auto-style1 {
            width: 268435520px;
        }
        body{
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
                            <img src="img/favicon.png" style="width:auto;height:100px;" alt="home" class="dark-logo" />
                        </b>
                    </a>
                </div>
            </div>
        </nav>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <a href="Default.aspx" class="waves-effect"><span><img src="img/login.png" /></span>Login</a>
                    </li>
                </ul>
                <div class="center p-20">
                     <a href="Registration.aspx" class="btn btn-danger btn-block waves-effect waves-light">
                         <span><img src="img/register.png" /></span>
                         Create Account</a>
                 </div>
            </div>
        </div>
        <div id="page-wrapper">
            <div class="container-fluid">
                <form class="loginForm" id="form1" runat="server">
                    <table>
                        <tr>
                            <td colspan="2">
                                <br />
                                <asp:TextBox ID="txtAccNo" runat="server" placeholder="Enter Account Number" />
                                <br />
                                <br />
                                <br />
                                <asp:TextBox ID="txtPWD" placeholder="Enter Password" runat="server" TextMode="Password" style="width: 128px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr colspan="2">
                            <td class="auto-style1">
                                &nbsp;</td>
                        </tr>
                        <tr colspan="2">
                            <td>
                                <asp:Button ID="btnLog" OnClick="btnLog_Click" class="btn btn-danger btn-block" runat="server" Text="Login" Width="114px" />
                                <br />
                            </td>
                        </tr>
                        <tr colspan="2">
                            <td>
                                <asp:Label ID="lbMsg" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </form>
                <footer class="footer text-center"> 2019 &copy; Bank</footer>
            </div>
        </div>
    </div>
    <script src="js/bootstrap.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/sidebar-nav.js"></script>
</body>
</html>

