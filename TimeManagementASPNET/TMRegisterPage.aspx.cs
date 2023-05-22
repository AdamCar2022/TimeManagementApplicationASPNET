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
    public partial class TMRegisterPage : System.Web.UI.Page
    {
        TimeManagementPOE lib = new TimeManagementPOE();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegBackToLoginBtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("TMLoginPage.aspx");

        }

        protected void RegSubmitBtn_Click(object sender, EventArgs e)
        {

            //assigning variables from my class library to my registration username and password input 
            lib.userName = regUnameTxt.Text.ToString();
            lib.passWord = regPwordTxt.Text;

            //error handling to see if the username and password textboxes are empty or not
            if (lib.userName.Length > 0 && lib.passWord.Length > 0)
            {

                SqlConnection con2 = new SqlConnection(lib.connString);

                //string variable to store the hashed password 
                string pwords = lib.TheEncryptor(lib.passWord);

                //opening the connection
                con2.Open();

                //error handling to see if the user exists in the database
                string searchQuery = "SELECT * FROM UserDetails WHERE Username = '" + lib.userName + "';";

                SqlCommand cmd2 = new SqlCommand(searchQuery, con2);
                SqlDataReader dr1 = cmd2.ExecuteReader();

                if (dr1.Read())
                {
                    tmpLbl1.ForeColor = Color.Red;
                    tmpLbl1.Text = "This username has already been used";
                }
                else
                {
                    try
                    {
                        //if the user isnt in the database, the account will be made 
                        string accSaved = "Account saved succesfully!";
                        string insertQuery1 = "INSERT INTO UserDetails (UserName, Password) VALUES ('" + lib.userName + "','" + pwords + "');";

                        SqlCommand cmd3 = new SqlCommand(insertQuery1, con2);
                        cmd3.ExecuteNonQuery();

                        tmpLbl1.ForeColor = Color.Green;
                        tmpLbl1.Text = accSaved;

                        regUnameTxt.Text = "";
                        regPwordTxt.Text = "";



                    }
                    //if the user account cant be made, an error will be shown
                    catch (Exception ex1)
                    {
                        tmpLbl1.ForeColor = Color.Red;
                        tmpLbl1.Text = ex1.ToString();
                    }
                    con2.Close();
                }

            }

            else
            {
                //message to show that their is an empty username or password 
                string msg2 = "Empty username or password";

                tmpLbl1.ForeColor = Color.Red;
                tmpLbl1.Text = msg2.ToString();
            }

        }

    }
    }