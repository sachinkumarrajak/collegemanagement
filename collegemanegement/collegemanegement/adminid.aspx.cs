using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace collegemanegement
{
    public partial class gallery : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "sachin" && TextBox2.Text == "sachin") 
            {
                Response.Redirect("admin1work.aspx");
            }
            else
            {
                Label1.Visible = true;
                TextBox1.Text="";
                TextBox2.Text="";
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
            
        }
    }
}