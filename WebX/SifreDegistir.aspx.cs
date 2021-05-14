using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace WebX
{
    public partial class SifreDegistir : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["baglanticonfig"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select kulSifre from uyeTablo where ePosta='" + Session["eposta"] + "'", cnn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr["kulSifre"].ToString();
                }

                cnn.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label1.CssClass = "messagealert";
                Label1.Text = "boş şifre olmaz!!!";
            }
            else
            {
                cnn.Open();
                SqlCommand cmdGuncelle = new SqlCommand("update uyeTablo set kulSifre=@sifre where ePosta=@eposta ", cnn);
                cmdGuncelle.Parameters.AddWithValue("@sifre", TextBox1.Text);
                cmdGuncelle.Parameters.AddWithValue("@eposta", Session["eposta"]);
                cmdGuncelle.ExecuteNonQuery();
                Label1.CssClass = "olumlumesaj";
                Label1.Text = "Şifreniz Başarıyla Güncellendi...";
                cnn.Close();

            }

        }
    }
}