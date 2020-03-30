using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Registration : System.Web.UI.Page
{
    DatabaseConnection myConnect = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void RegBtn_Click(object sender, EventArgs e)
    {

        string connect = myConnect.Connection();
        SqlConnection con = new SqlConnection(connect);

        try
        {
            con.Open();
            string query = "UserAccount_Insert";
            SqlParameter[] par = new SqlParameter[10];

            par[0] = new SqlParameter("@Title", dropTitle.SelectedValue);
            par[1] = new SqlParameter("@FirstName", txtFirst.Text);
            par[2] = new SqlParameter("@LastName", txtLast.Text);
            par[3] = new SqlParameter("@DateOfBirth", txtDOB.Text);
            par[4] = new SqlParameter("@Gender", dropGender.SelectedValue);
            par[5] = new SqlParameter("@MaritalStatus", dropStatus.SelectedValue);
            par[6] = new SqlParameter("@Email", txtEmail.Text);
            par[7] = new SqlParameter("@Mobile", txtMobile.Text);
            par[8] = new SqlParameter("@Username", txtUname.Text);
            par[9] = new SqlParameter("@Userpass", txtPword.Text);

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
            foreach(SqlParameter a in par)
            {
                cmd.Parameters.Add(a);
            }

            string UserID = Convert.ToString(cmd.ExecuteNonQuery());
            if(UserID.Length > 0)
            {
                lbReg.Text = "Account Created Successfully!!!!";
                clearFields();
                Response.Redirect("AccountDetails.aspx");
            }
            else
            {
                lbReg.Text = "All fields Required!!!";
            }
        }
        catch(Exception ex)
        {
            lbReg.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }

        //try
        //{
        //    if ((txtFirst.Text == "")||(txtLast.Text == "") ||(txtDOB.Text == "") ||(txtEmail.Text == "") ||(txtMobile.Text == "") ||(txtUname.Text == "") ||(txtPword.Text == ""))
        //    {
        //        lbReg.Visible = true;
        //        lbReg.Text = "All Fields Must Be Filled!!!!";
        //    }
        //    else
        //    {
        //        string title = dropTitle.SelectedIndex.ToString();
        //        string first = txtFirst.Text;
        //        string last = txtLast.Text;
        //        string dob = txtDOB.Text;
        //        string gender = dropGender.SelectedIndex.ToString();
        //        string status = dropStatus.SelectedIndex.ToString();
        //        string email = txtEmail.Text;
        //        string mobile = txtMobile.Text;
        //        string user = txtUname.Text;
        //        string pass = txtPword.Text;
        //        SqlConnection con = new SqlConnection(DbCon.Connection());
        //        con.Open();
        //        //string query = "insert into UserAccount values (@Title, @FirstName, @LastName, @DateOfBirth, @Gender, @MaritalStatus, @Email, @Mobile, @Username, @Userpass)";
        //        string query = "insert into UserAccount('Titke','FirstName','LastName','DateOfBirth','Gender','MaritalStatus','Email','Mobile','Username','Userpass')"
        //            + "values('" + title + "','" + first + "','" + last + "','" + dob + "','" + gender + "','" + status + "','" + email + "','" + mobile + "','" + user + "','" + pass + "')"; 
        //        SqlCommand cmd = new SqlCommand(query);
        //        //cmd.Parameters.AddWithValue("Title", dropTitle.SelectedIndex.ToString());
        //        //cmd.Parameters.AddWithValue("FirstName", txtFirst.Text);
        //        //cmd.Parameters.AddWithValue("LastName", txtLast.Text);
        //        //cmd.Parameters.AddWithValue("DateOfBirth", txtDOB.Text);
        //        //cmd.Parameters.AddWithValue("Gender", dropGender.SelectedIndex.ToString());
        //        //cmd.Parameters.AddWithValue("MaritalStatus", dropStatus.SelectedIndex.ToString());
        //        //cmd.Parameters.AddWithValue("Email", txtEmail.Text);
        //        //cmd.Parameters.AddWithValue("Mobile", txtMobile.Text);
        //        //cmd.Parameters.AddWithValue("Username", txtUname.Text);
        //        //cmd.Parameters.AddWithValue("Userpass", txtPword.Text);

        //        cmd.ExecuteNonQuery();
        //        lbReg.Visible = true;
        //        lbReg.Text = "Account Created Successfully!!";

        //        con.Close();
        //        clearFields();
        //        Response.Redirect("AccountDetails.aspx");
        //    }
        //}
        //catch(Exception ex)
        //{
        //    lbReg.Text = ex.ToString();
        //}
    }

    public void clearFields()
    {
        dropTitle.SelectedIndex = 0;
        txtFirst.Text = "";
        txtLast.Text = "";
        txtDOB.Text = "";
        dropGender.SelectedIndex = 0;
        dropStatus.SelectedIndex = 0;
        txtEmail.Text = "";
        txtMobile.Text = "";
        txtUname.Text = "";
        txtPword.Text = "";
    }

}