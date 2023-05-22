using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace TimeManagementLibraryPOE
{
    public class TimeManagementPOE
    {

        //variables to store user details and connection string to the database
        public string userName;
        public string passWord;
        public string connString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        public string lgUserName;
        public string lgPassword;

        //variables to store module information and remaining hours information
        public string modCode;
        public string modName;
        public int modNumCredits;
        public int modClassHours;
        public int semNumWeeks;
        public string startDate;
        public int workHours;
        public string workHoursDate;

        //variable to store the self study hours
        public int theEquation;


        //method to hash a given string password in the parameters
        public string TheEncryptor(string password)
        {

            MD5CryptoServiceProvider tmpMD5 = new MD5CryptoServiceProvider();
            StringBuilder sb1 = new StringBuilder();

            byte[] goEncrypt;

            UTF8Encoding goEncode = new UTF8Encoding();

            //encrypting the supplied user password into data that is encrypted
            goEncrypt = tmpMD5.ComputeHash(goEncode.GetBytes(password));

            //takes the encrypted data and creates a new string for the hashed password
            for (int x = 0; x < goEncrypt.Length; x++)
            {
                sb1.Append(goEncrypt[x].ToString());
            }
            //returns the new string
            return sb1.ToString();
        }

    }

}
