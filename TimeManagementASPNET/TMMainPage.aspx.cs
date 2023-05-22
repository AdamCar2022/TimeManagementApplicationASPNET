using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeManagementASPNET
{
    public partial class TMMainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MainLogOutBtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("TMLoginPage.aspx");

        }

        protected void MainStartBtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("TMPage1.aspx");

        }
    }
}