<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Money | Profile</title>
<link href="css/animate.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/sidebar-nav.css" />
    <link rel="stylesheet" href="css/style.css" />
    <style type="text/css">
        .UpdateForm{
            margin-top: 120px;
            margin-left: 50px;
            border: 2px solid #f8f8f8;
            align-content:center;
            box-shadow: rgba(128, 128, 128, 4) 10px 10px;
            height: auto;
            width: 45%;
            border-radius: 3px 2px;
        }
        .auto-style2 {
            width: 140px;
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
                        <a href="Dashboard.aspx" class="waves-effect"><span><img src="img/dashboard1.png" /></span>Dashboard</a>
                    </li>
                    <li style="padding: 70px 0 0;">
                        <a href="Transaction.aspx" class="waves-effect"><span><img src="img/transaction.png" /></span>Transaction</a>
                    </li>
                    <li style="padding: 70px 0 0;">
                        <a href="UserProfile.aspx" class="waves-effect"><span><img src="img/profile.png" /></span>Profile</a>
                    </li>
                </ul>
                <div class="center p-20">
                     <a href="Logout.aspx" class="btn btn-danger btn-block waves-effect waves-light">
                         <span><img src="img/exit.png" /></span>
                         Logout</a>
                 </div>
                </div>
            
        </div>
        <div id="page-wrapper">
            <div class="container-fluid">
              <form class="UpdateForm" id="form1" runat="server">
                    <table>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbTitle" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropTitle" runat="server" CssClass="auto-style5" Height="30px" Width="200px">
                                    <asp:ListItem>Miss</asp:ListItem>
                                    <asp:ListItem>Mr.</asp:ListItem>
                                    <asp:ListItem>Mrs.</asp:ListItem>
                                    <asp:ListItem>Dr.</asp:ListItem>
                                    <asp:ListItem>Prof</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbStatus" runat="server" Text="Marital Status"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropStatus" runat="server" Height="30px" Width="200px">
                                    <asp:ListItem>Single</asp:ListItem>
                                    <asp:ListItem>Married</asp:ListItem>
                                    <asp:ListItem>Divorced</asp:ListItem>
                                    <asp:ListItem>Widowed</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbEmail" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server" BorderColor="White" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbMobile" runat="server" Text="Mobile"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMobile" runat="server" BorderColor="White" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbUname" runat="server" Text="Username"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUname" runat="server" BorderColor="White" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2"></td>
                            <td rowspan="2">
                                <asp:Button ID="UpdateBtn" class="main_btn mt-md-0 mt-4" runat="server" Text="Update Profile" Width="187px" CssClass="auto-style3" Height="39px" />
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="3" class="auto-style2">
                                <asp:Label ID="lbUpdate" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <%--<tr>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MagicConnection %>" SelectCommand="SELECT * FROM [UserAccount]"></asp:SqlDataSource>
                        </tr>--%>
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

