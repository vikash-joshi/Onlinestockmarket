using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net;


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




    }/*
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            String dateofcomment, nm;
            int n;
            dateofcomment = DateTime.Now.ToString();
            nm = Session["username1"].ToString();
            String query = "insert into stockpost(pdate,pname,post) values('" + dateofcomment + "','" + nm + "','" + TextBox1.Text + "')";
            String mycon = @"Data Source=MY-BUDDY\SQLEXPRESS;Initial Catalog=stockmarket;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(mycon);
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
      * */
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
            if (e.CommandName == "Select")
            {
                int ro;
                ro = Convert.ToInt32(e.CommandArgument.ToString());
                string id = GridView1.Rows[ro].Cells[0].Text;
                string un = GridView1.Rows[ro].Cells[1].Text;
                string ps = GridView1.Rows[ro].Cells[2].Text;
                Label2.Text = id;

                TextBox1.Text = ps;
                Label7.Text = TextBox1.Text;
                Label5.Text = un;
              



            }
        }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qwe;
        
  
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);

        con.Open();/*fetching the stored quantity*/

        string str = "select * from orders where oname='"+Label2.Text+ "'";

        SqlCommand com = new SqlCommand(str, con);
        SqlDataAdapter sqlDa = new SqlDataAdapter(com);
        DataSet dt = new DataSet();

        sqlDa.Fill(dt);
   //retring the gridview qty minus from userdef textbox va;lue
       int n1 = Convert.ToInt32(Label7.Text) -Convert.ToInt32(TextBox1.Text);
  
          string sel="select * from market where cname='"+Label2.Text+"'";
           SqlCommand cmd= new SqlCommand(sel,con);
           SqlDataAdapter q1we = new SqlDataAdapter(cmd);
           //DataSet dt1 = new DataSet();
           DataTable dt1 = new DataTable();
           q1we.Fill(dt1);
           if (dt1.Rows.Count > 0)
           {
               Label8.Text = dt1.Rows[0]["qty"].ToString();
           }
            
           Label9.Text = Label8.Text;
          Label9.Text = (Convert.ToInt16(Label8.Text) + Convert.ToInt16(TextBox1.Text)).ToString();
        
          
       if (n1 == 0)//if the user sold all his stock then this will work.!Delete the entry from user table and update the main market table
       {
          string del = "delete from orders where oname='" + Label2.Text + "' and uname='"+Session["username1"]+"'"; 
           string ins = "update market set qty='" + Label9.Text + "' where cname='" + Label2.Text + "'";
           SqlCommand com1 = new SqlCommand(ins, con);
          
          SqlCommand com2 = new SqlCommand(del, con);
           int n2 = com1.ExecuteNonQuery();
         int n3 = com2.ExecuteNonQuery();
         if (n2 == 1 || n3 == 1)
         {

             Label9.Text = "successfully sold";
             emal();
         }
         else
         {

             Label9.Text = "Cant be sold";

         }
         
          
       }
       else if (n1 > 0) ///if the user sold some qtyof stock then this will work update the both table
       {

           string ins = "update orders set qty='" + n1.ToString() + "' where oname='" + Label2.Text + "' and uname='" + Session["username1"] + "'";
           string ins1 = "update market set qty='" + Label9.Text + "' where cname='" + Label2.Text + "'";
           SqlCommand com1 = new SqlCommand(ins, con);
           SqlCommand com2 = new SqlCommand(ins1, con);

           int n4=com1.ExecuteNonQuery();
           int n5=com2.ExecuteNonQuery();
           if (n4 == 1 && n5 == 1)
           {
               Label9.Text = "";
               Label9.Text = "sucess";
               emal();
           }
       }
       else
       {
           Label9.Text = "";
          Label9.Text="problem try again later";
       }
       
       
        con.Close();
        
    }

    private void emal()
    {
        string s = Label2.Text;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
        conn.Open();
        string sel = "select email from Usrdata where username='" + Session["username1"] + "'";
        SqlCommand com1 = new SqlCommand(sel, conn);
        SqlDataAdapter ad = new SqlDataAdapter(com1);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        string em = ds.Tables[0].Rows[0]["email"].ToString(); conn.Close();
        Label9.Text = em;
        using (MailMessage mm = new MailMessage("vikashjoshi1651998@gmail.com", em))
        {
            string d = DateTime.Now.ToString();
           // string l = Dns.GetHostName();
            //string myIP = Dns.GetHostByName(l).AddressList[0].ToString();
            mm.Subject = "Your Stock Sold successfully...!";
            string body = "hello" + Session["username1"] + ",";
            body += "<br /><br />stock sold successfully";
            body += "<br />" + d;
            body += "Company Name" +s;


            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("vikashjoshi1651998@gmail.com", "password123@");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
        }
    
    }
  
}