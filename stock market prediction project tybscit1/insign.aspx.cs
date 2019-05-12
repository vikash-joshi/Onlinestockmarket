using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Sockets;
public partial class insign : System.Web.UI.Page
{

    String uname, name;
    String pass;
       
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
        string sel = "select * from Usrdata where email='"+TextBox1.Text+"'";
        conn.Open();

        SqlCommand cmd = new SqlCommand(sel, conn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);

        uname = ds.Tables[0].Rows[0]["email"].ToString();
        pass = ds.Tables[0].Rows[0]["password"].ToString();
        name = ds.Tables[0].Rows[0]["username"].ToString();
        string act=ds.Tables[0].Rows[0]["status"].ToString();
        conn.Close();
        Response.Write(uname);
        if(uname==TextBox1.Text && pass==TextBox2.Text)
               {
                   if (act == "verified")
                   {


                       Session["username1"] = name;
                      // emal();

                       Response.Redirect("aflrmweb/profile.aspx");
                   }
                   else
                   {
                       Response.Write("email is not verified.");
                       Response.Redirect("Emailverification.aspx");

                   }

        }

        else
        {
            Response.Write("Username Or Password Mismatch");

           

        }
    }
    /*
    private void emal()
    {
        using (MailMessage mm = new MailMessage("vikashjoshi1651998@gmail.com", TextBox1.Text))
        {
            string d = DateTime.Now.ToString();
            string l = Dns.GetHostName();
            string myIP = Dns.GetHostByName(l).AddressList[0].ToString(); 
            mm.Subject = "Account Login recently";
            string body = "Welcome again " + name + ",";
            body += "<br /><br />Thanks";
            body += "<br />"+d;
            body += "ip address is:-"+myIP;
          

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

    }*/
}