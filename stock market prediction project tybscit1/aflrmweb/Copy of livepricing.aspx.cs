using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;


public partial class aflrmweb_livepricing : System.Web.UI.Page
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
        /*
        double d = Convert.ToDouble(Label2.Text);
        double q = Convert.ToDouble(TextBox1.Text);
        double p = d * q;

        
        
   
        */
        //Generating transaction Id
        Random random = new Random();
        txnid.Value = (Convert.ToString(random.Next(1000000, 9999999)));
        txnid.Value = "stockpro" + txnid.Value.ToString();
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Timeout = 25;
        Session.Abandon();
        Response.Redirect("/stock market prediction project tybscit1/insign.aspx");




    }

    //Fetching the values from gridview on tables..
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int ro;
            ro = Convert.ToInt32(e.CommandArgument.ToString());
            string cp = GridView1.Rows[ro].Cells[0].Text;
            string cpname = GridView1.Rows[ro].Cells[2].Text;
            //double ccp = Convert.ToDouble(cp);

          
           // Label3.Text = GridView1.Rows[ro].Cells[5].Text;
            Label2.Text = cp;
            Label4.Text = cpname;
            

            





        }
    }
    /*
    protected void now()
    {
        string uname, email, phone;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
        string s = "select * from Usrdata where username='" + Session["username1"] + "'";

        SqlCommand com = new SqlCommand(s,conn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = com;
        DataSet ds = new DataSet();
        da.Fill(ds);

        uname = ds.Tables[0].Rows[0]["username"].ToString();
        email = ds.Tables[0].Rows[0]["email"].ToString();
        phone = ds.Tables[0].Rows[0]["phone"].ToString();

                conn.Close();

     
    }
     * */
    //sending values to payumoney website
    protected void Button2_Click(object sender, EventArgs e)
    {
        string uname, email, phone;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
        string s = "select * from Usrdata where username='" + Session["username1"] + "'";

        SqlCommand com = new SqlCommand(s, conn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = com;
        DataSet ds = new DataSet();
        da.Fill(ds);

        uname = ds.Tables[0].Rows[0]["username"].ToString();
        email = ds.Tables[0].Rows[0]["email"].ToString();
        phone = ds.Tables[0].Rows[0]["phone"].ToString();

        conn.Close();
        string p1 = Label4.Text;
        string q1 = TextBox1.Text;
        double d = Convert.ToDouble(p1.ToString());
        double q = Convert.ToDouble(q1.ToString());
        double p = d * q;


        //Double amount = Convert.ToDouble(Label4.Text);

        String text = key.Value.ToString() + "|" + txnid.Value.ToString() + "|" + p + "|" + Label2.Text + "|" + uname + "|" + email + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "||||||" + salt.Value.ToString();
        byte[] message = Encoding.UTF8.GetBytes(text);

        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] hashValue;
        SHA512Managed hashString = new SHA512Managed();
        string hex = "";
        hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }
        hash.Value = hex;

        System.Collections.Hashtable data = new System.Collections.Hashtable(); // adding values in gash table for data post
        data.Add("hash", hex.ToString());
        data.Add("txnid", txnid.Value);
        data.Add("key", key.Value);
        // string AmountForm = ;// eliminating trailing zeros

        data.Add("amount", p.ToString());
        data.Add("lastname", TextBox1.Text);
        data.Add("firstname", uname.ToString());
        data.Add("email", email.ToString());
        data.Add("phone", phone.ToString());
        data.Add("productinfo", Label2.Text);
        data.Add("udf1", "1");
        data.Add("udf2", "1");
        data.Add("udf3", "1");
        data.Add("udf4", "1");
        data.Add("udf5", "1");

        data.Add("surl", "http://localhost:16460/stock%20market%20prediction%20project%20tybscit1/aflrmweb/success.aspx");
        data.Add("furl", "http://localhost:16460/stock%20market%20prediction%20project%20tybscit1/aflrmweb/failure.aspx");

        data.Add("service_provider", "");


        
        string strForm = PreparePOSTForm("https://test.payu.in/_payment", data);
        Page.Controls.Add(new LiteralControl(strForm));


    
    }

    private string PreparePOSTForm(string url, System.Collections.Hashtable data)      // post form
    {
        //Set a name for the form
        string formID = "PostForm";
        //Build the form using the specified data to be posted.
        StringBuilder strForm = new StringBuilder();
        strForm.Append("<form id=\"" + formID + "\" name=\"" +
                       formID + "\" action=\"" + url +
                       "\" method=\"POST\">");

        foreach (System.Collections.DictionaryEntry key in data)
        {

            strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                           "\" value=\"" + key.Value + "\">");
        }


        strForm.Append("</form>");
        //Build the JavaScript which will do the Posting operation.
        StringBuilder strScript = new StringBuilder();
        strScript.Append("<script language='javascript'>");
        strScript.Append("var v" + formID + " = document." +
                         formID + ";");
        strScript.Append("v" + formID + ".submit();");
        strScript.Append("</script>");
        //Return the form and the script concatenated.
        //(The order is important, Form then JavaScript)
        return strForm.ToString() + strScript.ToString();
    }

   /* protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int n=Convert.ToInt32(TextBox1.Text);
        if (n >-1||n>=1)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }*/
}