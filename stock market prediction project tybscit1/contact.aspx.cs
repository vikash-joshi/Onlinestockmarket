using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class contact : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
           

            
            string nm = "insert into Feedbackf values('"+DateTime.Now+"','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";


            SqlCommand com = new SqlCommand(nm, conn);
            int n;
            n =com.ExecuteNonQuery();
            if (n == 1)
            {
                emal();
                

                TextBox3.Text = ""; TextBox2.Text = ""; TextBox1.Text = ""; 
               string message = "Thanks For Your Valuable Feedback...!";
               Label1.Text = message;

                //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);

            }



            else
            {
                Label1.Text="";
                Label1.Text="Failure";
            }


        }
        catch (Exception exp)
        {

            Label1.Text = "";
            Label1.Text = "Failure"+exp.ToString();
        }
        finally
        {
            conn.Close();
        }



    }
    private void emal()
    {
        using (MailMessage mm = new MailMessage("vikashjoshi1651998@gmail.com", TextBox2.Text))
        {
            

            mm.Subject = "Feedback";
            string body = "Hello " + TextBox1.Text.Trim() + ",";
            body += "<br /><br />Thanks for your valuable feedback means a lot for us...";
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