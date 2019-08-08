using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class addmission : System.Web.UI.Page
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             try
            {
                //dl1.Items.Remove("*");
               // DropDownList1.Items.Remove("*");

               // cn = new OdbcConnection("dsn=aspdb");
              //  cmd = new OdbcCommand("select id from ins ", cn);
                cmd = new OdbcCommand("select top " +int.Parse( TextBox1.Text )+ " res_no from stdres where caregory='" + DropDownList2.Text + "' and course='" + DropDownList3.Text +"' order by twepassper desc",cn);
                cn.Open();
                dr = cmd.ExecuteReader();
               
               // GridView1.DataSource=dr;
               // GridView1.DataBind();
              // if (!Page.IsPostBack)
              // {

                // DropDownList1.Items.Remove("*");
                DropDownList4.Items.Clear();
                DropDownList4.Items.Add("Result");
                while (dr.Read())
                    {
                        DropDownList4.Items.Add(dr.GetString(0));
                       
                   }
               
              // }

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

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList5.Items.Clear();
            DropDownList6.Items.Clear();
            try
            {
                cmd = new OdbcCommand("select * from stdres where res_no='" + DropDownList4.Text + "'", cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblresno.Text  = dr["res_no"].ToString();
                  
                    txtnm.Text = dr.GetString(dr.GetOrdinal("name"));
                    if (dr.GetString(dr.GetOrdinal("gender")) == "Male")
                    {
                        rdomale.Checked = true;
                    }
                    else
                    {
                        rdofemale.Checked = true;
                    }
                  txtemail.Text=  dr.GetString(dr.GetOrdinal("email"));

                  txtmobile.Text = dr.GetString(dr.GetOrdinal("phone"));
                  txtfname.Text = dr.GetString(dr.GetOrdinal("father_nm"));
                  txtmnane.Text = dr.GetString(dr.GetOrdinal("mother_nm"));
                txtadd.Text=  dr.GetString(dr.GetOrdinal("addres"));
                DropDownList5.Items.Add( dr.GetString(dr.GetOrdinal("states")));
                DropDownList6.Items.Add(dr.GetString(dr.GetOrdinal("city")));
                txt10tr.Text = dr.GetString(dr.GetOrdinal("tenpassyr"));
                txtper.Text = dr.GetString(dr.GetOrdinal("tenper"));
             txt12yr.Text=   dr.GetString(dr.GetOrdinal("twepassyr"));
             
             txt12per.Text=       dr.GetString(dr.GetOrdinal("twepassper"));
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin1work.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          int regno = 0;
              
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

                    cmd = new OdbcCommand("insert into student values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", cn);
                    cmd.Parameters.AddWithValue("@res",lblresno.Text );
                    cmd.Parameters.AddWithValue("@roll", TextBox3.Text);

                    cmd.Parameters.AddWithValue("@nm",txtnm.Text);
                    cmd.Parameters.AddWithValue("@gender",gend);
                    cmd.Parameters.AddWithValue("@dob",txtdb.Text);
                    cmd.Parameters.AddWithValue("@email",txtemail.Text);
                    cmd.Parameters.AddWithValue("@phone",txtmobile.Text);
                    cmd.Parameters.AddWithValue("@fn",txtfname.Text);
                    cmd.Parameters.AddWithValue("@mn",txtmnane.Text);
                    cmd.Parameters.AddWithValue("@add",txtadd.Text);
                    cmd.Parameters.AddWithValue("@state",DropDownList4.Text);
                    cmd.Parameters.AddWithValue("@city",DropDownList5.Text);
                    cmd.Parameters.AddWithValue("@10yer",txt10tr.Text);
                    cmd.Parameters.AddWithValue("@10per",txtper.Text);
                    cmd.Parameters.AddWithValue("@12yer",txt12yr.Text);
                    cmd.Parameters.AddWithValue("@12per",txt12per.Text);
                    cmd.Parameters.AddWithValue("@cat",DropDownList2.Text);
                    cmd.Parameters.AddWithValue("@course",DropDownList3.Text);
                    cmd.Parameters.AddWithValue("@sesseion", TextBox2.Text);
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    lblsave.Text = "save";
                    cn.Close();

                   cmd = new OdbcCommand("SELECT res_no from student order by res_no", cn);

                    cn.Open();

                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        regno=dr.GetInt32(0);
                    }
                 
                    lblsave.Text = "Admission has been successful Your Admission Number is" + regno;

                 
/*
                    cmd = new OdbcCommand("select top id from student1 order by desc",cn);
                    cn.Open();
                    dr = cmd.ExecuteReader();
                    lblsave.Text = "Registration has been successful Your Registration Number is" + regno;*/
             
 }
             catch (OdbcException ex)
             {
                 lblinfo.Text = ex.Message;
             }

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        }
    }
