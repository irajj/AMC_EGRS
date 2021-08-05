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
    public partial class WebForm12 : System.Web.UI.Page
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

        protected void reopenbtn_Click(object sender, EventArgs e)
        {
            
            mycon();
            cmd = new SqlCommand("select cpemail,cuniqueno,cstatus from complaint_master where cpemail=@ce and cuniqueno=@cu", con);
            cmd.Parameters.AddWithValue("@ce", useremailreopen.Text);
            cmd.Parameters.AddWithValue("@cu", usernoreopen.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                
                //Response.Write("<script>alert('Matched')</script>");
                if (ds.Tables[0].Rows[0]["cstatus"].ToString() == "SOLVED")
                {
                    Response.Write("<script>alert('Before you re-open the complaint please let us know why do you want to re-open it and explain in details...')</script>");

                    reopenpanel.Visible = false;
                    reopenpanel1.Visible = true;
                    emaillblreopen.Text = useremailreopen.Text;
                    comnumberlblreopen.Text = usernoreopen.Text;
                }
                else
                {
                    Response.Write("<script>alert('Your Complaint is under Awaiting or Approved Section please wait till your Complaint is Solved')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Your Email or Complaint Number Does Not Match Try Again 🤥🤥🤥')</script>");
            }
            con.Close();
            
        }

        protected void usrsubmitreopen_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Clicked')</script>");


            reopenbtn.Visible = false;
            mycon();
            //cmd = new SqlCommand("insert into complaint_master(creopen) select cuniqueno from complaint_master where cuniquenumber=@cun ", con);
            //INSERT INTO complaint_master(creopen) VALUES((SELECT cuniqueno from complaint_master where cuniqueno='20210711816'),'REOPEN')
            //cmd = new SqlCommand("INSERT INTO complaint_master(creopen) VALUES((SELECT cuniqueno from complaint_master where cuniqueno=@cn),)",con);
            cmd = new SqlCommand("update complaint_master set creopen=@cr,cstatus='RE-OPEN' where cuniqueno=@cn ",con);
            cmd.Parameters.AddWithValue("@cr",reopentxt.Text);
            cmd.Parameters.AddWithValue("@cn", usernoreopen.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);                                 
            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Write("<script>alert('Complaint Re-opened Succesfully')</script>");
            Response.Write(@"<script language='javascript'>alert('Complaint Re-opened Succesfully 🙌🙌🙌 : \n" + "Please Check you E-Mail" + " .');window.location.href='home.aspx';</script>");
            //Response.Redirect("home.aspx");

        }
    }
}