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
            cmd = new SqlCommand("select c_email,c_password from citizen_master where c_email=@uem and c_password=@ups", con);
            cmd.Parameters.AddWithValue("@uem", UserSigninname.Text);
            cmd.Parameters.AddWithValue("@ups", UsersigninPassword.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["c_email"].ToString() == UserSigninname.Text && ds.Tables[0].Rows[0]["c_password"].ToString() == UsersigninPassword.Text)
                {
                    Response.Write("<script>alert('Successfully logged in 🔥🔥🔥')</script>");
                    Session["user"] = UserSigninname.Text.ToString();

                    //if user came with regcom page then redirect it to that same page
                    if (Request.QueryString["regcom"] == "user")
                    {
                        Response.Redirect("regcom.aspx");
                    }
                    else
                    {
                    Response.Redirect("home.aspx");
                    }
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