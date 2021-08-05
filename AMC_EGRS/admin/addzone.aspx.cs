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
    public partial class WebForm8 : System.Web.UI.Page
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

        protected void zonesavebtn_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("insert into zone_master values(@zn)", con);
            cmd.Parameters.AddWithValue("@zn", txtzone.Text.ToUpper());
            cmd.ExecuteNonQuery();
            con.Close();
            txtzone.Text = "";
            Response.Write("<script>alert('Zone Inserted Succesfully 😌😌😌')</script>");

        }
    }
}