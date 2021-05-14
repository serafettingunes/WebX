using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;
using System.Configuration;
namespace WebX
{
    public enum MessageType { Error, Success }
    public partial class uye : System.Web.UI.Page
    {



        protected void ShowMessage(string message, MessageType type)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + message + "','" + type + "');", true);
        }
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["baglanticonfig"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {


        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("uyeGiris.aspx");
        }

        protected void btnkayitol_Click(object sender, EventArgs e)
        {


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            cn.Open();
            bool kontrol2 = true;
            bool kontrol1 = txtEmail.Text.Contains("@gmail.com");
            Regex r = new Regex(@"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
            if (r.IsMatch(txtEmail.Text))
            {
                kontrol2 = true;
            }
            else
            {
                kontrol2 = false;
            }
            try
            {

                if (txtKulAdiKayit.Text != "" && txtSifreKayit.Text != "" && txtSifreKayitTekrar.Text != "" && txtEmail.Text != "" && (txtSifreKayit.Text == txtSifreKayitTekrar.Text) && (kontrol1 == true && kontrol2 == true))
            {
                Random rnd = new Random();
                int a = rnd.Next(1000000, 9999999);

                SqlCommand cmd = new SqlCommand("insert into uyeTablo(kulAdi,kulSifre,ePosta,aktivasyonkodu) values(@kulAdi,@kulSifre,@eposta," + a + ")", cn);
                cmd.Parameters.AddWithValue("@kulAdi", txtKulAdiKayit.Text);
                cmd.Parameters.AddWithValue("@kulSifre", txtSifreKayit.Text);
                cmd.Parameters.AddWithValue("@eposta", txtEmail.Text.ToLower());
                cmd.ExecuteNonQuery();
                Session["kuladi"] = txtKulAdiKayit.Text;
                //mesajim.CssClass = "olumlumesaj";
                //mesajim.Text = "Kayıtınız başarıyla oluşturuldu...";







                MailMessage email = new MailMessage();
                email.Priority = MailPriority.High;
                string Host = "smtp.gmail.com";
                string smtpUserName = "serafettingunes40@gmail.com";
                string smtpPassword = "değiştir";
                email.From = new MailAddress("serafettingunes40@gmail.com");
                //int smtpPort = 587;
                int smtpPort = 587;
                email.IsBodyHtml = true;
                email.Subject = "Aktivasyon Şifresi";
                email.Body = a.ToString();
                email.To.Add(new MailAddress(txtEmail.Text.ToLower()));
                email.BodyEncoding = System.Text.Encoding.UTF8;
                SmtpClient smtp = new SmtpClient(Host, smtpPort);
                smtp.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
                smtp.EnableSsl = true;
                smtp.Send(email);
                Session["aktivasyon"] = a.ToString();
                Response.Redirect("aktivasyon.aspx");


            }
            else
            {

                mesajim.CssClass = "messagealert";

                mesajim.Text = "Lütfen boş alanları doldurunuz , şifreleri aynı giriniz veya epostayı doğru giriniz!!!";
            }

        }
            catch (Exception ex)
            {
                mesajim.CssClass = "messagealert";
                mesajim.Text = "Bu eposta veritabanında var başka bir eposta deneyin !!! ";

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Resimler");
        }
    }


}