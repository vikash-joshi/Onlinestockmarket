using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net;
using System.Net.Mail;


public partial class aflrmweb_profile : System.Web.UI.Page
{

  
    string em;
       
    protected void Page_Load(object sender, EventArgs e)
    {   

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        

    }
    protected void Button2_Click(object sender, EventArgs e)        //update command and send email to user for password updation.
    {
     
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
        SqlCommand com;
        string str;
   
        con.Open();

            str = "update Usrdata set password='" + TextBox2.Text + "' where username='" + Session["username1"] + "'";
            com = new SqlCommand(str, con);
            com.ExecuteNonQuery();
        
        
            pcm();
            Label2.Text = "Success password updated.";
            con.Close();



        
        
    }
   
    protected void pcm() //sent mail to user
    {
        string gm = "vikashjoshi1651998@gmail.com";

        using (MailMessage mm = new MailMessage(gm,em ))
        {
            string d = DateTime.Now.ToString();


            mm.Subject = "Recent Account Activity";
            string body = "Hello" + Session["username1"] + ",";
            body += "<br /><br />Your Passwrod has been changed ";
            body += "<br /> click here to check<a href='http://localhost:50596/stock%20market%20prediction%20project%20tybscit1/insign.aspx'></a>" + d
                ;
            body += "password is:" + TextBox2.Text;
           

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