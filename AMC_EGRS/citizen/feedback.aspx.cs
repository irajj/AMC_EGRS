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
    public partial class WebForm11 : System.Web.UI.Page
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

        protected void usrfeedsubmit_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("select cpemail,cuniqueno from complaint_master where cuniqueno=@cun and cpemail=@cem",con);
            cmd.Parameters.AddWithValue("@cun",usecomfeed.Text);
            cmd.Parameters.AddWithValue("@cem",usremailfeed.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count > 0)
            {
                mycon();
                cmd = new SqlCommand("insert into feedback_master values(@femail,@fcomnumber,@fcategory,@fremarks)", con);
                cmd.Parameters.AddWithValue("@femail",usremailfeed.Text);
                cmd.Parameters.AddWithValue("@fcomnumber",usecomfeed.Text);
                cmd.Parameters.AddWithValue("@fcategory",dropfeedback.Text);
                cmd.Parameters.AddWithValue("@fremarks", txtremarks.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                string msg = "";
                msg = "Hey 👋👋👋 <br>“br><br> Your Feedback has been successfully registered<br>Thank you in for your patience! <br> Have a Great day! 😃😃 <br> Team Egrs";
                if(GmailSender.SendMail(usremailfeed.Text, "Feedback Receivee" , msg))
                {
                    Response.Write("<script>alert('Your Feedback Received Succesfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Please Contact your Network service provider')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Not matched')</script>");

            }
            con.Close();
             
        }
    }
}