using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace VesteBem
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void botao_ServerClick(object sender, EventArgs e)
        {
            try
            {

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(email.Value);
                mail.To.Add("vestebem2020@gmail.com");
                mail.Subject = $"Critica-{name.Value}-{email.Value}";
                mail.Body = comment.Value;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                smtp.Port = 25;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential("vestebem2020@gmail.com", "nana1242");//Email e password
                smtp.EnableSsl = true;
                smtp.Send(mail);

            }
            catch (Exception ex)
            {
                Response.Write("Exception in sendEmail:" + ex.Message);
            }
        }
    }
}