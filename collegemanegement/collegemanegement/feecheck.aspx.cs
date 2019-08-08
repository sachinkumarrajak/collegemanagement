using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class feecheck : System.Web.UI.Page
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
                Label11.Text = ex.Message;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new OdbcCommand("select adm_no ,SUM(amount)'total' from account group by adm_no having SUM(amount) < '" + TextBox1.Text + "'", cn);
            cn.Open();
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }
}