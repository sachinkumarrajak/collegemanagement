using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class resultserch : System.Web.UI.Page
    {
        OdbcConnection cn;
        OdbcCommand cmd;
        OdbcDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                cn = new OdbcConnection("dsn=aspdb");

            }
            catch (OdbcException ex)
            {
                lblinfo111.Text = ex.Message;
            }
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //cmd = new OdbcCommand("select s.*,mk.sub1,mk.mk1,mk.sub2,mk.mk2,mk.sub3,mk.mk3 from stud4 s,mk4 mk where s.id=mk.id and s.id=" + TextBox1.Text, cn);
                //cn.Open();
                //dr = cmd.ExecuteReader();
                Session["k"] = int.Parse(TextBox1.Text);
                Session["k1"] = DropDownList1.Text;
                // Response.Redirect("fggg.aspx");
                // Response.Redirect("result1.aspx");
                cmd = new OdbcCommand("select roll,sem from marks where roll='" + TextBox1.Text + "' and sem='" + DropDownList1.Text + "'", cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Response.Redirect("result.aspx");
                }
                else
                {
                    lblinfo101.Text = "Result not found";
                }

              
                //GridView1.DataSource = dr;
                //GridView1.DataBind();

                /*if (dr.Read())
                {
                    TextBox2.Text = dr.GetString(dr.GetOrdinal("name"));
                    TextBox3.Text = dr.GetString(dr.GetOrdinal("add2"));
                       txtsub1.Text = dr.GetString(dr.GetOrdinal("sub1"));
     txtsub2.Text = dr.GetString(dr.GetOrdinal("sub2"));
     txtsub3.Text = dr.GetString(dr.GetOrdinal("sub3"));
     txtmk1.Text = dr["mk1"].ToString();
     txtmk2.Text = dr["mk2"].ToString();
     txtmk3.Text = dr["mk3"].ToString();
     int dd = Convert.ToInt32(txtmk3.Text) + Convert.ToInt32(txtmk2.Text) + Convert.ToInt32(txtmk1.Text);
     txtsum.Text = dd.ToString();
     txtper.Text = (dd / 3).ToString()+"%";
     lbl.Text = (dd / 3).ToString() + "%";
    
                }
                else
                {
                    lblsave.Text = "sorry no record";
                }*/
            }
            catch (OdbcException ex)
            {
                lblinfo111.Text = ex.Message;
            }
            finally
            {
                cn.Close();
            }
            


        }
    }
}