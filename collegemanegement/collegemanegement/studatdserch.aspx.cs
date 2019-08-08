using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class studatdserch : System.Web.UI.Page
    {
        OdbcConnection cn;
        OdbcCommand cmd;
        OdbcDataReader dr;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Calendar1.Visible = false;
            }
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
                string qry= "select s.*,mk.statues from student s,studentattd mk where s.adm_no=mk.addmsion_no and mk.dates='" + txtdate.Text + "'";
                cmd = new OdbcCommand(qry, cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
                else
                {
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                    lblinfo.Text = "sorry no record";
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;

            }

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtdate.Text = Calendar1.SelectedDate.ToString("dd MMM yyyy");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = true;
                e.Cell.BackColor = System.Drawing.Color.Violet;
            }
        }
    }
}