using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Transaction : System.Web.UI.Page
{
    DatabaseConnection DbCon = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TransBtn_Click(object sender, EventArgs e)
    {
        string connect = DbCon.Connection();
        SqlConnection con = new SqlConnection(connect);

        try
        {
            con.Open();
            string query = "Transactions_Insert";
            SqlParameter[] par = new SqlParameter[2];

            par[0] = new SqlParameter("@TransactionType", dropTransType.SelectedValue);
            par[1] = new SqlParameter("@Amount", txtAmount.Text);

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
            foreach (SqlParameter a in par)
            {
                cmd.Parameters.Add(a);
            }

            string UserID = Convert.ToString(cmd.ExecuteNonQuery());
            if (UserID.Length > 0)
            {
                //if(dropTransType.SelectedValue == "Withdrawal")
                //{
                //    double balance;

                //    if (txtAmount.Text > balance)
                //}
                //lbReg.Text = "Account Created Successfully!!!!";
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lbTrans.Text = "All fields required!!!!";
            }
        }
        catch (Exception ex)
        {
            lbTrans.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
}