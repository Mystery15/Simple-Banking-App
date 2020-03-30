using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DatabaseConnection
/// </summary>
public class DatabaseConnection
{
    public DatabaseConnection()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public string Connection()
    {
        string connLoc;
        //string config = "DbConnect";
        //connLoc = ConfigurationManager.ConnectionStrings[config].ConnectionString;

        connLoc = @"Data Source=.;Initial Catalog=MoneyBank;Integrated Security=true;";
        return connLoc;
    }

    public SqlConnection startConnection()
    {
        string connectionString;
        SqlConnection conn;
        connectionString = @"Data Source=.;Initial Catalog=MoneyBank;Integrated Security=true;";
        conn = new SqlConnection(connectionString);
        return conn;
        //conn.Open();
        // Response.Write("I am Connected");
        //conn.Close();
    }
}