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
using System.Text;

public partial class Register : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
     
        string actcode;
    //string activationCode = Guid.NewGuid().ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        namecheck();
    }
    private void SendActivationEmail()
    {
        using (MailMessage mm = new MailMessage("vikashjoshi1651998@gmail.com", TextBox3.Text))
        {
            string d = DateTime.Now.ToString();


            mm.Subject = "Thank you for your registration...!";
            string body = "welcome" + TextBox1.Text + "<br>your email verification code is" + actcode;
            body +="<br />"+d;
            body += "<br /><br />Please click the following link to activate your account";

         
     
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
    public void namecheck()
    {int numRecords;
       try
        { 
            Random r = new Random();
            actcode = r.Next(10000, 99999).ToString();
            string stat = "unverified";
            conn.Open();
               string sql = "SELECT COUNT(*) FROM Usrdata WHERE email = '"+TextBox3.Text+"'";
        SqlCommand com = new SqlCommand(sql, conn);
        numRecords = (int)com.ExecuteScalar();

        if (numRecords == 0)
        {

            string nm = "insert into Usrdata values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + actcode + "','" + stat + "')";


            SqlCommand co1= new SqlCommand(nm, conn);
            int n;
            n = Convert.ToInt32(co1.ExecuteNonQuery());
            if (n == 1)
            {
                Label1.Text = "Registration successfull & email verification mail sent...!";
                SendActivationEmail();
                               Response.Redirect("Emailverification.aspx?me=" + TextBox3.Text);

                TextBox3.Text = ""; TextBox2.Text = ""; TextBox1.Text = ""; TextBox4.Text = ""; TextBox5.Text = "";
                Label1.Text = "";


            }

            else
            {

                Label1.Text = "";
                Label1.Text = "Failure";
            }
        }
        else
        {
            Label1.Text = "Email is Already Registered with us..!";

        }




        }
        catch (Exception exp)
        {

            Label1.Text = "";
            Label1.Text = "Failure" + exp.ToString();
        }
        finally
        {
            conn.Close();
        }

    }
}