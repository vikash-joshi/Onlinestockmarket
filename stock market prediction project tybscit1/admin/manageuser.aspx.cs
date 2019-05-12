using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_manageuser : System.Web.UI.Page
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
            string un = GridView1.Rows[ro].Cells[1].Text;
            string ps = GridView1.Rows[ro].Cells[2].Text;
            string em = GridView1.Rows[ro].Cells[3].Text;
            string ph = GridView1.Rows[ro].Cells[4].Text;
            string co = GridView1.Rows[ro].Cells[5].Text;
            Label2.Text = id;

            Label3.Text = un;
            Label4.Text = ps;
            Label5.Text = em;
            Label6.Text = ph;
            Label7.Text = co;
    

        }
        

    }
   
}