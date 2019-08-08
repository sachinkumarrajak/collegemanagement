using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class stafupdate : System.Web.UI.Page
    {
        OdbcConnection cn;
        OdbcCommand cmd;
        OdbcDataReader dr;
        string gend;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                cn = new OdbcConnection("dsn=aspdb");

            }
            catch (OdbcException ex)
            {
                lblinfo.Text = ex.Message;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new OdbcCommand("select * from staf where id='" + TextBox1.Text + "'", cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    //lblresno.Text = dr["res_no"].ToString();

                    txtnm.Text = dr.GetString(dr.GetOrdinal("name"));
                    if (dr.GetString(dr.GetOrdinal("gender")) == "Male")
                    {
                        rdomale.Checked = true;
                    }
                    else
                    {
                        rdofemale.Checked = true;
                    }
                    txtdob.Text = dr.GetString(dr.GetOrdinal("dob"));
                    txtemail.Text = dr.GetString(dr.GetOrdinal("email"));

                    txtmob.Text = dr.GetString(dr.GetOrdinal("phone"));
                    txtfn.Text = dr.GetString(dr.GetOrdinal("father_nm"));
                    txtmn.Text = dr.GetString(dr.GetOrdinal("mother_nm"));
                    txtadd.Text = dr.GetString(dr.GetOrdinal("addres"));
                    drste.Items.Add(dr.GetString(dr.GetOrdinal("states")));
                    //  DropDownList6.Items.Add(dr.GetString(dr.GetOrdinal("city")));
                    txtcity.Text = dr.GetString(dr.GetOrdinal("city"));

                    txtdept.Text = dr.GetString(dr.GetOrdinal("dept"));
                   // txtpost.Text = dr.GetString(dr.GetOrdinal("post"));
                   // txtsub.Text = dr.GetString(dr.GetOrdinal("subject"));
                }
                else
                {
                    Response.Write("no record");
                }
            }
            catch (OdbcException ex)
            {
                lblinfo.Text = ex.Message;

            }
            finally
            {
                cn.Close();
            }
            


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (rdomale.Checked == true)
            {
                gend = "Male";
            }
            else
            {
                gend = "Female";
            }
            try
            {
                cmd = new OdbcCommand("update staf  set name=?,gender=?,dob=?,email=?,phone=?,father_nm=?,mother_nm=?,addres=?,states=?,city=?,dept=?  where id=?", cn);
                cmd.Parameters.AddWithValue("@nm", txtnm.Text);
                cmd.Parameters.AddWithValue("@gen", gend);
                cmd.Parameters.AddWithValue("@dob", txtdob.Text);

                // cmd.Parameters.AddWithValue("@dob", txtdob.Text);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@phone", txtmob.Text);
                cmd.Parameters.AddWithValue("@fathernm", txtfn.Text);
                cmd.Parameters.AddWithValue("@mothernm", txtmn.Text);
                cmd.Parameters.AddWithValue("@addres", txtadd.Text);
                cmd.Parameters.AddWithValue("@state", drste.Text);
                cmd.Parameters.AddWithValue("@city", txtcity.Text);
                cmd.Parameters.AddWithValue("@dept", txtdept.Text);
              //  cmd.Parameters.AddWithValue("@post", txtpost.Text);
                //cmd.Parameters.AddWithValue("@sub", txtsub.Text);
                cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                lblsave.Text = "upadte";
            }
            catch (OdbcException ex)
            {
                lblinfo.Text = ex.Message;
            }

        }
    }
}