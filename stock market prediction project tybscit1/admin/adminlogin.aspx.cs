using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class admin_adminlogin : System.Web.UI.Page
{
    String uname, name;
    String pass;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
        string sel = "select * from admin";
        conn.Open();

        SqlCommand cmd = new SqlCommand(sel, conn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);

        uname = ds.Tables[0].Rows[0]["email"].ToString();
        pass = ds.Tables[0].Rows[0]["password"].ToString();
        name = ds.Tables[0].Rows[0]["name"].ToString();
        conn.Close();
        if (uname == TextBox1.Text && pass == TextBox2.Text)
        {

            Session["username1"] = name;

            Response.Redirect("manageuser.aspx");


        }

        else
        {
            Response.Write("Username Or Password Mismatch");

        }

    }
}