using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class studentrestration : System.Web.UI.Page
    {
        OdbcConnection cn;
        OdbcCommand cmd;
        OdbcDataReader dr;
        string gend="";
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Image2.Visible = false;
          
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
                        drstate.Items.Add(dr.GetString(0));

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



        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

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
            //Label1.Text = gdate;
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

                cmd = new OdbcCommand("insert into stdres values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", cn);
                cmd.Parameters.AddWithValue("@nm", txtnm.Text);
                cmd.Parameters.AddWithValue("@gender", gend);
                cmd.Parameters.AddWithValue("@dob",gdate );
              
                cmd.Parameters.AddWithValue("@email", txtmail.Text);
                cmd.Parameters.AddWithValue("@phone", txtmob.Text);
                cmd.Parameters.AddWithValue("@fn", txtfn.Text);
                cmd.Parameters.AddWithValue("@mn", txtmn.Text);
                cmd.Parameters.AddWithValue("@add", txtadd.Text);
                cmd.Parameters.AddWithValue("@state", drstate.Text);
                // cmd.Parameters.AddWithValue("@city",drcity.Text);
               // cmd.Parameters.AddWithValue("@city", txtcity.Text);
                cmd.Parameters.AddWithValue("@city",ddlcity.Text);
                cmd.Parameters.AddWithValue("@10yer", txt10yr.Text);
                cmd.Parameters.AddWithValue("@10per", txt10per.Text);
                cmd.Parameters.AddWithValue("@12yer", txt12yr.Text);
                cmd.Parameters.AddWithValue("@12per", txt12per.Text);
                cmd.Parameters.AddWithValue("@cat", drcat.Text);
                cmd.Parameters.AddWithValue("@course", drcourse.Text);
                cn.Open();
                cmd.ExecuteNonQuery();

                cn.Close();

                cmd = new OdbcCommand("SELECT res_no from stdres order by res_no", cn);

                cn.Open();

                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    regno = dr.GetInt32(0);
                }

                lblsave.Text = "Registration has been successful Your Registration Number is" + regno;


                /*
                                    cmd = new OdbcCommand("select top id from student1 order by desc",cn);
                                    cn.Open();
                                    dr = cmd.ExecuteReader();
                                    lblsave.Text = "Registration has been successful Your Registration Number is" + regno;*/
                txtnm.Text = "";
                rdofemale.Checked = false;
                rdomale.Checked =false;
                txtmail.Text = "";
                txtmob.Text = "";
                txtfn.Text = "";
                txtadd.Text = "";
                txt10yr.Text = "";
                txt10per.Text = "";
                txt12yr.Text = "";
                txt12per.Text = "";
                txtmn.Text = "";
                

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
                cmd = new OdbcCommand("select * from stdres where email='" + txtmail.Text + "'", cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Image1.Visible = true;
                    Label2.Visible = true;
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
                cmd = new OdbcCommand("select * from stdres where phone='" + txtmob.Text + "'", cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Image2.Visible = true;
                    Label3.Visible = true;
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

        protected void rdomale_CheckedChanged(object sender, EventArgs e)
        {
            rdofemale.Checked =false ;
        }

        protected void rdofemale_CheckedChanged(object sender, EventArgs e)
        {
            rdomale.Checked = false;
            
        }

        protected void drstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                cmd = new OdbcCommand("select city from stcity c,Sttate st where st.id=c.stid and st.state_name='" + drstate.Text + "'",cn);

                cn.Open();

                dr = cmd.ExecuteReader();
                ddlcity.Items.Clear();
                ddlcity.Items.Add("--select city--");
                while (dr.Read())
                {

                    ddlcity.Items.Add(dr.GetString(0));
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