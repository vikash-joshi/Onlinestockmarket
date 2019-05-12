using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class aflrmweb_market : System.Web.UI.Page
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






    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = DropDownList1.SelectedValue.ToString();
        if (s == "TCS")
        {
            Label2.Text = "Tata Consultancy Services Limited";
            Label3.Text="Technology";
            Label4.Text="Information Technology Services";
            Label6.Text="India";
            Label8.Text="+91 22 6778 9595";
            Label7.Text = "4,17,929";
            Label5.Text = "<a href='http://www.tcs.com'>https://www.tcs.com</a>";
            Label9.Text = "<p>Tata Consultancy Services Limited provides information technology (IT) and IT enabled services worldwide. The company offers CHROMA, a cloud-based talent management solution that enables organizations to drive transformational employee experiences; ignio, a cognitive automation system; iON, an assessment solution; TAP, a cloud solution, including TAP contract management, purchasing, accounts payable, and supplier management solutions; and TCS MasterCraft, a platform to automate and manage IT processes. It also provides customer intelligence and insight solutions to deliver personalized retail, banking, and communications experiences; Intelligent Urban Exchange, an enterprise software to accelerate smart city transportation, water, and energy programs for cities; OPTUMERA, a digital merchandising suite; TCS BaNCS, an insurance platform; and Jile, an agile software lifecycle delivery platform. In addition, the company offers advanced drug development and connected intelligent platforms; ERP on cloud platform that provides cloud-based solutions for enterprise operations; HOBS, a suite of hosted OSS/BSS applications and pre-modeled business processes; and TCS Cloud Plus solutions. Further, it provides quality engineering, business operations, consulting and systems integration, engineering, technology operation, and interactive services; and artificial intelligence, big data, cloud, cyber security, and Internet of Things technologies. The company serves banking, financial, and public services; consumer goods and distribution, insurance, life sciences and healthcare, manufacturing, retail, hi-tech, travel, transportation, and hospitality industries; communications, media, and technology industries; and energy, resource, and utility industries. The company has partnerships with Alcatel-Lucent Enterprise, Intel Corporation, and SAP. The company was founded in 1968 and is based in Mumbai, India. Tata Consultancy Services Limited is a subsidiary of Tata Sons Limited.</p>";

            //  get all lines of csv file
            string[] str = File.ReadAllLines(Server.MapPath("TCS.csv"));

            // create new datatable
            DataTable dt = new DataTable();

            // get the column header means first line
            string[] temp = str[0].Split(',');

            // creates columns of gridview as per the header name
            foreach (string t in temp)
            {
                dt.Columns.Add(t, typeof(string));
            }

            // now retrive the record from second line and add it to datatable
            for (int i = 1; i < str.Length; i++)
            {
                string[] t = str[i].Split(',');
                dt.Rows.Add(t);

            }

            // assign gridview datasource property by datatable
            GridView1.DataSource = dt;

            // bind the gridview
            GridView1.DataBind();
            Label10.Text = "1,23,10,40,000";
            Label22.Text = "69,09,60,000";
            Label23.Text = "54,00,80,000";
            Label24.Text="1,17,96,60,000";
            Label25.Text="1,08,64,60,000";
            Label26.Text = "94,64,84,100";
            Label27.Text="64,42,90,000";
            Label28.Text="55,34,80,000";
            Label29.Text = "68,58,47,800";
            Label30.Text="53,53,70,000";
           Label31.Text="53,29,80,000";
           Label32.Text = "26,06,36,300";
            

        }

        else if (s == "INFOSYS")
        {
            Label2.Text = "Infosys Limited";
            Label3.Text = "Technology";
            Label4.Text = "Information Technology Services";
            Label6.Text = "India";
            Label5.Text = "<a href='http://www.infosys.com'>https://www.infosys.com</a>";
            
            Label8.Text = "+91 80 2852 0261";
            Label7.Text = "2,04,107";
            Label9.Text = "Infosys Limited, together with its subsidiaries, provides consulting, technology, and outsourcing services in North America, Europe, India, and internationally. It provides business information technology services, including application development and maintenance, independent validation, infrastructure management, and business process management services, as well as engineering services, such as engineering and life cycle solutions; and consulting and systems integration services comprising consulting, enterprise solutions, systems integration, and advanced technologies. The company's products include Finacle, a banking solution that provides analytics, core banking, consumer e-banking, corporate e-banking, Islamic banking, mobile banking, origination, payments, SME enable, treasury, wealth management, and youth banking solutions. Its products also comprise Infosys Nia, a knowledge-based AI platform; Infosys Information Platform, an analytics platform that enables to get insights from various data sources for decisions across industries; and AssistEdge, CreditFinanceEdge, ProcureEdge, and TradeEdge that are cloud-hosted business platforms, as well as analytics, cloud, and digital transformation services. The company serves clients in the financial services, life sciences, healthcare and insurance, manufacturing, retail, consumer packaged goods and logistics, hi-tech, communications, services, utilities, resources, energy, and other industries. The company was formerly known as Infosys Technologies Limited and changed its name to Infosys Limited in June 2011. Infosys Limited was founded in 1981 and is headquartered in Bengaluru, India.";

            //  get all lines of csv file
            string[] str = File.ReadAllLines(Server.MapPath("INFOSYS.csv"));

            // create new datatable
            DataTable dt = new DataTable();

            // get the column header means first line
            string[] temp = str[0].Split(',');

            // creates columns of gridview as per the header name
            foreach (string t in temp)
            {
                dt.Columns.Add(t, typeof(string));
            }

            // now retrive the record from second line and add it to datatable
            for (int i = 1; i < str.Length; i++)
            {
                string[] t = str[i].Split(',');
                dt.Rows.Add(t);

            }

            // assign gridview datasource property by datatable
            GridView1.DataSource = dt;

            // bind the gridview
            GridView1.DataBind();
            Label10.Text = "1,09,39,000";
            Label22.Text = "71,28,000";
            Label23.Text = "38,11,000";
            		

            Label24.Text = "1,02,08,000";
            Label25.Text = "95,01,000";
            Label26.Text = "87,11,000";
            Label27.Text = "64,42,90,000";
            Label28.Text = "5,34,80,000";
            Label29.Text = "58,47,800";
            Label30.Text = "3,53,70,000";
            Label31.Text = "3,29,80,000";
            Label32.Text = "6,06,36,300";
            Label9.Text = "Infosys Limited, together with its subsidiaries, provides consulting, technology, and outsourcing services in North America, Europe, India, and internationally. It provides business information technology services, including application development and maintenance, independent validation, infrastructure management, and business process management services, as well as engineering services, such as engineering and life cycle solutions; and consulting and systems integration services comprising consulting, enterprise solutions, systems integration, and advanced technologies. The company's products include Finacle, a banking solution that provides analytics, core banking, consumer e-banking, corporate e-banking, Islamic banking, mobile banking, origination, payments, SME enable, treasury, wealth management, and youth banking solutions. Its products also comprise Infosys Nia, a knowledge-based AI platform; Infosys Information Platform, an analytics platform that enables to get insights from various data sources for decisions across industries; and AssistEdge, CreditFinanceEdge, ProcureEdge, and TradeEdge that are cloud-hosted business platforms, as well as analytics, cloud, and digital transformation services. The company serves clients in the financial services, life sciences, healthcare and insurance, manufacturing, retail, consumer packaged goods and logistics, hi-tech, communications, services, utilities, resources, energy, and other industries. The company was formerly known as Infosys Technologies Limited and changed its name to Infosys Limited in June 2011. Infosys Limited was founded in 1981 and is headquartered in Bengaluru, India.";
 
        }
        else if (s == "TECH MAHINDRA")
        {
            Label2.Text = s;
            Label3.Text = "Technology";
            Label4.Text = "Information Technology Services";
            Label6.Text = "India";
           
            Label5.Text = "7.789T";
            Label8.Text = "1,41,607";
            Label7.Text = "2,123.1";
            //  get all lines of csv file
            string[] str = File.ReadAllLines(Server.MapPath("TECHMAHINDRA.csv"));

            // create new datatable
            DataTable dt = new DataTable();

            // get the column header means first line
            string[] temp = str[0].Split(',');

            // creates columns of gridview as per the header name
            foreach (string t in temp)
            {
                dt.Columns.Add(t, typeof(string));
            }

            // now retrive the record from second line and add it to datatable
            for (int i = 1; i < str.Length; i++)
            {
                string[] t = str[i].Split(',');
                dt.Rows.Add(t);

            }

            // assign gridview datasource property by datatable
            GridView1.DataSource = dt;

            // bind the gridview
            GridView1.DataBind();
            Label10.Text = "1,23,10,40,000";
            Label22.Text = "69,09,60,000";
            Label23.Text = "54,00,80,000";
            Label24.Text = "1,17,96,60,000";
            Label25.Text = "1,08,64,60,000";
            Label26.Text = "94,64,84,100";
            Label27.Text = "64,42,90,000";
            Label28.Text = "55,34,80,000";
            Label29.Text = "68,58,47,800";
            Label30.Text = "53,53,70,000";
            Label31.Text = "53,29,80,000";
            Label32.Text = "26,06,36,300";
            Label9.Text = "Tech Mahindra Limited, together with its subsidiaries, provides consulting, technology, and outsourcing services in North America, Europe, India, and internationally. It provides business information technology services, including application development and maintenance, independent validation, infrastructure management, and business process management services, as well as engineering services, such as engineering and life cycle solutions; and consulting and systems integration services comprising consulting, enterprise solutions, systems integration, and advanced technologies. The company's products include Finacle, a banking solution that provides analytics, core banking, consumer e-banking, corporate e-banking, Islamic banking, mobile banking, origination, payments, SME enable, treasury, wealth management, and youth banking solutions. Its products also comprise Infosys Nia, a knowledge-based AI platform; Infosys Information Platform, an analytics platform that enables to get insights from various data sources for decisions across industries; and AssistEdge, CreditFinanceEdge, ProcureEdge, and TradeEdge that are cloud-hosted business platforms, as well as analytics, cloud, and digital transformation services. The company serves clients in the financial services, life sciences, healthcare and insurance, manufacturing, retail, consumer packaged goods and logistics, hi-tech, communications, services, utilities, resources, energy, and other industries. The company was formerly known as Infosys Technologies Limited and changed its name to Infosys Limited in June 2011. Infosys Limited was founded in 1981 and is headquartered in Bengaluru, India.";
            

        }
        else if (s == "WIPRO")
        {
            Label2.Text = s;
             Label5.Text = "7.789T";
             Label3.Text = "Technology";
             Label4.Text = "Information Technology Services";
             Label6.Text = "India";
             Label8.Text = "1,41,607";
            Label7.Text = "2,123.1";
            //  get all lines of csv file
            string[] str = File.ReadAllLines(Server.MapPath("WIPRO.csv"));

            // create new datatable
            DataTable dt = new DataTable();

            // get the column header means first line
            string[] temp = str[0].Split(',');

            // creates columns of gridview as per the header name
            foreach (string t in temp)
            {
                dt.Columns.Add(t, typeof(string));
            }

            // now retrive the record from second line and add it to datatable
            for (int i = 1; i < str.Length; i++)
            {
                string[] t = str[i].Split(',');
                dt.Rows.Add(t);

            }

            // assign gridview datasource property by datatable
            GridView1.DataSource = dt;

            // bind the gridview
            GridView1.DataBind();
            Label10.Text = "1,23,10,40,000";
            Label22.Text = "69,09,60,000";
            Label23.Text = "54,00,80,000";
            Label24.Text = "1,17,96,60,000";
            Label25.Text = "1,08,64,60,000";
            Label26.Text = "94,64,84,100";
            Label27.Text = "64,42,90,000";
            Label28.Text = "55,34,80,000";
            Label29.Text = "68,58,47,800";
            Label30.Text = "53,53,70,000";
            Label31.Text = "53,29,80,000";
            Label32.Text = "26,06,36,300";
            Label9.Text = "Wipro Limited, together with its subsidiaries, provides consulting, technology, and outsourcing services in North America, Europe, India, and internationally. It provides business information technology services, including application development and maintenance, independent validation, infrastructure management, and business process management services, as well as engineering services, such as engineering and life cycle solutions; and consulting and systems integration services comprising consulting, enterprise solutions, systems integration, and advanced technologies. The company's products include Finacle, a banking solution that provides analytics, core banking, consumer e-banking, corporate e-banking, Islamic banking, mobile banking, origination, payments, SME enable, treasury, wealth management, and youth banking solutions. Its products also comprise Infosys Nia, a knowledge-based AI platform; Infosys Information Platform, an analytics platform that enables to get insights from various data sources for decisions across industries; and AssistEdge, CreditFinanceEdge, ProcureEdge, and TradeEdge that are cloud-hosted business platforms, as well as analytics, cloud, and digital transformation services. The company serves clients in the financial services, life sciences, healthcare and insurance, manufacturing, retail, consumer packaged goods and logistics, hi-tech, communications, services, utilities, resources, energy, and other industries. The company was formerly known as Infosys Technologies Limited and changed its name to Infosys Limited in June 2011. Infosys Limited was founded in 1981 and is headquartered in Bengaluru, India.";
            

        }
            
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        

    }
}