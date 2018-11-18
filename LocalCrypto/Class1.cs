//Local cryptography function - Scott
//  After building "LocalCrypto", .dll file is found in LocalCrypt/bin
//  From web,add reference and brose to this .dll
//  Then add "using LocalCrypto" and use LocalCrypto.Cryotography.Hash(string)

using System;
using System.Text;
using System.Security.Cryptography;

namespace LocalCrypto
{
    public class Cryptography
    {
        public static string Hash( string str )
        {
            //Prep for hash
            byte [] data = Encoding.ASCII.GetBytes ( str );
            byte [] result;
            string resultStr;
            SHA256 shaM = new SHA256Managed ( );
            
            //Hash and return
            result = shaM.ComputeHash ( data );
            resultStr = BitConverter.ToString ( result );
            return resultStr;
        }
    }
}
