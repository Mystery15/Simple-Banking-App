using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DatabaseConnection DbCon = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLog_Click(object sender, EventArgs e)
    {
        string connect = DbCon.Connection();
        SqlConnection con = new SqlConnection(connect);

        try
        {
            con.Open();
            string query = "UserAccount_Login";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserAccountID", txtAccNo.Text.ToString());
            cmd.Parameters.AddWithValue("@Userpass", txtPWD.Text.ToString());

            int usercount = (Int32)cmd.ExecuteScalar();
            if(usercount == 1)
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                con.Close();
                lbMsg.Text = "Invalid Account Number or Password!!!!";
            }
        }
        catch(Exception ex)
        {
            lbMsg.Text = ex.Message;
        }
    }
}