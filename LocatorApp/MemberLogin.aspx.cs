﻿using System;
using System.IO;
using System.Web;

namespace LocatorApp
{
    // Written by Nicholas Kahlor
    public partial class MemberLogin : System.Web.UI.Page
    {
        private static string captcha_str = null;
        private static bool initial_load = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Only generate a captcha the first time the page is loaded
            if (initial_load)
            {
                New_Captcha();
                initial_load = false;
            }
        }
        
        protected void Login_Btn_Click(object sender, EventArgs e)
        {
            // Check the Members.xml file in App_Data for the credentials supplied
            if (DataManager.ValidMember(Username_Text.Text, Password_Text.Text))
            {
                // If the credentials are valid, validate the captcha next
                if (Captcha_Text.Text != captcha_str)
                {
                    Captcha_Lbl.Text = "Incorrect Entry, Try Again.";
                }
                else
                {
                    // Create cookie to remember this user
                    HttpCookie memberCookie = new HttpCookie("memberCookie");
                    memberCookie["username"] = Username_Text.Text;
                    memberCookie["password"] = LocalCrypto.Cryptography.Hash( Password_Text.Text );
                    memberCookie.Expires = DateTime.Now.AddMonths(6);
                    Response.Cookies.Add(memberCookie);
                    Response.Redirect("Member.aspx");
                }
            }
            else
            {
                Captcha_Lbl.Text = "Invalid Password or Username";
            }
        }

        protected void Redo_Captcha_Btn_Click(object sender, EventArgs e)
        {
            New_Captcha();
        }

        // Helper function to generate a new captcha
        private void New_Captcha()
        {
            ImageVerifySvc.ServiceClient captcha_svc = new ImageVerifySvc.ServiceClient();
            captcha_str = captcha_svc.GetVerifierString("4");
            using (Stream image_stream = captcha_svc.GetImage(captcha_str))
            {
                MemoryStream ms = new MemoryStream();
                image_stream.CopyTo(ms);
                ms.Position = 0;
                System.Drawing.Image img = System.Drawing.Image.FromStream(ms);
                System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(img);
                string savePath = Server.MapPath(@"Images/captcha.jpg");
                bmp.Save(savePath, System.Drawing.Imaging.ImageFormat.Jpeg);
                Captcha_Img.ImageUrl = "~/Images/captcha.jpg";
            }
        }
    }
}