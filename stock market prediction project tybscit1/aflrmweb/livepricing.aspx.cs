using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aflrmweb_livepricing : System.Web.UI.Page
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
}