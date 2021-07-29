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

namespace AMC_EGRS.admin
{
    public partial class WebForm22 : System.Web.UI.Page
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
            if (Session["admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string sid = e.CommandArgument.ToString();

            string email = "";
            mycon();
            cmd = new SqlCommand("select cpemail from complaint_master where cid=@cm", con);
            cmd.Parameters.AddWithValue("@cm", sid);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                email = ds.Tables[0].Rows[0]["cpemail"].ToString();
            }
            con.Close();
            //select email
            string name = "";
            mycon();
            cmd = new SqlCommand("select cpname from complaint_master where cid=@cm", con);
            cmd.Parameters.AddWithValue("@cm", sid);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                name = ds.Tables[0].Rows[0]["cpname"].ToString();
            }
            con.Close();

            string msg = "";
            msg = "Hey " + name + "🙋‍ 🙋‍ <br><br>“ We Are extremely Happy to Inform you that Your complaint has been successfullt Solved. 🤗🤗🤗  <br> <br><br>Thank you for your patience! <br> Have a Great day! 😃😃 <br> Team Egrs";
            if (GmailSender.SendMail(email, "EGRS TEAM: ABOUT YOUR COMPLAINT STATUS", msg))
            {
                Response.Write("<script>alert('Citizen Complaint Solved Successfully');window.location.href='approvedcomplaint.aspx'</script>");
                mycon();
                cmd = new SqlCommand("update complaint_master set cstatus='SOLVED' where cid=@cid ", con);
                cmd.Parameters.AddWithValue("@cid", sid);
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
            con.Close();
        }
    }
}