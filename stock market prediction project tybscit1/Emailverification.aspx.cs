using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class aflrmweb_Emailverification : System.Web.UI.Page
{
    string nam;
    protected void Page_Load(object sender, EventArgs e)
    {
        nam = Request.QueryString["me"].ToString();
        Response.Write(nam);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
        string sq = "select act from Usrdata where email='" + Request.QueryString["me"]+"'";
        conn.Open();



        SqlCommand comm = new SqlCommand(sq,conn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = comm;

        DataSet ds = new DataSet();
        da.Fill(ds);
        string actcd;
        if (ds.Tables[0].Rows.Count > 0)
        {
            actcd = ds.Tables[0].Rows[0]["act"].ToString();
            if (actcd == TextBox1.Text)
            {
                changestat();
                Label1.Text = "email verified success";
                Response.Redirect("insign.aspx");


            }
            else
            {
                Response.Write("Invalid activation code");
            }

        }
        conn.Close();


    }
    protected void changestat()
    {
        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
            string sq = "update Usrdata set status='verified' where email='" + Request.QueryString["me"] + "'";
            conn.Open();
            SqlCommand com = new SqlCommand(sq, conn);
            com.ExecuteNonQuery();
            conn.Close();
        }
        catch
        {
            throw;
        }


    }
}