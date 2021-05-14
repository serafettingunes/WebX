using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Configuration;
namespace WebX
{
    public partial class uyeSayfasi : System.Web.UI.Page
    {
        int tikla = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           


           





        }
        string uzanti = "";
        string resimadi = "";
        ArrayList sayacc = new ArrayList();
    
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["baglanticonfig"].ConnectionString);
        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("uyeGiris.aspx");

        }
        string kuladigelen = "";

        protected void btnResimEkle_Click(object sender, EventArgs e)
        {
            int sayacx = 0;
            int sayacx2 = 0;
            cn.Open();
            if (fuResimYukle.HasFile && (rb1.Checked || rb2.Checked))
            {
                if (fuResimYukle.HasFile && rb1.Checked)
                {
                    Session["konum"] = "1";
                    SqlCommand cmd2 = new SqlCommand("select sayac from sayacTbl", cn);
                    SqlDataReader dr2 = cmd2.ExecuteReader();
                    if (dr2.Read())
                    {
                        sayacx = Convert.ToInt32(dr2[0]);
                    }
                    dr2.Close();
                    int yenisayac = 0;
                    yenisayac = sayacx;
                    sayacx = sayacx + 1;

                    SqlCommand cmdsayacGuncelle = new SqlCommand("update sayacTbl set sayac='" + sayacx + "' where ID=1 ", cn);
                    cmdsayacGuncelle.ExecuteNonQuery();






                    // uzanti = Path.GetExtension(sayacc[0] + "Resim" + fuResimYukle.FileName);
                    fuResimYukle.SaveAs(Server.MapPath("Resimler/" + yenisayac + "Resim" + fuResimYukle.FileName));


                    SqlCommand cmd1 = new SqlCommand("select kulAdi from uyeTablo where ePosta='" + Session["eposta"].ToString().ToLower() + "'", cn);
                    SqlDataReader dr = cmd1.ExecuteReader();
                    if (dr.Read())
                    { kuladigelen = dr[0].ToString(); }


                    Session["kuladigelen"] = kuladigelen;

                    dr.Close();

                    SqlCommand cmd = new SqlCommand("insert into resim(resimYolu,uyeeposta, kuladi) values(@resimyolu,'" + Session["eposta"] + "', '" + kuladigelen + "')", cn);


                    cmd.Parameters.AddWithValue("@resimyolu", "https://resim.serafettingunes.com/Resimler/" + yenisayac + "Resim" + fuResimYukle.FileName);



                    cmd.ExecuteNonQuery();
                    dr2.Close();
                    cn.Close();











                }
                else if (fuResimYukle.HasFile && rb2.Checked)
                {
                    if (cn.State == ConnectionState.Closed)
                    {
                        cn.Open();
                    }
                    Session["konum"] = "2";

                    SqlCommand cmd2 = new SqlCommand("select sayac from sayacTbl2", cn);
                    SqlDataReader dr2 = cmd2.ExecuteReader();
                    if (dr2.Read())
                    {
                        sayacx2 = Convert.ToInt32(dr2[0]);
                    }
                    dr2.Close();
                    int yenisayac2 = 0;
                    yenisayac2 = sayacx2;
                    sayacx2 = sayacx2 + 1;

                    SqlCommand cmdsayacGuncelle = new SqlCommand("update sayacTbl2 set sayac='" + sayacx2 + "' where ID=1 ", cn);
                    cmdsayacGuncelle.ExecuteNonQuery();




                    //uzanti = Path.GetExtension(fuResimYukle.PostedFile.FileName);
                    fuResimYukle.SaveAs(Server.MapPath("Resimler2/" + yenisayac2 + "Resim" + fuResimYukle.FileName));


                    SqlCommand cmd1 = new SqlCommand("select kulAdi from uyeTablo where ePosta='" + Session["eposta"].ToString().ToLower() + "'", cn);
                    SqlDataReader dr = cmd1.ExecuteReader();
                    if (dr.Read())
                    { kuladigelen = dr[0].ToString(); }


                    Session["kuladigelen"] = kuladigelen;



                    SqlCommand cmd = new SqlCommand("insert into resim2(resimYolu,uyeeposta, kuladi) values(@resimyolu,'" + Session["eposta"] + "', '" + kuladigelen + "')", cn);
                    dr.Close();
                    cmd.Parameters.AddWithValue("@resimyolu", "https://resim.serafettingunes.com/Resimler/" + yenisayac2 + "Resim" + fuResimYukle.FileName);
                    cmd.ExecuteNonQuery();

                    cn.Close();


                }
                Response.Redirect("Resimler");
            }
            else if (!fuResimYukle.HasFile && (!rb1.Checked && !rb2.Checked))
            {
                
                Label1.Text = "RESİM YÜKLEYİNİZ VE SIRAYI SEÇİNİZ";
                Label1.CssClass = "messagealert";
            }
           
        }



        // resimküçültmek
        Bitmap yeniimg = new Bitmap(210,210);
        
       

        

        protected void fuResimYukle_Unload(object sender, EventArgs e)
        {
            if (fuResimYukle.HasFiles == true)
            {
                btnResimEkle.Visible = true;
                rb1.Visible = false;
                rb1.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Kullanici2.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ResimSilme.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SifreDegistir.aspx");
        }
    }
}





