using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeManagementLibraryPOE;
using System.Drawing;


namespace TimeManagementASPNET
{
    public partial class TMLoginPage : System.Web.UI.Page
    {
        TimeManagementPOE lib = new TimeManagementPOE();
        public static string theUser;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            //assigning variables from my class library to my login username and password input 
            lib.lgUserName = lgUnameTxt.Text.ToString();
            lib.lgPassword = lgPwordTxt.Text;

            //local variable thats used in TMPage1 for recognzing a specific user
            theUser = lgUnameTxt.Text;

            //variables to store the hashed password and the query for the users details
            string hashPword = lib.TheEncryptor(lib.lgPassword);
            string selQuery = "SELECT * FROM UserDetails WHERE UserName = '" + lib.lgUserName + "'AND Password = '" + hashPword + "'";

            SqlConnection con4 = new SqlConnection(lib.connString);
            con4.Open();

            SqlCommand doCmd = new SqlCommand(selQuery, con4);
            SqlDataReader dr2 = doCmd.ExecuteReader();

            //this will show the main window to start the application to the user if the login details are correct 
            if (dr2.Read())
            {

                Response.Redirect("TMMainPage.aspx");

            }
            //if the login details are incorrect, the user will be denied access and will be shown a message telling them their login details were incorrect
            else
            {
                lgTmpLbl.ForeColor = Color.Red;
                lgTmpLbl.Text = "Incorrect username or password!";
            }
            con4.Close();
        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("TMRegisterPage.aspx");

        }
    }
}