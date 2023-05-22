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
    public partial class TMPage1 : System.Web.UI.Page
    {
        TimeManagementPOE lib = new TimeManagementPOE();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ModLogOutBtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("TMLoginPage.aspx");

        }

        protected void ModNextBtn_Click(object sender, EventArgs e)
        {

            
            Response.Redirect("TMPage2.aspx");

        }

        protected void ModAddDetailsBtn_Click(object sender, EventArgs e)
        {

            //assigns variables in the class library to the module information input
            lib.modCode = modCodeTxt.Text;
            lib.modName = modNameTxt.Text;
            lib.modNumCredits = Convert.ToInt32(modNumCreditsTxt.Text);
            lib.modClassHours = Convert.ToInt32(modClassHoursTxt.Text);
            lib.semNumWeeks = Convert.ToInt32(modNumWeeksSemTxt.Text);
            lib.startDate = modStartDateTxt.Text;


            //assigns a variable to the equation for calculating the self study hours
            lib.theEquation = lib.modNumCredits * 10 / lib.semNumWeeks - lib.modClassHours;

            //query to insert the module information input into the ModuleDetails table in the database
            string query1 = "INSERT INTO ModuleDetails (ModuleCode, ModuleName, NumCredits, ClassHoursPerWeek, NumWeeks, StartDate, UserName, SelfStudyHours) VALUES (@ModCode, @ModName, @NumCredits, @ClassHours, @NumWeeks, '" + lib.startDate + "','" + TMLoginPage.theUser + "', '" + lib.theEquation + "')";

            SqlConnection con1 = new SqlConnection(lib.connString);
            con1.Open();

            SqlCommand cmd1 = new SqlCommand(query1, con1);

            cmd1.Parameters.AddWithValue("@ModCode", lib.modCode);
            cmd1.Parameters.AddWithValue("@ModName", lib.modName);
            cmd1.Parameters.AddWithValue("@NumCredits", lib.modNumCredits);
            cmd1.Parameters.AddWithValue("@ClassHours", lib.modClassHours);
            cmd1.Parameters.AddWithValue("@NumWeeks", lib.semNumWeeks);


            cmd1.ExecuteNonQuery();

            //after the query is executed, the input is cleared and a messagebox is shown to tell the user their module info has been added
           modCodeTxt.Text = "";
            modNameTxt.Text = "";
            modNumCreditsTxt.Text = "";
            modClassHoursTxt.Text = "";
            modNumWeeksSemTxt.Text = "";
            modStartDateTxt.Text = "";


            pg1TmpLbl.ForeColor = Color.Green;
            pg1TmpLbl.Text = "Success! Module Added";


        }

        protected void SeeModNameAndSelfStudyHoursBtn_Click(object sender, EventArgs e)
        {

            //this will show the module name and self study hours to the user logged in by displaying it in a listbox 
            SqlConnection aCon = new SqlConnection(lib.connString);
            string aQuery = "SELECT ModuleName, SelfStudyHours FROM ModuleDetails WHERE UserName = '" + TMLoginPage.theUser + "';";

            aCon.Open();
            SqlCommand aCmd = new SqlCommand(aQuery, aCon);

            SqlDataReader aDr = aCmd.ExecuteReader();

            while (aDr.Read())
            {
                lbPage1.Items.Add("MODULE NAME: " + aDr["ModuleName"].ToString() + "\n" + "SELF STUDY HOURS: " + aDr["SelfStudyHours"]);
            }

            aCon.Close();

        }
    }
}