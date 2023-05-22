using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeManagementLibraryPOE;

namespace TimeManagementASPNET
{
    public partial class TMPage2 : System.Web.UI.Page
    {
        TimeManagementPOE lib = new TimeManagementPOE();
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlConnection cnct = new SqlConnection(lib.connString);
                string cbQry = "SELECT ModuleName FROM ModuleDetails WHERE UserName = '" + TMLoginPage.theUser + "'";

                cnct.Open();

                SqlCommand scom = new SqlCommand(cbQry, cnct);
                SqlDataReader datar = scom.ExecuteReader();

                while (datar.Read())
                {
                   whModDD.Items.Add(datar["ModuleName"].ToString());
                }
            }

        }

        protected void SeeRemainingSelfStudyHoursBtn_Click(object sender, EventArgs e)
        {

            //assigning variables from my class library to my work hours textbox and work hours date datepicker
            lib.workHours = Convert.ToInt32(workHoursTxt.Text);
            lib.workHoursDate = whDateTxt.Text;

            //updates the ModuleDetails table to add the remaining self study hours calculation using the work hours textbox input
            SqlConnection con5 = new SqlConnection(lib.connString);
            string goQry = "UPDATE ModuleDetails SET RemainingHours = SelfStudyHours - @workhours";
            con5.Open();
            SqlCommand cmd5 = new SqlCommand(goQry, con5);
            cmd5.Parameters.AddWithValue("@workhours", lib.workHours);
            cmd5.ExecuteNonQuery();
            con5.Close();

            //will show the module name and the remaining self study hours of the user that is logged in and display in a listbox based on the selected item from the module name combobox
            SqlConnection con6 = new SqlConnection(lib.connString);
            string goQry2 = "SELECT ModuleName, RemainingHours FROM ModuleDetails WHERE UserName = @username AND ModuleName = @dd";
            con6.Open();
            SqlCommand cmd6 = new SqlCommand(goQry2, con6);
            cmd6.Parameters.AddWithValue("@username", TMLoginPage.theUser);
            cmd6.Parameters.AddWithValue("@dd", whModDD.SelectedValue);
            SqlDataReader dr5 = cmd6.ExecuteReader();
            while (dr5.Read())
            {
                lbPage2.Items.Add("MODULE NAME:" + dr5["ModuleName"].ToString() + "\n" + "REMAINING SELF STUDY HOURS:" + dr5["RemainingHours"]);
            }
            con6.Close();

        }


        protected void whLogOutBtn_Click(object sender, EventArgs e)
        {

            //logs out of the application 
            Response.Redirect("TMLoginPage.aspx");

        }

        protected void whPrevBtn_Click(object sender, EventArgs e)
        {

            //goes back to the previous page 
            Response.Redirect("TMPage1.aspx");


        }
    }

}
 