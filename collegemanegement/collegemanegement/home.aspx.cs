using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace collegemanegement
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showreg();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            showreg();

        }
        private void showreg()
        {

            Random s = new Random();
            int i = s.Next(1,4);
            Image1.ImageUrl = "~/imges/" + i.ToString() + ".jpg";

        }
     
    }
}