using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace WebX
{
    public partial class uyeGiris : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["baglanticonfig"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click1(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kuladi = "";
            string sifre = "";
            cn.Open();
            SqlCommand cmd = new SqlCommand("select*from uyeTablo where ePosta=@eposta and kulSifre=@kulsifre and ePostaKontrol=1 ", cn);
            cmd.Parameters.AddWithValue("@eposta", txtEposta.Text.ToLower());
            cmd.Parameters.AddWithValue("@kulsifre", txtSifreGiris.Text);
            
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["eposta"] = txtEposta.Text;
                Session["sifre"] = txtSifreGiris.Text;
                mesajim.CssClass = "olumlumesaj";
                mesajim.Text = "Giriş Başarılı";
                Response.Redirect("uyeSayfasi.aspx");
            }
            else
            {
                mesajim.CssClass = "messagealert";
                mesajim.Text = "Giriş Başarısız";
            }
            cn.Close();
            txtEposta.Text = "";
            txtSifreGiris.Text = "";
        }
    }
}