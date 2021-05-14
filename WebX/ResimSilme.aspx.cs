using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace WebX
{
    public partial class ResimSilme : System.Web.UI.Page
    {
        
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["baglanticonfig"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //cn.Open();
            //SqlDataAdapter daCount = new SqlDataAdapter("select count(*) from resim where uyeeposta='"+Session["eposta"]+"' ",cn);
            //DataTable dtCount = new DataTable();
            //daCount.Fill(dtCount);

            //SqlDataAdapter daResimYolu = new SqlDataAdapter("select resimYolu from resim where uyeeposta='" + Session["eposta"] + "' ", cn);
            //DataTable dtResimYolu = new DataTable();
            //daResimYolu.Fill(dtResimYolu);
            //if (dtCount.Rows.Count!=null)
            //{
            //    Image image = new Image();

            //    for (int i = 0; i <Convert.ToInt32(dtCount.Rows[0][0]) ; i++)
            //    {
            //        Image1.ImageUrl += "~/Resimler/"+dtResimYolu.Rows[i][0];
            //    }
            //}
            //cn.Close();

        }
        ArrayList arsilinen = new ArrayList();
        ArrayList arsilinen2 = new ArrayList();
        protected void Button1_Click(object sender, EventArgs e)
        {
            string yol = "";
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected == true)
                {

                    yol = item.Text.Substring(43);
                    File.Delete(Server.MapPath("~/Resimler/" + yol));

                    Label1.Text = item.Text;
                    Response.Write("Resim silindi " + Label1.Text);
                    arsilinen.Add(Label1.Text);
                    yol = "";
                   
                    
                }
            }

            foreach (var item2 in arsilinen)
            {
                cn.Open();
                SqlCommand cmd2 = new SqlCommand("delete from resim where resimYolu=@resimyolu", cn);
                cmd2.Parameters.AddWithValue("@resimyolu", item2);
                cmd2.ExecuteNonQuery();
                cn.Close();
            }


            foreach (ListItem item3 in CheckBoxList2.Items)
            {
                if (item3.Selected==true)
                {
                    File.Delete(Server.MapPath(item3.Text.Substring(34)));
                    Label2.Text = item3.Text;
                    Response.Write("Resimler Silindi"+Label2.Text);
                    arsilinen2.Add(Label2.Text);
                }
            }
            foreach (var item4 in arsilinen2)
            {
                cn.Open();
                SqlCommand cmd2 = new SqlCommand("delete from resim2 where resimYolu=@resimyolu2",cn);
                cmd2.Parameters.AddWithValue("resimyolu2",item4);
                cmd2.ExecuteNonQuery();
                cn.Close();

            }





            Response.Redirect("uyeSayfasi.aspx");
        }

     
    }
}