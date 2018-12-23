using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

namespace CityBus
{
    public partial class SearchBus : System.Web.UI.Page
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

        protected void Khulna1_Click(object sender, EventArgs e)
        {
            Location.Text = "Khulna";
        }

        protected void Dhaka1_Click(object sender, EventArgs e)
        {
            Location.Text = "Dhaka";
        }

        protected void Rajshahi1_Click(object sender, EventArgs e)
        {
            Location.Text = "Rajshahi";
        }

        protected void Rangpur1_Click(object sender, EventArgs e)
        {
            Location.Text = "Rangpur";
        }

        protected void Chittagong1_Click(object sender, EventArgs e)
        {
            Location.Text = "Chittagong";
        }

        protected void Sylhet1_Click(object sender, EventArgs e)
        {
            Location.Text = "Sylhet";
        }

        protected void Barishal1_Click(object sender, EventArgs e)
        {
            Location.Text = "Barishal";
        }

        protected void Khulna2_Click(object sender, EventArgs e)
        {
            Destination.Text = "Khulna";
        }

        protected void Dhaka2_Click(object sender, EventArgs e)
        {
            Destination.Text = "Dhaka";
        }

        protected void Rajshahi2_Click(object sender, EventArgs e)
        {
            Destination.Text = "Rajshahi";
        }

        protected void Rangpur2_Click(object sender, EventArgs e)
        {
            Destination.Text = "Rangpur";
        }

        protected void Chittagong2_Click(object sender, EventArgs e)
        {
            Destination.Text = "Chittagong";
        }

        protected void Sylhet2_Click(object sender, EventArgs e)
        {
            Destination.Text = "Sylhet";
        }

        protected void Barishal2_Click(object sender, EventArgs e)
        {
            Destination.Text = "Barishal";
        }

        protected void Saturday3_Click(object sender, EventArgs e)
        {
            Day.Text = "Saturday";
        }

        protected void Sunday3_Click(object sender, EventArgs e)
        {
            Day.Text = "Sunday";
        }

        protected void Monday3_Click(object sender, EventArgs e)
        {
            Day.Text = "Monday";
        }

        protected void Tuesday3_Click(object sender, EventArgs e)
        {
            Day.Text = "Tuesday";
        }

        protected void Wednesday3_Click(object sender, EventArgs e)
        {
            Day.Text = "Wednesday";
        }

        protected void Thursday3_Click(object sender, EventArgs e)
        {
            Day.Text = "Thursday";
        }

        protected void Friday3_Click(object sender, EventArgs e)
        {
            Day.Text = "Friday";
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from TimeTable where Location='"+Location.Text+"' and Destination='"+Destination.Text+"' and Day='"+Day.Text+"'", con);
                //SqlCommand cmd = new SqlCommand("Select * from TimeTable", con);
                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
            }
        }


    }
}