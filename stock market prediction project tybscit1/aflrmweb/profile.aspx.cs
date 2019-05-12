using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class aflrmweb_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
    SqlCommand com;
    SqlDataAdapter sda;
    string str;
       
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
        con.Open();

        str = "select * from Usrdata where username='" + Session["username1"] + "'";

        com = new SqlCommand(str, con);

        SqlDataAdapter da = new SqlDataAdapter(com);

        DataSet ds = new DataSet();

        da.Fill(ds);


        Label3.Text = ds.Tables[0].Rows[0]["password"].ToString();

        Label4.Text = ds.Tables[0].Rows[0]["email"].ToString();




        Label2.Text = Session["username1"].ToString();
        Label5.Text = ds.Tables[0].Rows[0]["country"].ToString();

        Label6.Text = ds.Tables[0].Rows[0]["phone"].ToString();

      

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Timeout = 25;
        Session.Abandon();
        Response.Redirect("/stock market prediction project tybscit1/insign.aspx");
    
            
        

    }
    
}