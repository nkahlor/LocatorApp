using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Xsl;

namespace LocatorApp
{
    public partial class Staff : System.Web.UI.Page
    {
        private DataManager dm = new DataManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load(AppDomain.CurrentDomain.BaseDirectory + "App_Data/member.xsl");

            xslt.Transform(AppDomain.CurrentDomain.BaseDirectory + "App_Data/Members.xml",
                            AppDomain.CurrentDomain.BaseDirectory + "App_Data/Members.html");
            xslt.Transform(AppDomain.CurrentDomain.BaseDirectory + "App_Data/Staff.xml",
                            AppDomain.CurrentDomain.BaseDirectory + "App_Data/Staff.html");
            using (StreamReader st2 = new StreamReader(AppDomain.CurrentDomain.BaseDirectory + "App_Data/Staff.html"))
            using (StreamReader st = new StreamReader(AppDomain.CurrentDomain.BaseDirectory + "App_Data/Members.html"))
            {
                Member_Html.Text = st.ReadToEnd();
                Staff_Html.Text = st2.ReadToEnd();
            }
        }

        protected void Add_Member_Btn_Click(object sender, EventArgs e)
        {
            dm.AddMember(Member_User_Text.Text, Member_Pass_Text.Text);
        }

        protected void Add_Staff_Btn_Click(object sender, EventArgs e)
        {
            dm.AddStaff(Staff_User_Text.Text, Staff_Pass_Text.Text);
        }
    }
}