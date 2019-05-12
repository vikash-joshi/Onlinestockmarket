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

public partial class aflrmweb_failure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username1"] != null)
        {
            string on = Request.Form["productinfo"];
            string p = Request.Form["amount"];
            string em = Request.Form["email"];
            string nm = Request.Form["firstname"];
            string qty = Request.Form["lastname"];

            string txd = Request.Form["txnid"];
            double p1;
            double q = Convert.ToDouble(qty);
            double a = Convert.ToDouble(p);
            p1 = a / q;
            string stat = "unsuccessfull";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
            string ins = "insert into orders(oname,txsid,email,price,qty,uname,totalamt,status,orderdate)values('" + on + "','" + txd + "','" + em + "','" + p1.ToString() + "','" + qty + "','" + nm + "','" + p + "','" + stat + "','"+DateTime.Now.ToString()+"')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            using (MailMessage mm = new MailMessage("vikashjoshi1651998@gmail.com", em))
            {
                string d = DateTime.Now.ToString();


                mm.Subject = "Your order unsuccessfull";
                string body = "transaction Id:" + txd + "<br> company name" + on + "<br>";
                body += "<br /><br />Thanks for placing order";
                body += "<br />" + d;


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


        }
    }
}