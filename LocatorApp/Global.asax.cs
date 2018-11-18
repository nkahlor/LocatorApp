using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace LocatorApp
{
    public class Global : HttpApplication
    {
        const string SESSION_COUNT = "SessionCounter";

        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            //RouteConfig.RegisterRoutes(RouteTable.Routes);
            //BundleConfig.RegisterBundles(BundleTable.Bundles);

            Application [ SESSION_COUNT ] = 0;
        }

        void Application_End(object sender, EventArgs e)
        {
            Response.Write("<hr />The Website was last visited on " + DateTime.Now.ToString());
        }

        void Application_Error ( object sender, EventArgs e )
        {
            //Unhandled error
        }

        void Session_Start ( object sender, EventArgs e )
        {
            Int32 count = ( Int32 ) Application [ SESSION_COUNT ];
            count++;
            Application [ SESSION_COUNT ] = count;


            Response.Write ( "<hr />New session detected: You are Session #" + count );
        }

        void Session_End ( object sender, EventArgs e )
        {
            //This event only called when session state mode set to
            //  InProc in the Web.config file. If session mode is set to
            //  StateServer or SQLServer, the event is not raised
            Int32 count = ( Int32 ) Application [ SESSION_COUNT ];
            count--;
            Application [ SESSION_COUNT ] = count;
        }
    }
}