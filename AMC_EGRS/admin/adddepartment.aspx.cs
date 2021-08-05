using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using Microsoft.SqlServer;


namespace AMC_EGRS.admin
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;


        void mycon()
        {
            con = new SqlConnection(@"Data Source=DESKTOP-FT50E8I\SQLEXPRESS;Initial Catalog=AMC_COMPLAIN;Integrated Security=True");
            con.Open();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }



        protected void addlink1_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("insert into dept_master values(@dn)", con);
            cmd.Parameters.AddWithValue("@dn", txtdept.Text.ToUpper());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Department Added Succesfully 😌😌😌')</script>");
            txtdept.Text = "";
        }
    }
}