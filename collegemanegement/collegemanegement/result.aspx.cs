using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
namespace collegemanegement
{
    public partial class result : System.Web.UI.Page
    {
        OdbcConnection cn;
        OdbcCommand cmd;
        OdbcDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            int[] mk;
            string[] sub;
            sub = new string[9];
            mk = new int[9];
                  
            cn = new OdbcConnection("dsn=aspdb");
            int id = (int)Session["k"];
            string nn = (string)Session["k1"];
            //cm = new OdbcCommand("select s.*,mk.subcode,mk.subjects,mk.mk,mk.sem  from stud5 s,mk6 mk,sub d where s.id=mk.id and mk.id=d.subcode and s.id=d.subcode and s.id=" + id + "  and sem='" + nn + "'", cn);
           // cmd = new OdbcCommand("select * from student", cn);
           // cmd = new OdbcCommand("select s.name,s.email,mk.subcode,mk.marks,mk.sem ,d.subname from student s,marks mk,subject d where s.adm_no=mk.roll and mk.subcode=d.sub_code  and s.adm_no=" + id +  and sem='" + nn + "',cn);
            //cmd = new OdbcCommand("select s.name,s.email, mk.subcode,mk.marks,mk.sem ,d.subname from student s,marks mk,subject d where s.adm_no=mk.roll and mk.subcode=d.sub_code and s.adm_no=3",cn);
            cmd = new OdbcCommand("select s.name,s.email,mk.roll,s.sesson, s.res_no,mk.subcode,mk.marks,mk.sem ,d.subname from student s,marks mk,subject d where s.adm_no=mk.roll and mk.subcode=d.sub_code and s.adm_no=" + id + " and sem='" + nn + "'", cn);
            cn.Open();
            dr = cmd.ExecuteReader();

            // Response.Redirect("fggg.aspx");
           // GridView1.DataSource = dr;
           // GridView1.DataBind();

            //c.Open();
            // dr = cm.ExecuteReader();
            
            int i = 0, tot = 0;
            while (dr.Read())
            {
                sub[i] = dr.GetString(dr.GetOrdinal("subname"));
                mk[i] = dr.GetInt32(dr.GetOrdinal("marks"));
                lblname.Text = dr.GetString(dr.GetOrdinal("name"));
                lblrl.Text = dr["roll"].ToString();
                lblses.Text = dr.GetString(dr.GetOrdinal("sesson"));
                lblres.Text = dr["res_no"].ToString();
                lblsem.Text = dr.GetString(dr.GetOrdinal("sem"));
                tot = tot + mk[i];
                i++;
                //regno = dr.GetInt32(0);
            }



            List<Label> t1 = new List<Label>() { lblsub1, lblsub2, lblsub3,lblsub4,lblsub5,lblsub6,lblsub7 };
            List<Label> s = new List<Label>() { lblmk1, lblmk2, lblmk3,lblmk4,lblmk5,lblmk6,lblmk7 };
            for (int j = 0; j < t1.Count; j++)
            {
                t1[j].Text = sub[j];
                s[j].Text = mk[j].ToString();
            }
            lbltot.Text = tot.ToString();
            //for (int j = 0; j < 4; j++)
            //{
            //Response.Write(sub[j] + "<br/>");
            //txtsub1.Text = sub[0];
            //txtsub2.Text = sub[1];
            //txtsub3.Text = sub[2];


            //}
            //if (dr.Read())
            //{
            //txtid.Text = dr["id"].ToString();
            //TextBox1.(dr.GetInt32(0);
            //txtnm.Text = dr.GetString(dr.GetOrdinal("nm"));
            //txtadd.Text = dr.GetString(dr.GetOrdinal("addes"));
            // txtsub1.Text = dr.GetString(dr.GetOrdinal("subjects"));
            //txtsub2.Text = dr.GetString(dr.GetOrdinal("subjects"));

            // else
            //{
            //Response.Write("sorry");
            //}
              int v=int.Parse(lblmk1.Text);
              int v1 = int.Parse(lblmk2.Text);
              int v2 = int.Parse(lblmk3.Text);
              int v3 = int.Parse(lblmk4.Text);
              int v4 = int.Parse(lblmk5.Text);
              int v5 = int.Parse(lblmk6.Text);
              int v6 = int.Parse(lblmk7.Text);
            if (v >= 80)
            {
                lblg1.Text =  "A";
            }
            else if (v >= 75)
            {
                lblg1.Text = "B";
            }
            else if (v >= 65)
            {
                lblg1.Text = "c";
            }
            else
            {
                lblg1.Text = "D";
            }
            if (v1 >= 80)
            {
                lblg2.Text = "A";
            }
            else if (v1 >= 75)
            {
                lblg2.Text = "B";
            }
            else if (v1 >= 65)
            {
                lblg2.Text = "c";
            }
            else
            {
                lblg2.Text = "D";
            }
            if (v2 >= 80)
            {
                lblg3.Text = "A";
            }
            else if (v1 >= 75)
            {
                lblg3.Text = "B";
            }
            else if (v1 >= 65)
            {
                lblg3.Text = "c";
            }
            else
            {
                lblg3.Text = "D";
            }
            if (v3 >= 80)
            {
                lblg4.Text = "A";
            }
            else if (v3 >= 75)
            {
                lblg4.Text = "B";
            }
            else if (v3 >= 65)
            {
                lblg4.Text = "c";
            }
            else
            {
                lblg4.Text = "D";
            }
            if (v4 >= 80)
            {
                lblg5.Text = "A";
            }
            else if (v4 >= 75)
            {
                lblg5.Text = "B";
            }
            else if (v4 >= 65)
            {
                lblg5.Text = "c";
            }
            else
            {
                lblg5.Text = "D";
            }
            if (v5 >= 80)
            {
                lblg6.Text = "A";
            }
            else if (v5 >= 75)
            {
                lblg6.Text = "B";
            }
            else if (v5 >= 65)
            {
                lblg6.Text = "c";
            }
            else
            {
                lblg6.Text = "D";
            }
            if (v6 >= 80)
            {
                lblg7.Text = "A";
            }
            else if (v6 >= 75)
            {
                lblg7.Text = "B";
            }
            else if (v6 >= 65)
            {
                lblg7.Text = "c";
            }
            else
            {
                lblg7.Text = "D";
            }
           
        }
    }
}