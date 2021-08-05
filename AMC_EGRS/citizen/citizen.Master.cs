using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using Microsoft.SqlServer;
using System.Data;

namespace AMC_EGRS.citizen
{
    public partial class citizen : System.Web.UI.MasterPage
    {
        SqlConnection con;
        SqlCommand cmd;

        SqlDataAdapter da;
        DataSet ds;

        void mycon()
        {
            con = new SqlConnection(@"Data Source=DESKTOP-FT50E8I\SQLEXPRESS;Initial Catalog=AMC_COMPLAIN;Integrated Security=True");
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string profilename = Request.RawUrl;
                if (Session["user"] != null)
                {
                    ardown.Visible = true;
                    usersignsubmit.Visible = false;

                    if (profilename.Contains("signin.aspx") || profilename.Contains("regcom.aspx") || profilename.Contains("home.aspx") || profilename.Contains("contact.aspx") || profilename.Contains("faq.aspx") || profilename.Contains("home.aspx") || profilename.Contains("profile.aspx") || profilename.Contains("registration.aspx") || profilename.Contains("signup.aspx"))
                    {
                        mycon();
                        cmd = new SqlCommand("select c_name from citizen_master where c_email=@em", con);
                        cmd.Parameters.AddWithValue("@em", Session["user"].ToString());
                        da = new SqlDataAdapter(cmd);
                        ds = new DataSet();
                        da.Fill(ds);
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            string username = ds.Tables[0].Rows[0]["c_name"].ToString();
                            userwelcome.InnerHtml = username;
                            userwelcome.InnerText = username;
                        }
                        con.Close();

                    }

                }
                else
                {
                    userwelcome.InnerHtml = "";
                    userwelcome.InnerText = "";
                    ardown.Visible = false;
                    usersignsubmit.Visible = true;

                }
                if (Request.QueryString["hindilan"] == "HINDI")
                {
                    home.Text = "होम";
                    faq.Text = "अक्सर पूछे जाने वाले प्रश्न";
                    contact.Text = "संपर्क करें";
                    OffAbout.Text = "हमारे बारे में";
                    EGRSLAN.Text = "Extensive Grievance Redressal System";
                    cregis.Text = "<b>शिकायत पंजीकरण</b>";
                    c1on.Text = "<b>ऑनलाइन</b>";
                    c2em.Text = "<b>ईमेल के माध्यम से</b>";
                    c3ph.Text = "<b>फोन के माध्यम से</b>";
                    roc.Text = "<b>शिकायत फिर से खोलें</b>";
                    rocon.Text = "<b>ऑनलाइन</b>";
                    cs.Text = "<b>शिकायत की स्थिति</b>";
                    cson.Text = "<b>ऑनलाइन</b>";
                    cf.Text = "<b>नागरिक प्रतिक्रिया</b>";
                    cff.Text = "<b>प्रतिक्रिया</b>";
                    support.Text = "<b>सहायता</b>";
                    supab.Text = "<b>हमारे बारे में</b>";
                    supfaq.Text = "<b>सामान्य प्रश्नोत्तर</b>";
                    supcon.Text = "<b>संपर्क करें</b>";
                    officiallan.Text = "<b>भाषा चुनें</b>";
                    signlan.Text = "<b>साइन इन करें</ b>";
                }
            }
        }

        protected void userlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            ardown.Visible = false;
            usersignsubmit.Visible = true;
            Response.Redirect("home.aspx?Logout=User");
        }

        protected void HindiLang_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx?hindilan=HINDI");
        }

        protected void Englang_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx?englishlan=ENGLISH");

        }
    }
}