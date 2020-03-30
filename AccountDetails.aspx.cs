using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AccountDetails : System.Web.UI.Page
{
    DatabaseConnection DbCon = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        showUserID();
    }

    void showUserID()
    {
        try
        {
            string connect = DbCon.Connection();
            using (SqlConnection con = new SqlConnection(connect))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select top 1 UserAccountID from UserAccount order by UserAccountID DESC", con);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    lbAccNo.Text = sdr[0].ToString();
                }
            }
        }
        catch (Exception ex)
        {
            lbMsg.Text = ex.Message;
        }
    }
    protected void detailsBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}