using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;

public partial class Dashboard : System.Web.UI.Page
{
    DatabaseConnection DbCon = new DatabaseConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridItems();
            ShowAvailableBalance();
            ShowLedgerBalance();
        }
        //RefreshData();
    }

    void GridItems()
    {
        string connect = DbCon.Connection();
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection(connect))
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Transactions", con);
            sda.Fill(dt);
        }
        if(dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            dt.Rows.Add(dt.NewRow());
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = dt.Columns.Count;
            GridView1.Rows[0].Cells[0].Text = "Data Not Found!!!!";
            GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            GridView1.Rows[0].Cells[0].ForeColor = Color.Gray;
        }
    }

    void ShowAvailableBalance()
    {
        string connect = DbCon.Connection();
        using (SqlConnection con = new SqlConnection(connect))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select top 1 Balance from Transactions order by Balance DESC", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                lbAvailBalance.Text = sdr[0].ToString();
            }
        }
    }

    void ShowLedgerBalance()
    {

    }

    //public void RefreshData()
    //{
    //    try
    //    {
    //        string connect = DbCon.Connection();
    //        SqlConnection con = new SqlConnection(connect);
    //        con.Open();

    //        //DbCon.startConnection();

    //        SqlCommand cmd = new SqlCommand("Select * from Transactions", con);
    //        SqlDataAdapter sda = new SqlDataAdapter(cmd);
    //        DataSet ds = new DataSet();
    //        sda.Fill(ds);
    //        con.Close();
    //       // GridView1.DataSource();
    //        GridView1.DataBind();
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write(ex.Message);
    //    }
    //}
}