using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace WebX
{
    public partial class SifremiUnuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["baglanticonfig"].ConnectionString);
        object sifren = 0;
        protected void btnGmailGonder_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select kulSifre from uyeTablo where ePosta='"+txtEposta.Text+"'",cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count!=null)
            {
                sifren = dt.Rows[0][0];
            }
            cn.Close();




            MailMessage email = new MailMessage();
            string Host = "smtp.gmail.com";
            string smtpUserName = "serafettingunes40@gmail.com";
            string smtpPassword = "değiştir";
            email.From = new MailAddress("serafettingunes40@gmail.com");
            int smtpPort = 587;
            email.IsBodyHtml = true;
            email.Subject = " Giriş Şifresi";
            email.Body = sifren.ToString();
            email.To.Add(new MailAddress(txtEposta.Text.ToLower()));
            email.BodyEncoding = System.Text.Encoding.UTF8;
            SmtpClient smtp = new SmtpClient(Host, smtpPort);
            smtp.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp.EnableSsl = true;
            smtp.Send(email);

            mesaj.CssClass = "olumlumesaj";
            mesaj.Text = "Şifreniz başarılı bir şekilde mail adresinize gönderilmiştir";

        }
    }
}