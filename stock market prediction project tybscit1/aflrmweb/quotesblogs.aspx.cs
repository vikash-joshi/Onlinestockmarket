using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class aflrmweb_quotesblogs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username1"] != null)
        {
            Label1.Text = Session["username1"].ToString();


        }
        else
        {

            Response.Redirect("/stock market prediction project tybscit1/insign.aspx");

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Timeout = 25;
        Session.Abandon();
        Response.Redirect("/stock market prediction project tybscit1/insign.aspx");




    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            String dateofcomment, nm;
            int n;
            dateofcomment = DateTime.Now.ToString();
            nm = Session["username1"].ToString();
            String query = "insert into stockpost(pdate,pname,post) values('" + dateofcomment + "','" + nm + "','" + TextBox1.Text + "')";
           // String mycon = @"Data Source=.\SQLEXPRESS;AttachDbFilename='C:\Users\user\Desktop\stock market prediction project tybscit1\App_Data\stockmarket.mdf';Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            n = Convert.ToInt32(cmd.ExecuteNonQuery());
            if (n == 1)
            {
                Label3.Text = "Successfully posted...!";
                TextBox1.Text = "";
            }
            else
            {
                Label3.Text = "";
                Label3.Text = "error try again after some time.";
            }
            con.Close();
        }
        catch (Exception exp)
        {
            Response.Write("error" + exp.ToString());
        }
    }
}