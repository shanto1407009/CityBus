using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CityBus
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {
                Login.Text = "Logout";
                Label1.Text = "[" + Session["new"].ToString() + "]";
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (Session["new"] == null)
            {
                Response.Redirect("SingIn.aspx");
            }
            else
            {
                Session["BD"] = null;
                Session["Seat"] = null;
                Session["new"] = null;
                Response.Redirect("Home.aspx");
            }
        }

    }
}