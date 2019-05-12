using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        if (Session["username1"] != null)
        {
            Label1.Text = Session["username1"].ToString();
        }
        else
        {

            Response.Redirect("adminlogin.aspx");

        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Timeout = 15;
        Session.Abandon();

        Response.Redirect("adminlogin.aspx");


    }
}