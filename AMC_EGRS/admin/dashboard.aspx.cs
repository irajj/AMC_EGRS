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
    public partial class WebForm1 : System.Web.UI.Page
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
          
            //count complaint
            mycon();
            cmd = new SqlCommand("select COUNT(*) from complaint_master", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //ToalComplaintlbl.Text = ds.Tables[0].Rows.Count.ToString();
                ToalComplaintlbl.Text = Convert.ToString(cmd.ExecuteScalar());
            }
            con.Close();
            //count solved complaint
            mycon();
            cmd = new SqlCommand("select COUNT(*) from complaint_master where cstatus='SOLVED'", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //ToalComplaintlbl.Text = ds.Tables[0].Rows.Count.ToString();
                solvedlbl.Text = Convert.ToString(cmd.ExecuteScalar());

            }
            con.Close();
            //count unsolved complaint
            mycon();
            cmd = new SqlCommand("select COUNT(*) from complaint_master where cstatus='PANDING'", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //ToalComplaintlbl.Text = ds.Tables[0].Rows.Count.ToString();
                pandinglbl.Text = Convert.ToString(cmd.ExecuteScalar());

            }
            con.Close();
            //count Approved complaint
            mycon();
            cmd = new SqlCommand("select COUNT(*) from complaint_master where cstatus='APPROVED'", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //ToalComplaintlbl.Text = ds.Tables[0].Rows.Count.ToString();
                ongolbl.Text = Convert.ToString(cmd.ExecuteScalar());

            }
            con.Close();

            //seconf box count start

            //zone count
            mycon();
            cmd = new SqlCommand("select COUNT(*) from zone_master", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //ToalComplaintlbl.Text = ds.Tables[0].Rows.Count.ToString();
                zonelnl.Text = Convert.ToString(cmd.ExecuteScalar());

            }
            con.Close();

            //ward count
            mycon();
            cmd = new SqlCommand("select COUNT(*) from ward_master", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //ToalComplaintlbl.Text = ds.Tables[0].Rows.Count.ToString();
                wardlbl.Text = Convert.ToString(cmd.ExecuteScalar());

            }
            con.Close();

            //department count
            mycon();
            cmd = new SqlCommand("select COUNT(*) from dept_master", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //ToalComplaintlbl.Text = ds.Tables[0].Rows.Count.ToString();
                departlbl.Text = Convert.ToString(cmd.ExecuteScalar());

            }
            con.Close();

            //user count
            mycon();
            cmd = new SqlCommand("select COUNT(*) from citizen_master", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //ToalComplaintlbl.Text = ds.Tables[0].Rows.Count.ToString();
                usrlbl.Text = Convert.ToString(cmd.ExecuteScalar());
            }
            con.Close();


            //faq count
            mycon();
            cmd = new SqlCommand("select COUNT(*) from faq_master", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //ToalComplaintlbl.Text = ds.Tables[0].Rows.Count.ToString();
                faqlbl.Text = Convert.ToString(cmd.ExecuteScalar());

            }
            con.Close();

            //faq count
            mycon();
            cmd = new SqlCommand("select COUNT(*) from feedback_master", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //ToalComplaintlbl.Text = ds.Tables[0].Rows.Count.ToString();
                feedlbl.Text = Convert.ToString(cmd.ExecuteScalar());

            }
            con.Close();

        }
    }
}