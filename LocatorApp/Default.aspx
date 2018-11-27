<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LocatorApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main-page">
        <h1>Welcome to the Locator App!</h1>
        <p>This application allows you to input a set of conditions for your ideal living conditions. We will analyze these choices, and based on them
            report back where we think you would enjoy living!
        </p>
        <p>To access this application, please click the &#39;Members&#39; button. If you are not already logged in, we will ask you to enter your credentials or sign up for a free membership.</p>
        <p>To view information about the services used to implement the application and test them individually, please click the &#39;Service Directory&#39; button.</p>
        <p>Only authorized staff will be able to access the staff page through the &#39;Staff&#39; button.</p>
        <p>
            <asp:Button ID="Member_Btn" runat="server" Text="Members" Width="150px" OnClick="Member_Btn_Click" />
            <asp:Button ID="Staff_Btn" runat="server" Text="Staff" Width="150px" OnClick="Staff_Btn_Click" />
        </p>
        <p>Developed by Nick Kahlor and Scott Molt</p>
    </div>
    
    <html>
<head>

</head>
<body>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#aabcfe;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#669;background-color:#e8edff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#039;background-color:#b9c9fe;}
.tg .tg-hmp3{background-color:#D2E4FC;text-align:left;vertical-align:top}
.tg .tg-baqh{text-align:center;vertical-align:top}
.tg .tg-mb3i{background-color:#D2E4FC;text-align:right;vertical-align:top}
.tg .tg-lqy6{text-align:right;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
    <table class="tg" style="undefined;table-layout: fixed; width: 1020px">
<colgroup>
<col style="width: 192px">
<col style="width: 106px">
<col style="width: 322px">
<col style="width: 400px">
</colgroup>
  <tr>
    <th class="tg-baqh"><br>Component Directory Table: Project 5</th>
    <th class="tg-0lax"></th>
    <th class="tg-0lax"></th>
    <th class="tg-0lax"></th>
  </tr>
  <tr>
    <td class="tg-hmp3">Provider Name<br></td>
    <td class="tg-hmp3">Component Name</td>
    <td class="tg-hmp3">Component Description</td>
    <td class="tg-hmp3">How to Test</td>
  </tr>
  <tr>
    <td class="tg-0lax">Scott<br></td>
    <td class="tg-0lax"><span style="font-weight:400;font-style:normal;text-decoration:none">Global.asax</span></td>
    <td class="tg-lqy6"><span style="font-weight:400;font-style:normal;text-decoration:none">Global.asax file which has handlers for Application and Session start/end</span></td>
    <td class="tg-lqy6"><span style="font-weight:400;font-style:normal;text-decoration:none">Visit the website in a new incognito or anonymous window. The webpage will detect the new session and let you know your session number. Alternatively, you can delete cookies for hte page and reload, which will also trigger a new session.</span></td>
  </tr>
  <tr>
    <td class="tg-hmp3">Scott<br></td>
    <td class="tg-hmp3"><span style="font-weight:400;font-style:normal;text-decoration:none">Hashing DLL</span></td>
    <td class="tg-mb3i"><span style="font-weight:400;font-style:normal;text-decoration:none">Standalone DLL which includes a non-web function that hashes a string</span></td>
    <td class="tg-mb3i"><span style="font-weight:400;font-style:normal;text-decoration:none"><a href = "http://webstrar25.fulton.asu.edu/page8/">Visit the TryIt Page</a></span></td>
  </tr>
  <tr>
    <td class="tg-hmp3">Nick<br></td>
    <td class="tg-hmp3"><span style="font-weight:400;font-style:normal;text-decoration:none">Cookie and Sessions</span></td>
    <td class="tg-mb3i"><span style="font-weight:400;font-style:normal;text-decoration:none">Username and hashed password are stored on client machine with cookie, and on server using sessions</span></td>
    <td class="tg-mb3i"><span style="font-weight:400;font-style:normal;text-decoration:none">Visit the member's page and enter your information to login. Try this again, and you should be automatically logged in.</span></td>
  </tr>
  <tr>
    <td class="tg-hmp3">Nick<br></td>
    <td class="tg-hmp3"><span style="font-weight:400;font-style:normal;text-decoration:none">User Control Captcha/ Login</span></td>
    <td class="tg-mb3i"><span style="font-weight:400;font-style:normal;text-decoration:none">An image captcha service is used to secure the member login page</span></td>
    <td class="tg-mb3i"><span style="font-weight:400;font-style:normal;text-decoration:none">Visit the member page and attempt to login - A valid captcha must be entered to login.</span></td>
  </tr>
  <tr>
    <td class="tg-hmp3">Nick<br></td>
    <td class="tg-hmp3"><span style="font-weight:400;font-style:normal;text-decoration:none">XML File Manipulation</span></td>
    <td class="tg-mb3i"><span style="font-weight:400;font-style:normal;text-decoration:none">An XML file is used to store members and staff</span></td>
    <td class="tg-mb3i"><span style="font-weight:400;font-style:normal;text-decoration:none">Visit the Staff page to add or remove users, which is done behind the scenes with XML files. Use the default Staff password.</span></td>
  </tr>
</table>



<table class="tg" style="undefined;table-layout: fixed; width: 1020px">
<colgroup>
<col style="width: 192px">
<col style="width: 106px">
<col style="width: 77px">
<col style="width: 43px">
<col style="width: 602px">
</colgroup>
  <tr>
    <th class="tg-baqh"><br>Service Directory: Project 3</th>
    <th class="tg-0lax"></th>
    <th class="tg-0lax"></th>
    <th class="tg-0lax"></th>
    <th class="tg-0lax"></th>
  </tr>
  <tr>
    <td class="tg-hmp3">Provider Name<br></td>
    <td class="tg-hmp3">Service Name</td>
    <td class="tg-hmp3">Required?</td>
    <td class="tg-hmp3">TryIt Link</td>
    <td class="tg-hmp3">Service Description</td>
  </tr>
  <tr>
    <td class="tg-0lax">Scott<br></td>
    <td class="tg-0lax"><span style="font-weight:400;font-style:normal;text-decoration:none">GPS to City</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Input: String, String</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Output: String</span><br></td>
    <td class="tg-lqy6">Required</td>
    <td class="tg-lqy6"><a href = "http://webstrar25.fulton.asu.edu/page7/">TryIt</a></td>
    <td class="tg-lqy6"><span style="font-weight:400;font-style:normal;text-decoration:none">Given GPS Longitude/Latitude, give the City/ State. If no city can be found, return an error message.</span></td>
  </tr>
  <tr>
    <td class="tg-hmp3">Scott<br></td>
    <td class="tg-hmp3"><span style="font-weight:400;font-style:normal;text-decoration:none">City to GPS</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Input: String, String</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Output: String</span></td>
    <td class="tg-mb3i">Required</td>
    <td class="tg-mb3i"><a href = "http://webstrar25.fulton.asu.edu/page7/">TryIt</a></td>
    <td class="tg-mb3i"><span style="font-weight:400;font-style:normal;text-decoration:none">Given City and State, give the latitude/longitude. If the city and/or state are invalid, return an error message. Ie "ERROR: Bad City." or "ERROR: Bad City. Bad State."</span></td>
  </tr>
  <tr>
    <td class="tg-0lax">Scott</td>
    <td class="tg-0lax"><span style="font-weight:400;font-style:normal;text-decoration:none">Nearest Store</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Input: String</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Output: String</span></td>
    <td class="tg-lqy6">Required</td>
    <td class="tg-lqy6"><a href = "http://webstrar25.fulton.asu.edu/page7/">TryIt</a></td>
    <td class="tg-lqy6"><br><span style="font-weight:400;font-style:normal;text-decoration:none">Use an existing online service or API to find the provided storeName closest to the zipcode and return the address. If no store is found, return an error message.  (Optional: if the store is further than 20 miles, from the zipcode, return a “no stores within 20 miles” message). You may find APIs that return store list from site such as Foursquare.com or Yelp.com, and http://www.programmableweb.com</span></td>
  </tr>
  <tr>
    <td class="tg-hmp3">Scott</td>
    <td class="tg-hmp3"><span style="font-weight:400;font-style:normal;text-decoration:none">ZIP to GPS</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Input: String</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Output: String, String</span></td>
    <td class="tg-hmp3">Elective (Challenging)</td>
    <td class="tg-hmp3"><a href = "http://webstrar25.fulton.asu.edu/page6/">TryIt</a></td>
    <td class="tg-hmp3"><span style="font-weight:400;font-style:normal;text-decoration:none">Given a US ZIP code, return the GPS coordinates. If the ZIP code is invalid, return GPS 0,0</span></td>
  </tr>
  <tr>
    <td class="tg-0lax">Scott</td>
    <td class="tg-0lax"><span style="font-weight:400;font-style:normal;text-decoration:none">GPS to ZIP</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Input: String, String</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Output: String</span></td>
    <td class="tg-0lax">Elective (Challenging)</td>
    <td class="tg-0lax"><a href = "http://webstrar25.fulton.asu.edu/page6/">TryIt</a></td>
    <td class="tg-0lax"><span style="font-weight:400;font-style:normal;text-decoration:none">Given GPS latitude and longitude, return the ZIP code. If none can be found, return an error message</span></td>
  </tr>
  <tr>
    <td class="tg-hmp3">Nick</td>
    <td class="tg-hmp3"><span style="font-weight:400;font-style:normal;text-decoration:none">Weather Service</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Input: String</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Output: String[]</span></td>
    <td class="tg-hmp3">Required</td>
    <td class="tg-hmp3"><a href = "http://webstrar25.fulton.asu.edu/page3/">TryIt</a></td>
    <td class="tg-hmp3"><span style="font-weight:400;font-style:normal;text-decoration:none">Create 5 day weather forecast based on zipcode location</span></td>
  </tr>
  <tr>
    <td class="tg-0lax">Nick</td>
    <td class="tg-0lax"><span style="font-weight:400;font-style:normal;text-decoration:none">Crime Data Service</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Input: string</span><br><span style="font-weight:400;font-style:normal;text-decoration:none">Output: double</span></td>
    <td class="tg-0lax">Required</td>
    <td class="tg-0lax"><a href = "http://webstrar25.fulton.asu.edu/page3/">TryIt</a></td>
    <td class="tg-0lax"><span style="font-weight:400;font-style:normal;text-decoration:none">Create service that returns crime data for a given location.</span></td>
  </tr>
  <tr>
    <td class="tg-hmp3">Nick</td>
    <td class="tg-hmp3">Sort States by Crime<br>Input: void<br>Output: string[]<br></td>
    <td class="tg-hmp3">Elective (Medium)</td>
    <td class="tg-hmp3"><a href = "http://webstrar25.fulton.asu.edu/page2/">TryIt</a></td>
    <td class="tg-hmp3"><span style="font-weight:400;font-style:normal;text-decoration:none">Sort every state based on their crime rates, from lowest rate to greatest.</span><br></td>
  </tr>
  <tr>
    <td class="tg-0lax">Nick</td>
    <td class="tg-0lax">Temperature Conversion<br>Input: double, bool<br>Output: double<br></td>
    <td class="tg-0lax">Elective (Easy)</td>
    <td class="tg-0lax"><a href = "http://webstrar25.fulton.asu.edu/page2/">TryIt</a></td>
    <td class="tg-0lax">Convert a temperature from celsius to fahrenheit or vice versa.</td>
  </tr>
  <tr>
    <td class="tg-hmp3">Nick</td>
    <td class="tg-hmp3">Determine Locality Service<br>Input: string<br>Output: string<br></td>
    <td class="tg-hmp3">Elective (Medium)</td>
    <td class="tg-hmp3"><a href = "http://webstrar25.fulton.asu.edu/page2/">TryIt</a></td>
    <td class="tg-hmp3">Determine whether a given zipcode is a suburb, a city, or a rural area.</td>
  </tr>
</table>
<p>
<br>
page0 is Nick's RESTful service
<br>
page1 is Nick's WSDL services
<br>
page2 is Nick's TryIt Page for elective services
<br>
page3 is Nick's TryIt Page for required services
<br>
page4 is Scott's RESTful service
<br>
page5 is Scott's WSDL services
<br>
page6 is Scott's TryIt Page for elective services
<br>
page7 is Scott's TryIt Page for required services
    <br />
page8 is Scott's TryIt Page for the Hash DLL
</p>
</body>
</html>

</asp:Content>
