using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

// Written by Nicholas Kahlor
namespace LocatorApp
{
    public class DataManager
    {
        public static bool ValidStaff(string user, string pass)
        {
            return FindMemberInXml("Staff.xml", user, pass);
        }

        public static bool ValidMember(string user, string pass)
        {
            return FindMemberInXml("Members.xml", user, pass);

        }

        public void AddMember(string user, string pass)
        {
            AddMemberToXml("Members.xml", user, pass);
        }

        public void AddStaff(string user, string pass)
        {
            AddMemberToXml("Staff.xml", user, pass);
        }

        // Helper function to add to the Staff and Member files
        private void AddMemberToXml(string filename, string user, string pass)
        {
            string path = AppDomain.CurrentDomain.BaseDirectory + "App_Data/";
            XDocument doc = XDocument.Load(path + filename);
            XElement root = doc.Element("members");
            IEnumerable<XElement> rows = root.Descendants("member");
            XElement firstRow = rows.First();

            XElement username = new XElement("username", user);
            XElement password = new XElement("password", pass);
            XElement member = new XElement("member");
            member.Add(username);
            member.Add(password);

            firstRow.AddBeforeSelf(member);
            doc.Save(path + filename);
        }

        private static bool FindMemberInXml(string filename, string user, string pass)
        {
            string path = AppDomain.CurrentDomain.BaseDirectory + "App_Data/";
            XDocument doc = XDocument.Load(path + filename);
            XElement root = doc.Element("members");
            IEnumerable<XElement> credentials = from username in root.Elements("member")
                                                select username;
            string tmp = "";
            bool valid = false;
            foreach (XElement elem in credentials)
            {
                if (elem.Value == user + pass)
                {
                    valid = true;
                    break;
                }
            }

            return valid;
        }
    }
}