using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class loginfee : System.Web.UI.Page
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
                lblinfo.Text = ex.Message;
            }
            



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            cmd = new OdbcCommand("select * from adminid where superuser='" + TextBox1.Text + "' and password2='" + TextBox2.Text + "'", cn);
            cn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["s1"] = TextBox1.Text;
                Response.Redirect("feework.aspx");
            }
            else
            {
                Label1.Text = "sorry worg password";

            }

        }
    }
}