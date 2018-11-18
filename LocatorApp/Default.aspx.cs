using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocatorApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Member_Btn_Click(object sender, EventArgs e)
        {
            // Check cookies to see if logging in is required
            HttpCookie memberCookie = Request.Cookies["memberCookie"];
            if (memberCookie == null || memberCookie["username"] == "")
                Response.Redirect("MemberLogin.aspx");
            else
                Response.Redirect("Member.aspx");
        }

        protected void Staff_Btn_Click(object sender, EventArgs e)
        {
            // Check cookies to see if logging in is required
            /*
            HttpCookie staffCookie = Request.Cookies["staffCookie"];
            if (staffCookie == null || staffCookie["username"] == "")
                Response.Redirect("StaffLogin.aspx");
            else
                Response.Redirect("Staff.aspx");
           */
            Response.Redirect("StaffLogin.aspx");
        }

        protected void Directory_Btn_Click(object sender, EventArgs e)
        {

        }
    }
}