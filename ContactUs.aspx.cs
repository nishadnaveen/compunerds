using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage msg = new MailMessage();
        MailAddress frm = new MailAddress("sudeep71195@gmail.com", "Admin");
        msg.From = frm;
        MailAddress to = new MailAddress("nishad.naveen007@gmail.com");
        msg.To.Add(to);
        msg.Subject = TextBox1.Text;
        msg.Body = TextBox3.Text;
        if (FileUpload1.HasFile)
        {
            Attachment a = new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName);
            msg.Attachments.Add(a);
        }
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        NetworkCredential nkc = new NetworkCredential("sudeep71195@gmail.com", "");
        smtp.Credentials = nkc;
        smtp.EnableSsl = true;
        try
        {
            smtp.Send(msg);
            Response.Write("<script>alert('Query Submitted')</script>");
        }
        catch(Exception ex)
        {
            Label1.Text=ex.Message;

        }
    }
}