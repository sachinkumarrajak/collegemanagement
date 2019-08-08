using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{     
    public partial class resultwork : System.Web.UI.Page
    {OdbcConnection cn;
        OdbcCommand cmd;
        OdbcDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                cn = new OdbcConnection("dsn=aspdb");
                cmd = new OdbcCommand("select subname from subject ", cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                if (!Page.IsPostBack)
                {
                    while (dr.Read())
                    {
                        DropDownList1.Items.Add(dr.GetString(0));

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

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void binsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new OdbcCommand("insert into marks values(?,?,?,?)", cn);
                cmd.Parameters.AddWithValue("@roll",TextBox3.Text);
                cmd.Parameters.AddWithValue("@subcode",TextBox4.Text);
               // cmd.Parameters.AddWithValue("@subjects",DropDownList1.Text);
                cmd.Parameters.AddWithValue("@marks", TextBox5.Text);
                cmd.Parameters.AddWithValue("@sem",DropDownList2.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                lblsave.Text = "record save";
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