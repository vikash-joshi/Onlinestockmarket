using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Web.UI.HtmlControls;
public partial class aflrmweb_success : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(Session["username1"]!=null)
        {
            string on=Request.Form["productinfo"];
            string p=Request.Form["amount"];
string em=Request.Form["email"];
string nm=Request.Form["firstname"];
string qty=Request.Form["lastname"];

string txd=Request.Form["txnid"];
            double p1;
         double q=Convert.ToDouble(qty);
            double a=Convert.ToDouble(p);
            p1=a/q;
            string stat;
            stat = "successfull";
            SqlConnection con= new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
            string ins="insert into orders(oname,txsid,email,price,qty,uname,totalamt,status,orderdate)values('" + on + "','" + txd + "','" + em + "','" +p1.ToString() + "','"+qty+"','"+nm+"','"+p+"','"+stat+"','"+DateTime.Now.ToString()+"')";
            SqlCommand com= new SqlCommand(ins,con);
            con.Open();
            com.ExecuteNonQuery();
            upd();
            using (MailMessage mm = new MailMessage("vikashjoshi1651998@gmail.com",Request.Form["email"]))
        {
            string d = DateTime.Now.ToString();


            mm.Subject = "Your order successfull";
            string body = "transaction Id:"+txd+"<br> company name"+on+"<br>";
            body += "<br /><br />Thanks for placing order";
            body += "<br />"+d;
          

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
            con.Close();
            Label1.Text = "your transaction is successfull" + txd;

        }

    }
    public void upd()
    {
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);

        con.Open();/*fetching the stored quantity*/
        
        string str = "select * from market where cname='" + Request.Form["productinfo"].ToString() + "'";

        SqlCommand com = new SqlCommand(str, con);

        SqlDataAdapter da = new SqlDataAdapter(com);

        DataSet ds = new DataSet();

        da.Fill(ds);


        string q = ds.Tables[0].Rows[0]["qty"].ToString();
        string nq = Request.Form["lastname"].ToString();
        int n = Convert.ToInt32(q) - Convert.ToInt32(nq);

        string ins = "update market set qty='" + n.ToString() + "' where cname='" + Request.Form["productinfo"].ToString() + "'";
        SqlCommand com1 = new SqlCommand(ins, con);
        com1.ExecuteNonQuery();
        con.Close();
        
    }
   
}

        
