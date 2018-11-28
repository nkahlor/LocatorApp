using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocatorApp
{
    public partial class Member : System.Web.UI.Page
    {
        protected void Page_Load ( object sender, EventArgs e )
        {
            //Load state and zip from session state
        }
        
        protected void Save_Info_Btn_Click ( object sender, EventArgs e )
        {
            HttpCookie memberDataCookie = new HttpCookie ( "memberDataCookie" );
            memberDataCookie [ "state" ] = Member_State_Text.Text;
            memberDataCookie [ "zip" ] = Member_Zip_Text.Text;
            memberDataCookie.Expires = DateTime.Now.AddMonths ( 6 );
            Response.Cookies.Add ( memberDataCookie );

            SaveLoadInfo.Text = "Data saved to cookies!";
        }

        protected void Load_Info_Btn_Click ( object sender, EventArgs e )
        {
            HttpCookie memberDataCookie = Request.Cookies.Get( "memberDataCookie" );
            if ( memberDataCookie == null) {
                SaveLoadInfo.Text = "No saved data found in cookies!";
                return;
            }

            Member_State_Text.Text = memberDataCookie [ "state" ];
            Member_Zip_Text.Text = memberDataCookie [ "zip" ];

            SaveLoadInfo.Text = "Data loaded from cookies!";
        }

        protected void Process_Info_Btn_Click ( object sender, EventArgs e )
        {
            string state = Member_State_Text.Text;
            string zip = Member_Zip_Text.Text;

            if (state == "" || zip == "") {
                ProcessInfo.Text = "ERROR: Please enter your state and ZIP!\n";
                return;
            }

            Webstrar25ServiceReference.Service1Client client = new Webstrar25ServiceReference.Service1Client ( );
            

            //1. Get crime rank from SortStatesByCrimeRank
            double crimeResponse = client.CrimeIndexService ( state );
            CrimeLabel.Text = state + " has a crime index of " + crimeResponse.ToString();

            //2. Get locality of zipcode
            int zipInt = 0;
            bool valid = int.TryParse ( zip, out zipInt );
            if ( valid ) {
                string baseUrl = "http://webstrar25.fulton.asu.edu/page0/Service1.svc/LocalityOfArea?zipcode=";
                Uri uri = new Uri ( baseUrl + zip );
                WebClient proxy = new WebClient ( );
                string answer = proxy.DownloadString ( uri );
                // Shed the quotes from the JSON format
                LocalityLabel.Text = answer.Trim ( new char [] { '"' } );
            } else {
                LocalityLabel.Text = "Invalid zipcode";
            }

            //3. Get week weather forecast for ZIP code
            string [] weatherReponse = client.WeatherService ( zip );
            string weatherStr = "Weather in " + zip + ":<br/>";
            for(int i=0; i<weatherReponse.Length; i++ ) {

                string dayString = "";
                switch (i) {
                    case 0: dayString = "WEATHER TODAY"; break;
                    case 1: dayString = "WEATHER TOMORROW"; break;
                    default: dayString = "WEATHER " + i + " DAYS FROM TODAY"; break;
                }
                weatherStr += dayString  + ":<br/>" + weatherReponse [ i ];
                if (i != weatherReponse.Length-1) {
                    weatherStr += "<br/>";
                }
            }
            WeatherLabel.Text = weatherStr;

            //4. Show nearest Store from ZIP Code
            string storeResponse = client.FindNearestStore ( zip );
            NearestStoreLabel.Text = storeResponse;

          ProcessInfo.Text = "Data processed.";
        }
    }
}