using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using Microsoft.SqlServer;


namespace AMC_EGRS.admin
{
    public partial class Forgotform : System.Web.UI.Page
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
            
            Verifysectionw.Visible = false;
            AdVerBtn.Enabled = false;
        }
        protected void adminOtpSubmit_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("select admin_email from admin_master where admin_email=@em", con);
            cmd.Parameters.AddWithValue("@em", AdminFgEmail.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //take the value of textboax and compare with admin_email's inside database
                if (ds.Tables[0].Rows[0]["admin_email"].ToString() == AdminFgEmail.Text)
                {
                    Session["adminemail"] = AdminFgEmail.Text.ToString();
                    //if email matched with database then gerate 5 digit OTP with Random Method and send you that email address
                    Random r = new Random();
                    string otp = r.Next(10000, 99999).ToString();
                    Session["OTP"] = otp;

                    //pass msg to the mail
                    string msg = "your otp is " + otp;


                    if (GmailSender.SendMail(AdminFgEmail.Text, "otp", msg))
                    {
                    }
                    Response.Write("<script>alert('OTP Has been Successfully Sent to Your E-mail Address')</script>");
                    AdminFgEmail.Text = "";
                    forgotsection.Visible = false;
                    adminOtpSubmit.Enabled = false;
                    AdminFgEmail.Enabled = false;
                    ForgetPAsREQ.Enabled = false;
                    Verifysectionw.Visible = true;
                    AdVerBtn.Enabled = true;
                }   
            }
            else
            {
                Response.Write("<script>alert('Please Enter Your Email Associated with your account')</script>");
                AdminFgEmail.Text = "";

            }
            con.Close();
            //logic of generate 5 digit OTP
        }

        protected void AdVerBtn_Click(object sender, EventArgs e)
        {
            if (ADVerifyCode.Text == (Session["OTP"]).ToString())
            {
                //uif otp matched then send passsowrd to the mail
                mycon();
                cmd = new SqlCommand("select admin_password from admin_master", con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string password = ds.Tables[0].Rows[0]["admin_password"].ToString();
                    Session["adminpassword"] = password;
                    string msg = "Your password is " + password;
                }
                if (GmailSender.SendMail(Session["adminemail"].ToString(), "Your Password is here", Session["adminpassword"].ToString()))
                {

                }
                con.Close();
                Response.Write("<script>alert('Password has been sent to your email address')</script>");
                ADVerifyCode.Text = "";
                Response.Redirect("AdminLogin.aspx");
            }
            else
            {
                Response.Write("<script>alert('OTP DOES NOT MATCH')</script>");
                ADVerifyCode.Text = "";
                Verifysectionw.Visible = true;
                AdVerBtn.Enabled = true;
            }
            Verifysectionw.Visible = true;
            AdVerBtn.Enabled = true;
        }
    }
}