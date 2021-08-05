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
    public partial class WebForm21 : System.Web.UI.Page
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
        //function for fill up details direct from database into department drop down
        void filldep()
        {
            mycon();
            cmd = new SqlCommand("select * from dept_master", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            subdepdrop.DataSource = ds;
            subdepdrop.DataTextField = "dept_name";
            subdepdrop.DataValueField = "dept_id";
            subdepdrop.DataBind();
            subdepdrop.Items.Insert(0, "---select Department----");
            subdepdrop.Items[0].Value = "0";
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
            filldep();
        }

    }
}