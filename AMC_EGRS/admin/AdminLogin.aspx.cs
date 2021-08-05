using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.SqlServer;

namespace AMC_EGRS.admin
{
    public partial class AdminLogin : System.Web.UI.Page
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
                String activepage = Request.RawUrl;
                if (activepage.Contains("AdminLogin.aspx"))
                {
                    if (Request.Cookies["login"] != null)
                    {
                        forck.Attributes.Add("class", "form-bar fill");
                        nullname.InnerText = "";
                        nullname.InnerHtml = "";
                        nullpassword.InnerText = "";
                        nullpassword.InnerHtml = "";
                        remember.Checked = true;
                        AdminEmail.Text = Request.Cookies["login"].Values["un"].ToString();
                        AdminPassword.Attributes["value"] = Request.Cookies["login"].Values["ps"].ToString();
                    }
                }
            }
                                
        }

        protected void SignAd_Click(object sender, EventArgs e)
        {
                    Session["admin"] = AdminEmail.Text;

            mycon();
            cmd = new SqlCommand("select admin_id,admin_name,admin_password from admin_master where admin_name=@nm and admin_password=@ps", con);
            cmd.Parameters.AddWithValue("@nm", AdminEmail.Text);
            cmd.Parameters.AddWithValue("@ps", AdminPassword.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                if (ds.Tables[0].Rows[0]["admin_name"].ToString() == AdminEmail.Text && ds.Tables[0].Rows[0]["admin_password"].ToString() == AdminPassword.Text)
                {
                    //store admin username is session here
                    Session["admin"] = AdminEmail.Text;
                    Session["adminname"] = ds.Tables[0].Rows[0]["admin_name"].ToString();

                    //create cookie here
                    if (remember.Checked)
                    {
                        HttpCookie adminlogin = new HttpCookie("login");
                        adminlogin.Values.Add("un", AdminEmail.Text);
                        adminlogin.Values.Add("ps", AdminPassword.Text);
                        adminlogin.Expires = System.DateTime.Now.AddDays(6);
                        Response.Cookies.Add(adminlogin);
                    }
                    Response.Redirect("dashboard.aspx");
                    AdminEmail.Text = "";
                    AdminPassword.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('invalid username or password')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('invalid username or password')</script>");

            }
            con.Close();
           
            AdminEmail.Text = "";
            AdminPassword.Text = "";
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../citizen/home.aspx");

        }

        protected void remember_CheckedChanged(object sender, EventArgs e)
        {
            
        }
    }
}