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
    public partial class WebForm10 : System.Web.UI.Page
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
        void fillward()
        {
            mycon();
            cmd = new SqlCommand("select * from ward_master", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            dropward2.DataSource = ds;
            dropward2.DataTextField = "ward_name";
            dropward2.DataValueField = "ward_id";
            dropward2.DataBind();
            dropward2.Items.Insert(0, "---select ward---");
            dropward2.Items[0].Value = "0";
            con.Close();
        }
        void fillpro()
        {
            mycon();
            cmd = new SqlCommand("select * from problems_master", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            droppro2.DataSource = ds;
            droppro2.DataTextField = "problem_name";
            droppro2.DataValueField = "pro_id";
            droppro2.DataBind();
            droppro2.Items.Insert(0, "---select problem---");
            droppro2.Items[0].Value = "0";
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] != null)
                {
                    UserLoginpanel.Visible = false;
                    complaintpanel.Visible = true;
                }
            }
            fillward();
            fillpro();
        }

        protected void usrsubmit_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("insert into complaint_master(cward,cproblem,cpname,cpno,cpemail,cpaddress,ctitle,cimg,cuniqueno,cstatus) values(@cward,@cpro,@cpname,@cpno,@cpemail,@cpaddress,@ctitle,@cimg,@cuniqueno,@cstatus)", con);
            cmd.Parameters.AddWithValue("@cward", dropward2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@cpro", droppro2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@cpname", txtname.Text);
            cmd.Parameters.AddWithValue("@cpno", txtcontno.Text);
            cmd.Parameters.AddWithValue("@cpemail", txtemail.Text);
            cmd.Parameters.AddWithValue("cpaddress", txtaddress.Text);
            cmd.Parameters.AddWithValue("@ctitle", Txttitle.Text);
            string path = "";
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/complaintimages/" + FileUpload1.FileName));
                path = "~/complaintimages/" + FileUpload1.FileName;
            }
            cmd.Parameters.AddWithValue("@cimg", path);
            //store complaint number 
            Double UniqueComNumber;
            Random cr = new Random(); //create random method
            UniqueComNumber = Convert.ToDouble(System.DateTime.Now.ToString("yyyyMMdd") + cr.Next(000, 999).ToString());
            cmd.Parameters.AddWithValue("@cuniqueno", Convert.ToString(UniqueComNumber));
            string complaintstatus = "PANDING";
            cmd.Parameters.AddWithValue("@cstatus", complaintstatus.ToString());
            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Write("<script>alert('')</script>");
            //Response.Write("<Script>alert('Complaint Registered Successfully Please Check you email ');window.location.href='comstatus.aspx';</Script>");
            string subject = "";
            //subject = "Hey" + txtname.Text + "<br> Your complaint has been successfully registered and your Complaint Number " + Convert.ToString(UniqueComNumber) + "You can use this ticket nunber to follow up the status of your complaint <br> Thank you in advance for your patience! <br> Have a Great day! <br> Team Egrs";
            //subject = "Hey" + txtname.Text + "<br> Your complaint has been successfully registered and Your Complaint Number <b>" + Convert.ToString(UniqueComNumber) + "</b> You can use this nunber to follow up the status of your complaint <br> <br><br>Thank you in advance for your patience! <br> Have a Great day! 😃😃 <br> Team Egrs";
            subject = "Hey " + txtname.Text + "👋👋👋<br><br>“ We Are extremely sorry for the problems you’ve been facing with our Services. we Are going to make sure that we get this taken care of today”. <br><br> Your complaint has been successfully registered and Your Complaint Number <b>" + Convert.ToString(UniqueComNumber) + "</b> You can use this Number to follow up the status of your complaint <br> <br><br>Thank you in advance for your patience! <br> Have a Great day! 😃😃 <br> Team Egrs";
            if (GmailSender.SendMail(txtemail.Text, "EGRS COMPLAINT DEPARTMENT", subject))
            {
                Response.Write(@"<script language='javascript'>alert('Complaint Registered Successfully 🙌🙌🙌 : \n" + "Please Check you E-Mail" + " .');window.location.href='onlinecomstatus.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Please COntact Your Network Oprator')</script>");
            }
        }

        protected void without_login_Click(object sender, EventArgs e)
        {
            UserLoginpanel.Visible = false;
            complaintpanel.Visible = true;
        }
        protected void signinbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx?regcom=user");
        }
    }
}