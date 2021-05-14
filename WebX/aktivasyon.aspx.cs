using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace WebX
{
    public partial class aktivasyon : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void aGonder_Click(object sender, EventArgs e)
        {
             string baglanticumle = ConfigurationManager.ConnectionStrings["baglanticonfig"].ConnectionString;
        SqlConnection cn = new SqlConnection(baglanticumle);
        string ativasyonsife =Session["aktivasyon"].ToString();
            if (txtAktivasyon.Text==ativasyonsife)
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("update uyeTablo set  ePostaKontrol='1' where aktivasyonkodu='"+ativasyonsife+"'  ", cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("uyeGiris.aspx");
            }
            
        }
    }
}