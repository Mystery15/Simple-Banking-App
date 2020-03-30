<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Money | Create Account</title>
    <link href="css/animate.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/sidebar-nav.css" />
    <link rel="stylesheet" href="css/style.css" />
    <style type="text/css">
        .regForm{
            margin-top: 120px;
            margin-left: 50px;
            border: 2px solid #f8f8f8;
            align-content:center;
            box-shadow: rgba(128, 128, 128, 4) 10px 10px;
            height: auto;
            width: 60%;
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
                <form class="regForm" id="form1" runat="server">
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
                                <asp:Label ID="lbFirst" runat="server" Text="First Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFirst" runat="server" BorderColor="White" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbLast" runat="server" Text="Last Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtLast" runat="server" BorderColor="White" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbDOB" runat="server" Text="Date Of Birth"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" BorderColor="White" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbGender" runat="server" Text="Gender"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropGender" runat="server" Height="30px" Width="200px">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
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
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" BorderColor="White" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbMobile" runat="server" Text="Mobile"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMobile" runat="server" TextMode="Phone" BorderColor="White" Height="30px" Width="200px"></asp:TextBox>
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
                            <td class="auto-style2">
                                <asp:Label ID="lbPword" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPword" TextMode="Password" runat="server" BorderColor="White" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <%--<tr>
                            <td class="auto-style2">
                                <asp:Label ID="lbCPword" runat="server" Text="Confirm Password"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCPword" TextMode="Password" runat="server" BorderColor="White" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>--%>
                        <tr>
                            <td class="auto-style2"></td>
                            <td rowspan="2">
                                <asp:Button ID="RegBtn" OnClick="RegBtn_Click" class="main_btn mt-md-0 mt-4" runat="server" Text="Create Account" Width="187px" CssClass="auto-style3" Height="39px" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td rowspan="2" class="auto-style2">
                                <asp:Label ID="lbReg" runat="server" Text=""></asp:Label>
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

