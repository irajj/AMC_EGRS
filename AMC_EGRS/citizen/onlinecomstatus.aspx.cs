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
    public partial class WebForm9 : System.Web.UI.Page
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
                GridView1.Visible = false;

            }
        }
        protected void usrsubmit_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('clicked')</script>");
            mycon();
            cmd = new SqlCommand("select cpemail,cuniqueno from complaint_master where cpemail=@ce and cuniqueno=@cu", con);
            cmd.Parameters.AddWithValue("@ce", useremailtxt.Text);
            cmd.Parameters.AddWithValue("@cu", usercomno.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Response.Write("<script>alert('Matched')</script>");
                GridView1.Visible = true;
                closeusrcom.Visible = true;

            }
            else
            {
                Response.Write("<script>alert('Your Email or Complaint Number Does Not Match Try Again 🤥🤥🤥')</script>");
            }
            con.Close();
        }

        protected void closeusrcom_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            closeusrcom.Visible = false;
            useremailtxt.Text = "";
            closeusrcom.Text = "";
            Response.Write(@"<script language='javascript'>alert('Thanks For Your patience 🙂🙂  : \n" + "Feel free  to feedback us on feedback page 🙏🙏" + " .');window.location.href='onlinecomstatus.aspx';</script>");

        }
    }
}