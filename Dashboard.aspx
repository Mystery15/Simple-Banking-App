<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Money | Dashboard</title>
<link href="css/animate.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/sidebar-nav.css" />
    <link rel="stylesheet" href="css/style.css" />
    <style type="text/css">
        body{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style1 {
            margin-bottom: 0px;
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
<%--                    <li style="padding: 70px 0 0;">
                        <a href="UserProfile.aspx" class="waves-effect"><span><img src="img/profile.png" /></span>Profile</a>
                    </li>--%>
                </ul>
                <div class="center p-20">
                     <a href="Logout.aspx" class="btn btn-danger btn-block waves-effect waves-light" >
                         <span><img src="img/exit.png" /></span>
                         Logout</a>
                 </div>
                </div>
            
        </div>
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row" style="margin-bottom: 70px;">
                    <%--<div class="col-lg-4 col-sm-6 col-xs-12">
                        <div class="white-box analytics-info">
                            <h3 class="box-title">Ledger Balance</h3>
                            <ul class="list-inline two-part">
                                <asp:Label ID="lbLedgerBal" runat="server" Text=""></asp:Label>
                            </ul>
                        </div>
                    </div>--%>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <div class="white-box analytics-info">
                            <h3 class="box-title">Available Balance</h3>
                            <ul class="list-inline two-part">
                                <asp:Label ID="lbAvailBalance" runat="server" Text=""></asp:Label>
                            </ul>
                        </div>
                    </div>
                </div>
              <form id="form1" runat="server">

                  <%--<asp:Table ID="Table1" runat="server" Width="674px" Height="60px" OnDataBinding="Page_Load">
                      <asp:TableHeaderRow>
                          <asp:TableHeaderCell>#</asp:TableHeaderCell>
                          <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                          <asp:TableHeaderCell>Transaction Type</asp:TableHeaderCell>
                          <asp:TableHeaderCell>Amount</asp:TableHeaderCell>
                          <asp:TableHeaderCell>Balance</asp:TableHeaderCell>
                      </asp:TableHeaderRow>
                      <asp:TableRow>
                          <asp:TableCell>
                              <asp:TextBox ID="txtTransNo" Text='<%# Bind("TransactionNumber") %>' runat="server"></asp:TextBox>
                          </asp:TableCell>
                          <asp:TableCell>
                               <asp:TextBox ID="txtDate" Text='<%# Bind("TransactionDate") %>' runat="server"></asp:TextBox>
                          </asp:TableCell>
                          <asp:TableCell>
                              <asp:TextBox ID="txtTransType" Text='<%# Bind("TransactionType") %>' runat="server"></asp:TextBox>
                          </asp:TableCell>
                          <asp:TableCell>
                              <asp:TextBox ID="txtAmount" Text='<%# Bind("Amount") %>' runat="server"></asp:TextBox>
                          </asp:TableCell>
                          <asp:TableCell>
                              <asp:TextBox ID="txtBalance" Text='<%# Bind("Balance") %>' runat="server"></asp:TextBox>
                          </asp:TableCell>
                      </asp:TableRow>
                  </asp:Table>--%>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" Width="666px" CssClass="auto-style1">
                <Columns>
                     <asp:TemplateField HeaderText="#">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtTransNo" Text='<%# Bind("TransactionNumber") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbTransNo" runat="server" Text='<%# Bind("TransactionNumber") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDate" Text='<%# Bind("TransactionDate") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbDate" runat="server" Text='<%# Bind("TransactionDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Transaction Type">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtTransType" Text='<%# Bind("TransactionType") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbTransType" runat="server" Text='<%# Bind("TransactionType") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Amount">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAmount" Text='<%# Bind("Amount") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbAmount" runat="server" Text='<%# Bind("Amount") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Balance">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtBalance" Text='<%# Bind("Balance") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbBalance" runat="server" Text='<%# Bind("Balance") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
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

