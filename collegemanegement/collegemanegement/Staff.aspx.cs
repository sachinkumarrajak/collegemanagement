using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class Staff : System.Web.UI.Page
    {
        OdbcConnection cn;
        OdbcCommand cmd;
        OdbcDataReader dr;
        string gend = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblinfo11.Visible = false;
            lblinfo111.Visible = false;





            try
            {


                cn = new OdbcConnection("dsn=aspdb");
                cmd = new OdbcCommand("select state_name from sttate ", cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                if (!Page.IsPostBack)
                {
                    while (dr.Read())
                    {
                        drste.Items.Add(dr.GetString(0));

                    }
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

        protected void rdofemale_CheckedChanged(object sender, EventArgs e)
        {
            rdomale.Checked = false;
        }

        protected void rdomale_CheckedChanged(object sender, EventArgs e)
        {
            rdofemale.Checked = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int regno = 0;
            DateTime dt1, dt2;
            string d, m, y, gdate;
            string cdate;
            cdate = DateTime.Now.ToShortDateString();

            d = DropDownList1.SelectedValue;
            m = DropDownList2.SelectedValue;
            y = DropDownList3.SelectedValue;

            gdate = d + "/" + m + "/" + y;
            
            try
            {
                if (rdomale.Checked == true)
                {
                    gend = "Male";
                }
                else
                {
                    gend = "Female";
                }

                cmd = new OdbcCommand("insert into staf values(?,?,?,?,?,?,?,?,?,?,?)", cn);
                cmd.Parameters.AddWithValue("@nm", txtnm.Text);
                cmd.Parameters.AddWithValue("@gender", gend);
                 cmd.Parameters.AddWithValue("@dob",gdate);
                cmd.Parameters.AddWithValue("@email", txtmail.Text);
                cmd.Parameters.AddWithValue("@phone", txtmob.Text);
                cmd.Parameters.AddWithValue("@fn", txtfn.Text);
                cmd.Parameters.AddWithValue("@mn", txtmn.Text);
                cmd.Parameters.AddWithValue("@add", txtadd.Text);
                cmd.Parameters.AddWithValue("@state", drste.Text);
                // cmd.Parameters.AddWithValue("@city",drcity.Text);
                cmd.Parameters.AddWithValue("@city", txtcity.Text);
                cmd.Parameters.AddWithValue("@dept", txtdept.Text);
                //cmd.Parameters.AddWithValue("@post", txtpost.Text);
               // cmd.Parameters.AddWithValue("@sub", txtsub.Text);




                cn.Open();
                cmd.ExecuteNonQuery();

                cn.Close();

                cmd = new OdbcCommand("SELECT id from staf order by id", cn);

                cn.Open();

                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    regno = dr.GetInt32(0);
                }

                lblsave.Text = "Staff id is" + regno;


                /*
                                    cmd = new OdbcCommand("select top id from student1 order by desc",cn);
                                    cn.Open();
                                    dr = cmd.ExecuteReader();
                                    lblsave.Text = "Registration has been successful Your Registration Number is" + regno;*/
                txtnm.Text = "";
                rdofemale.Checked = false;
                rdomale.Checked = false;
                txtmail.Text = "";
                txtmob.Text = "";
                txtfn.Text = "";
                txtadd.Text = "";
               // txtsub.Text = "";
                //txtpost.Text = "";
                txtdept.Text = "";
                txtmn.Text = "";
                txtcity.Text = "";

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

        protected void txtmail_TextChanged(object sender, EventArgs e)
        {
            try
            {
                cmd = new OdbcCommand("select * from faculty where email='" + txtmail.Text + "'", cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    //Image1.Visible = true;
                    lblinfo11.Visible = true;
                    txtmail.Text = "";
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

        protected void txtmob_TextChanged(object sender, EventArgs e)
        {
            try
            {
                cmd = new OdbcCommand("select * from faculty where phone='" + txtmob.Text + "'", cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    // Image2.Visible = true;
                    //Label3.Visible = true;
                    lblinfo111.Visible = true;
                    txtmail.Text = "";


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
    }
}