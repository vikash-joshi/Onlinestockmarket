using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aflrmweb_Orders : System.Web.UI.Page
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
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int ro;
            ro = Convert.ToInt32(e.CommandArgument.ToString());
            string id = GridView1.Rows[ro].Cells[1].Text;
            string un = GridView1.Rows[ro].Cells[2].Text;
            string ps = GridView1.Rows[ro].Cells[5].Text;
            string em = GridView1.Rows[ro].Cells[4].Text;
            //string ph = GridView1.Rows[ro].Cells[].Text;
            //string co = GridView1.Rows[ro].Cells[6].Text;
            Label2.Text = id;

            Label3.Text = un;
            TextBox1.Text= ps;
            Label5.Text = em;
            //Label6.Text = ph;
            //Label7.Text = co;



        }
}