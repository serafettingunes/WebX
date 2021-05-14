using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Collections;
using System.Configuration;
namespace WebX
{
    public partial class Kullanici2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ArrayList alResimYolu = new ArrayList();
        string bglanti = ConfigurationManager.ConnectionStrings["baglanticonfig"].ConnectionString;
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(bglanti);
            cn.Open();

            SqlDataAdapter da = new SqlDataAdapter("select resimYolu from resim where uyeeposta='" + Session["eposta"] + "'  ", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count != null)
            {

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    File.Delete(Server.MapPath("~/Resimler/" + dt.Rows[i][0]));
                }
            }

            SqlDataAdapter da2 = new SqlDataAdapter("select resimYolu from resim2 where uyeeposta='" + Session["eposta"] + "'  ", cn);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            if (dt2.Rows.Count != null)
            {

                for (int j = 0; j < dt2.Rows.Count; j++)
                {
                    File.Delete(Server.MapPath("~/Resimler2/" + dt2.Rows[j][0]));
                }
            }





            SqlCommand cmd3 = new SqlCommand("delete from resim2 where uyeeposta=@eposta3",cn);
            cmd3.Parameters.AddWithValue("@eposta3",Session["eposta"]);
            cmd3.ExecuteNonQuery();
            

            SqlCommand cmd2 = new SqlCommand("delete from resim where uyeeposta=@eposta2", cn);
            cmd2.Parameters.AddWithValue("@eposta2", Session["eposta"]);
            cmd2.ExecuteNonQuery();
            SqlCommand cmd = new SqlCommand("delete from uyeTablo where ePosta=@eposta", cn);
            cmd.Parameters.AddWithValue("@eposta", Session["eposta"]);
            cmd.ExecuteNonQuery();







            cn.Close();

            Response.Redirect("uye.aspx");


        }
    }
}