using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{     
    public partial class subject : System.Web.UI.Page
    {
        OdbcConnection cn;
        OdbcCommand cmd;
        OdbcDataReader dr;
    
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            try
            {

                cn = new OdbcConnection("dsn=aspdb");

            }
            catch (OdbcException ex)
            {
                lblinfo.Text = ex.Message;
            }

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new OdbcCommand("insert into subject values(?,?)", cn);
               // cmd.Parameters.AddWithValue("@id", txtid.Text);
                cmd.Parameters.AddWithValue("@code", TextBox1.Text);
                cmd.Parameters.AddWithValue("@nm", TextBox2.Text);
                //cmd.Parameters.AddWithValue("@roll", TextBox3.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                lblsave.Text = "record save";
            }
            catch (OdbcException ex)
            {
                lblinfo.Text = ex.Message;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label2.Visible = true;
            }
            else
            {
                try
                {
                    cmd = new OdbcCommand("select * from subject where sub_code='" + TextBox1.Text + "'", cn);
                    cn.Open();
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                       // TextBox1.Text = dr.GetString(dr.GetOrdinal("sub_code"));
                        TextBox2.Text = dr.GetString(dr.GetOrdinal("subname"));
                    }
                    else
                    {
                        lblsave.Text = "sorry no record";
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new OdbcCommand("update subject  set subname=? where sub_code=?", cn);
               
                cmd.Parameters.AddWithValue("@nm", TextBox2.Text);
                cmd.Parameters.AddWithValue("@roll", TextBox1.Text);
               // cmd.Parameters.AddWithValue("@id", txtid.Text);
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