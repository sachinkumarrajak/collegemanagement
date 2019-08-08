using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class stafatdandence : System.Web.UI.Page
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
                // lblinfo.Text = ex.Message;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new OdbcCommand("insert into stafattan values(?,?,?)", cn);
                cmd.Parameters.AddWithValue("@aid",txtdate0.Text);
                cmd.Parameters.AddWithValue("@date", txtdate.Text);

                cmd.Parameters.AddWithValue("@sts", DropDownList1.Text);

                cn.Open();
                cmd.ExecuteNonQuery();
                lblsave.Text = "save";
            }
            catch (OdbcException ex)
            {
                lblinfo.Text = ex.Message;
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