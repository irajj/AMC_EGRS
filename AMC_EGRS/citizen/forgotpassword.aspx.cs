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
    public partial class WebForm13 : System.Web.UI.Page
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

        }

        protected void forgotbtn_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("select c_email from citizen_master where c_email=@em", con);
            cmd.Parameters.AddWithValue("@em", UserForgotEmail.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["c_email"].ToString() == UserForgotEmail.Text)
                {
                    string msg = "";
                    string fotp = "";
                    Random r = new Random();
                    fotp = r.Next(10000, 99999).ToString();
                    Session["forgototp"] = fotp;
                    msg = "<b><h3>Please Use this OTP to change your password </h3><b>" + fotp;
                    if (GmailSender.SendMail(UserForgotEmail.Text, "EGRS Team : OTP IS HERE", msg))
                    {
                        Response.Write("<script>alert('Otp Has been sent to your mail succesfully')</script>");
                        forgotpasswordpanel.Visible = false;
                        verifypanel.Visible = true;
                    }
                }
                else
                {
                    Response.Write("<script>alert('Entered E-mail address Does not associated with our Database..please try again')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Entered E-mail address Does not associated with our Database..please try again')</script>");
            }
            con.Close();

        }

        protected void verifyotp_Click(object sender, EventArgs e)
        {
            if (OTpusertxt.Text == Session["forgototp"].ToString())
            {
                Response.Write("<script>alert('Now..You are authorized person...you can change your password')</script>");
                forgotpasswordpanel.Visible = false;
                verifypanel.Visible = false;
                changepassword.Visible = true;
            }
            else
            {
                Response.Write("<script>alert('Please Enter OTP Which we just sent you in moment ago')</script>");
            }

        }

        protected void submitpassword_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("update citizen_master set c_password=@up where c_email=@ue",con);
            cmd.Parameters.AddWithValue("@up",userfgpassword.Text);
            cmd.Parameters.AddWithValue("@ue",UserForgotEmail.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);            
            cmd.ExecuteNonQuery();
            con.Close();
            string msg = "";
            msg = "The password for your EGRS Account: <b> " + UserForgotEmail.Text + "</b> was recently changed <br><br> Thank you <br> team EGRS";
            if (GmailSender.SendMail(UserForgotEmail.Text, "Team EGRS: Account Notification", msg))
            {                
                Response.Write("<script>alert('Your password Changed Sucessfully 🔥🔥🔥')</script>");
                Response.Redirect("signin.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please check your internet')</script>");

            }
        }

        protected void backbtn_Click(object sender, EventArgs e)
        {
            verifypanel.Visible = false;
            forgotpasswordpanel.Visible = true;

        }
    }
}