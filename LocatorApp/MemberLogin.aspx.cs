using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocatorApp
{
    public partial class MemberLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Written by Nicholas Kahlor
        protected void Login_Btn_Click(object sender, EventArgs e)
        {
            // TODO verify username and password

            // TODO display CAPTCHA
            ImageVerifySvc.ServiceClient captcha_svc = new ImageVerifySvc.ServiceClient();
            Stream image = captcha_svc.GetImage("4");
           
            // Create cookie to remember this user
            HttpCookie memberCookie = new HttpCookie("memberCookie");
            memberCookie["username"] = Username_Text.Text;
            memberCookie["password"] = Password_Text.Text;
            memberCookie.Expires = DateTime.Now.AddMonths(6);
            Response.Cookies.Add(memberCookie);
            Response.Redirect("Member.aspx");
        }
    }
}