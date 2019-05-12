using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_managepost : System.Web.UI.Page
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
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int ro;
            ro = Convert.ToInt32(e.CommandArgument.ToString());
            string id = GridView1.Rows[ro].Cells[0].Text;
            string dt = GridView1.Rows[ro].Cells[1].Text;
            string nm = GridView1.Rows[ro].Cells[2].Text;
            string pt = GridView1.Rows[ro].Cells[3].Text;
            Label2.Text = id;

            Label3.Text = dt;
            Label4.Text = nm;
            Label5.Text = pt;
        }
    }
}