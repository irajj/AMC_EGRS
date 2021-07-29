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
    public partial class WebForm7 : System.Web.UI.Page
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

        protected void usersigninsubmit_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("select user_email,user_password from user_master where user_email=@uem and user_password=@ups", con);
            cmd.Parameters.AddWithValue("@uem", UserSigninname.Text);
            cmd.Parameters.AddWithValue("@ups", UsersigninPassword.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["user_email"].ToString() == UserSigninname.Text && ds.Tables[0].Rows[0]["user_password"].ToString() == UsersigninPassword.Text)
                {
                    Session["user"] = UserSigninname.Text.ToString();
                    Response.Write("<script>alert('Successfully logged in 🔥🔥🔥')</script>");
                    Response.Redirect("home.aspx");

                }
            }
            else
            {
                Response.Write("<script>alert('invalid username or password')</script>");
            }
            con.Close();
        }
    }
}