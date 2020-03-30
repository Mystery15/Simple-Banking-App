﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Session.Abandon();
            Session.Remove("@UserAccountID");
            Session.Remove("@Userpass");
            Response.Redirect("Default.aspx");
        }
    }
}