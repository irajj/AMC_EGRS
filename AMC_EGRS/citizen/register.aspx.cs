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
    public partial class WebForm6 : System.Web.UI.Page
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

        protected void ussrregister_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("select * from citizen_master where c_email=@cm",con);
            cmd.Parameters.AddWithValue("@cm",usremail.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script>alert('Email Already exits......please register with other emmail address')</script>");                
            }
            else
            {
                mycon();
                cmd = new SqlCommand("insert into citizen_master values(@cn,@cg,@ce,@cm,@cp,@reg)",con);
                cmd.Parameters.AddWithValue("@cn", UserNameSignup.Text);
                cmd.Parameters.AddWithValue("@cg", UserGen.Text);
                cmd.Parameters.AddWithValue("@ce", usremail.Text);
                cmd.Parameters.AddWithValue("@cm", usrmobile.Text);
                cmd.Parameters.AddWithValue("@cp", userpswd.Text);
                cmd.Parameters.AddWithValue("@reg", Convert.ToDateTime(System.DateTime.Now.ToString()));                
                cmd.ExecuteNonQuery();
                if(GmailSender.SendMail(usremail.Text,"AMC: Team EGRS","Thanks For Registration"))
                {
                    //Response.Write("<script>alert('You are registered Successfully... please log in using your email address and password')</script>");
                    Response.Write(@"<script language='javascript'>alert('Registered Successfully 🙌🙌🙌 : \n" + "Please Check you E-Mail" + " .');window.location.href='signin.aspx';</script>");

                }


            }
            con.Close();
        }
    }
}