using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

namespace AMC_EGRS
{

    public class GmailSender
    {
        public GmailSender()
        {

        }

        public static bool SendMail(string to, string subject, string message)
        {
            try
            {
                string gMailAccount = "amcegrsextensive@gmail.com";
                string password = "amc@1234";
                NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(gMailAccount, "AMC EGRS");
                msg.To.Add(new MailAddress(to));
                msg.Subject = subject;
                msg.Body = message;
                msg.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = loginInfo;
                client.Send(msg);
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }


    }

}