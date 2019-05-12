using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class resetpassword : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Random r1 = new Random();
        string actcode = r1.Next(100000, 999999).ToString();
        Label3.Text = actcode;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
        //string ins = "select * from Usrdata where email='" + TextBox1.Text + "'";

        // SqlCommand com = new SqlCommand();
        
            string uid = TextBox1.Text;

            con.Open();
            string qry = "select * from Usrdata where email='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            //int n = cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
       
           
            da.Fill(ds);
            con.Close();
            string em = ds.Tables[0].Rows[0]["email"].ToString();
            string pass = ds.Tables[0].Rows[0]["password"].ToString();
            Label5.Text = pass;
            con.Close();   
            //Label7.Text = em;

            if (em ==uid)
            {

                Label4.Text = "Code sent successfully";
                //Random r = new Random();
                //string actcode = r.Next(100000, 999999).ToString();

                using (MailMessage mm = new MailMessage("vikashjoshi1651998@gmail.com", TextBox1.Text))
                {
                    string d = DateTime.Now.ToString();


                    mm.Subject = "Fogotten Password";
                    string body = "welcome" + TextBox1.Text + "<br>your verification code is" + actcode;
                    body += "<br />" + d;
                    body += "<br /><br />";



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

            else
            {

                //Label.Text = ds.Tables[0].Rows[0]["email"].ToString();

                Label4.Text = "Email Has not been registered with us...!";



            }

        }
     


    }
    /*

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
           
        if (Label3.Text == TextBox2.Text)
        {
            if (Label5.Text != TextBox3.Text)
            {

                string upd = "update Usrdata set password='" + TextBox3.Text + "' where email='" + TextBox1.Text + "'";
                SqlCommand com = new SqlCommand(upd, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                Label4.Text = "Successfully updated password";
            }
            else
            {
                Label4.Text = "choose Password that has beed never used";
            }
           

        }
        else{
            Label4.Text = "error fro updating password try again later";


        }

        }*/
  