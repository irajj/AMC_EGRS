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
    public partial class WebForm19 : System.Web.UI.Page
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
            if (!Page.IsPostBack)
            {
                // Your code here
            }
            
        }

        protected void addlink1_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("insert into faq_master values(@fq,@fa)", con);
            cmd.Parameters.AddWithValue("@fq", txtque.Text);
            cmd.Parameters.AddWithValue("@fa", txtans.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('FAQ Added Succesfully')</script>");
            txtans.Text = "";
            txtque.Text = "";
        }

        
    }
}