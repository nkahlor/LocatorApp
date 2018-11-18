using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LocalCrypto;

namespace CryptoTryIt
{
    public partial class _Default : Page
    {
        protected void btnHash_click ( object sender, EventArgs e )
        {
            try {
                string input = inputLabel.Text;
                if ( input == "" )
                    outputLabel.Text = "Please enter a string to hash.";
                else {
                    string hash = LocalCrypto.Cryptography.Hash(input);
                    outputLabel.Text = hash;
                }
            } catch ( Exception dc ) {
                outputLabel.Text = dc.Message.ToString ( );
            }
        }
    }
}