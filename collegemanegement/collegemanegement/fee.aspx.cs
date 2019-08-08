using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class fee : System.Web.UI.Page
    {
        OdbcConnection cn;
        OdbcCommand cmd;
        OdbcDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "<b>WELCOME<b>" + "\t" + Session["s1"];
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new OdbcCommand("insert into account values(?,?,?,?,?)", cn);
                cmd.Parameters.AddWithValue("@date",txtdate.Text);
                cmd.Parameters.AddWithValue("@adm",txtaddno.Text);
                cmd.Parameters.AddWithValue("@ppart",txtpart.Text);
                cmd.Parameters.AddWithValue("@amt", txtamt.Text);
                cmd.Parameters.AddWithValue("@casher",Label2.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                lblsave.Text = "Amount paid";
            }
            catch (OdbcException ex)
            {
                lblinfo.Text = ex.Message;
            }

        }
    }
}