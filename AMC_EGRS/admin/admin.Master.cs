using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.SqlServer;


namespace AMC_EGRS.admin
{
    public partial class admin : System.Web.UI.MasterPage
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
            if (!Page.IsPostBack)
            {
                // Your code here
            }
            if (Session["admin"] != null)
            {
                //Response.Write("<script>alert('fireed')</script>");
                mycon();
                cmd = new SqlCommand("select Admin_name from admin_master where Admin_name=@an", con);
                cmd.Parameters.AddWithValue("@an", Session["admin"].ToString());
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Label1.Text = Session["admin"].ToString().ToLower();
                    AHNameLabel.Text = Session["admin"].ToString();
                }
                con.Close();

            }
            String activepage = Request.RawUrl;
            //dashboard page
            if (activepage.Contains("dashboard.aspx"))
            {
                dashboard.Attributes.Add("class", "active");

            }
            //All user page
            else if (activepage.Contains("alluser.aspx"))
            {
                alluser.Attributes.Add("class", "active");
                pageblocktitle.InnerText = "All Users";
                pageblocktitle.InnerHtml = "All Users";
                pageBlockTitleAtag.InnerText = "All Users";
                pageBlockTitleAtag.InnerHtml = "All Users";
            }
            //manage operator page
            //else if (activepage.Contains("manageoperator.aspx"))
            //{
            //    manop.Attributes.Add("class", "active");
            //    pageblocktitle.InnerText = "Manage Operator";
            //    pageblocktitle.InnerHtml = "Manage Operator";
            //    pageBlockTitleAtag.InnerText = "Manage Operator";
            //    pageBlockTitleAtag.InnerHtml = "Manage Operator";

            //}
            ////add operator page
            //else if (activepage.Contains("addoperator.aspx"))
            //{
            //    addop.Attributes.Add("class", "active");
            //    pageblocktitle.InnerText = "Add Operator";
            //    pageblocktitle.InnerHtml = "Add Operator";
            //    pageBlockTitleAtag.InnerText = "Add Operator";
            //    pageBlockTitleAtag.InnerHtml = "Add Operator s";
            //}
            ////manage department page
            //else if (activepage.Contains("managedepartment.aspx"))
            //{
            //    mandep.Attributes.Add("class", "active");
            //    pageblocktitle.InnerText = "Manage Department";
            //    pageblocktitle.InnerHtml = "Manage Department";
            //    pageBlockTitleAtag.InnerText = "Manage Department";
            //    pageBlockTitleAtag.InnerHtml = "Manage Department";
            //}
            //add department page
            else if (activepage.Contains("adddepartment.aspx"))
            {
                adddep.Attributes.Add("class", "active");
                pageblocktitle.InnerHtml = "Add Operator";
                pageBlockTitleAtag.InnerText = "Add Operator";
                pageBlockTitleAtag.InnerHtml = "Add Operator";
            }
            //manage zone page
            else if (activepage.Contains("managezone.aspx"))
            {
                manzone.Attributes.Add("class", "active");
                pageblocktitle.InnerText = "Manage Zone";
                pageblocktitle.InnerHtml = "Manage Zone";
                pageBlockTitleAtag.InnerText = "Manage Zone";
                pageBlockTitleAtag.InnerHtml = "Manage Zone";
            }
            //addzone page
            else if (activepage.Contains("addzone.aspx"))
            {
                addzone.Attributes.Add("class", "active");
                pageblocktitle.InnerText = "Add Zone";
                pageblocktitle.InnerHtml = "Add Zone";
                pageBlockTitleAtag.InnerText = "Add Zone";
                pageBlockTitleAtag.InnerHtml = "Add Zone";
            }
            //manage ward page
            else if (activepage.Contains("manageward.aspx"))
            {
                manward.Attributes.Add("class", "active");
                pageblocktitle.InnerText = "Manage Ward";
                pageblocktitle.InnerHtml = "Manage Ward";
                pageBlockTitleAtag.InnerText = "Manage Ward";
                pageBlockTitleAtag.InnerHtml = "Manage Ward";
            }
            //add ward page
            else if (activepage.Contains("addward.aspx"))
            {
                addward.Attributes.Add("class", "active");
                pageblocktitle.InnerText = "Add Ward";
                pageblocktitle.InnerHtml = "Add Ward";
                pageBlockTitleAtag.InnerText = "Add Ward";
                pageBlockTitleAtag.InnerHtml = "Add Ward";
            }
            //manage problemn page
            else if (activepage.Contains("manageproblems.aspx"))
            {
                manpro.Attributes.Add("class", "active");
                prolisttrigger.Attributes.Add("class", "pcoded-hasmenu pcoded-trigger");
                prolistultrigger.Style.Add("display", "block");
                pageblocktitle.InnerText = "Manage Problems";
                pageblocktitle.InnerHtml = "Manage Problems";
                pageBlockTitleAtag.InnerText = "Manage Problems";
                pageBlockTitleAtag.InnerHtml = "Manage Problems";
            }
            //add problem page
            else if (activepage.Contains("addproblems.aspx"))
            {
                addpro.Attributes.Add("class", "active");
                prolisttrigger.Attributes.Add("class", "pcoded-hasmenu pcoded-trigger");
                prolistultrigger.Style.Add("display", "block");
                pageblocktitle.InnerText = "Add Probelms";
                pageblocktitle.InnerHtml = "Add Probelms";
                pageBlockTitleAtag.InnerText = "Add Probelms";
                pageBlockTitleAtag.InnerHtml = "Add Probelms";
            }
            //complaint section link start here
            else if (activepage.Contains("allcomplaint.aspx"))
            {

                allcom.Attributes.Add("class", "active");
                comlisttrigger.Attributes.Add("class", "pcoded-hasmenu pcoded-trigger");
                comultrigger.Style.Add("display", "block");
                pageblocktitle.InnerText = "All Complaint";
                pageblocktitle.InnerHtml = "All Complaint";
                pageBlockTitleAtag.InnerText = "All Complaint";
                pageBlockTitleAtag.InnerHtml = "All Complaint";
            }
            else if (activepage.Contains("solvedcomplaint.aspx"))
            {
                solcom.Attributes.Add("class", "active");
                comlisttrigger.Attributes.Add("class", "pcoded-hasmenu pcoded-trigger");
                comultrigger.Style.Add("display", "block");
                pageblocktitle.InnerText = "Solved Complaint";
                pageblocktitle.InnerHtml = "Solved Complaint";
                pageBlockTitleAtag.InnerText = "Solved Complaint";
                pageBlockTitleAtag.InnerHtml = "Solved Complaint";
            }
            else if (activepage.Contains("ongoingcomplaint.aspx"))
            {
                oncom.Attributes.Add("class", "active");
                comlisttrigger.Attributes.Add("class", "pcoded-hasmenu pcoded-trigger");
                comultrigger.Style.Add("display", "block");
                pageblocktitle.InnerText = "Ongoing Complaint";
                pageblocktitle.InnerHtml = "Ongoing Complaint";
                pageBlockTitleAtag.InnerText = "Ongoing Complaint";
                pageBlockTitleAtag.InnerHtml = "Ongoing Complaint";
            }
            //close for some reason
            //else if (activepage.Contains("nopesolvedcomplaint.aspx"))
            //{
            //    nopescom.Attributes.Add("class", "active");
            //    comlisttrigger.Attributes.Add("class", "pcoded-hasmenu pcoded-trigger");
            //    comultrigger.Style.Add("display", "block");
            //}
            //feedback section
            else if (activepage.Contains("managefeedback.aspx"))
            {
                manfeed.Attributes.Add("class", "active");
                pageblocktitle.InnerText = "Manage Feedback";
                pageblocktitle.InnerHtml = "Manage Feedback";
                pageBlockTitleAtag.InnerText = "Manage Feedback";
                pageBlockTitleAtag.InnerHtml = "Manage Feedback";
            }
            //faq section
            else if (activepage.Contains("managefaq.aspx"))
            {
                manfaq.Attributes.Add("class", "active");
                pageblocktitle.InnerText = "Manage FAQ";
                pageblocktitle.InnerHtml = "Manage FAQ";
                pageBlockTitleAtag.InnerText = "Manage FAQ";
                pageBlockTitleAtag.InnerHtml = "Manage FAQ";
            }
            else if (activepage.Contains("addfaq.aspx"))
            {
                addfaq.Attributes.Add("class", "active");
                pageblocktitle.InnerText = "Add FAQ";
                pageblocktitle.InnerHtml = "Add FAQ";
                pageBlockTitleAtag.InnerText = "Add FAQ";
                pageBlockTitleAtag.InnerHtml = "Add FAQ";
            }

        }

        protected void AdLogout_Click(object sender, EventArgs e)
        {
            HttpCookie adminlogin = new HttpCookie("login");            
            adminlogin.Expires = System.DateTime.Now.AddDays(-7);
            Response.Cookies.Add(adminlogin);   
            Response.Redirect("AdminLogin.aspx");            
        }
    }
}