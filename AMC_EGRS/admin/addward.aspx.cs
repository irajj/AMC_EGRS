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
    public partial class WebForm10 : System.Web.UI.Page
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
        void fillzone()
        {
            mycon();
            cmd = new SqlCommand("select * from zone_master", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            dropzone.DataSource = ds;
            dropzone.DataTextField = "zone_name";
            dropzone.DataValueField = "zone_id";
            dropzone.DataBind();
            dropzone.Items.Insert(0, "---select zone---");
            dropzone.Items[0].Value = "0";
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            fillzone();
        }

        protected void savewardbtn_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("insert into ward_master values(NULL,@wn,@zi)", con);
            cmd.Parameters.AddWithValue("@wn", txtward.Text.ToString());
            cmd.Parameters.AddWithValue("@zi", dropzone.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Ward Inserted Succesfully ')</script>");
            txtward.Text = "";
            dropzone.SelectedItem.Value = "0";
        }
    }
}