using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class serchres : System.Web.UI.Page
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

            try
            {
                //dl1.Items.Remove("*");
               // DropDownList1.Items.Remove("*");

               // cn = new OdbcConnection("dsn=aspdb");
              //  cmd = new OdbcCommand("select id from ins ", cn);
                cmd = new OdbcCommand("select top " +int.Parse( TextBox1.Text )+ " id from student1 where caregory='" + TextBox2.Text + "' order by twepassper desc",cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                DropDownList1.Items.Clear();
               // GridView1.DataSource=dr;
               // GridView1.DataBind();
               //if (!Page.IsPostBack)
              // {
            // 
                
                while (dr.Read())
                    {
                        DropDownList1.Items.Add(dr.GetString(0));
                       // DropDownList1.Items.Remove("*");

                   }
                   
               //}

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

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
               try
            {

               // cn = new OdbcConnection("dsn=aspdb");
              //  cmd = new OdbcCommand("select id from ins ", cn);
               // cmd = new OdbcCommand("select top " + int.Parse(TextBox1.Text) + " id from student1 where caregory='" + TextBox2.Text + "' order by twepassper desc",cn);
                //cn.Open();
                //dr = cmd.ExecuteReader();
               //if (!Page.IsPostBack)
              // {
               // DropDownList1.Items.Clear();
                 //   while (dr.Read())
                   // {
                     //   DropDownList1.Items.Add(dr.GetString(0));

                    //}
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        }
    
}