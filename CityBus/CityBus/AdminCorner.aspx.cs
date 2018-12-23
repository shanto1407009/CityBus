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
    public partial class AdminCorner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                con.Open();
                string CheckUser = "select Type from UserData where UserName='" + Session["new"] + "'";
                SqlCommand com = new SqlCommand(CheckUser, con);
                string temp = com.ExecuteScalar().ToString().Replace(" ", "");
                if (temp == "admin")
                {
                    div2.Visible = true;
                    div1.Visible = false;
                }
                else
                {
                    div2.Visible = false;
                    div1.Visible = true;
                }
                con.Close();

            }
            else
            {
                Response.Redirect("Home.aspx");
            }


            if (Session["new"] != null)
            {
                Login.Text = "Logout";
                Label1.Text = "[" + Session["new"].ToString() + "]";
            }
            string cs = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from [dbo].[Order] where State=0", con);
                //SqlCommand cmd = new SqlCommand("Select * from [dbo].[Order]", con);
                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
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

        protected void Check_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                con.Open();
                string CheckUser = "select BusId from [dbo].[Order] where Id=" + TextBox1.Text + "";
                SqlCommand com = new SqlCommand(CheckUser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
                CheckUser = "select SeatNo from [dbo].[Order] where Id=" + TextBox1.Text + "";
                com = new SqlCommand(CheckUser, con);
                string temp2 = com.ExecuteScalar().ToString().Replace(" ", "");

                CheckUser = "select "+temp2+" from Ticket where ID=" + temp + "";
                com = new SqlCommand(CheckUser, con);
                int temp3 = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
                if (temp3 == 0)
                {
                    Label3.Text = "Available";
                    Page_Load(null, EventArgs.Empty);
                }
                else
                {
                    Label3.Text = "Not Available";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                //do nothing
            }
        }

        protected void PhoneNo_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                con.Open();
                string CheckUser = "select MobileNo from UserData where UserName='" + TextBox2.Text + "'";
                SqlCommand com = new SqlCommand(CheckUser, con);
                string temp2 = com.ExecuteScalar().ToString().Replace(" ", "");
                Label4.Text = temp2;
                con.Close();
            }
            catch (Exception ex)
            {
                //do nothing
            }
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                con.Open();
                string CheckUser = "select BusId from [dbo].[Order] where Id=" + TextBox3.Text + "";
                SqlCommand com = new SqlCommand(CheckUser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
                CheckUser = "select SeatNo from [dbo].[Order] where Id=" + TextBox3.Text + "";
                com = new SqlCommand(CheckUser, con);
                string temp2 = com.ExecuteScalar().ToString().Replace(" ", "");

                CheckUser = "select " + temp2 + " from Ticket where ID=" + temp + "";
                com = new SqlCommand(CheckUser, con);
                int temp3 = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
                Label5.Text = temp3.ToString();
                if (temp3 == 0)
                {
                    Label5.Text = "Order Confirmed";
                    CheckUser = "update [dbo].[Order] SET State=1 where ID=" + TextBox3.Text + "";
                    com = new SqlCommand(CheckUser, con);
                    com.ExecuteNonQuery();

                    CheckUser = "update Ticket SET "+temp2+"=1 where ID=" + temp + "";
                    com = new SqlCommand(CheckUser, con);
                    com.ExecuteNonQuery();
                    Page_Load(null, EventArgs.Empty);
                }
                else
                {
                    Label5.Text = "Sorry! not available now";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                //donothing
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                con.Open();
                    Label6.Text = "Order Canceled";
                    string CheckUser = "update [dbo].[Order] SET State=2 where ID=" + TextBox4.Text + "";
                    SqlCommand com = new SqlCommand(CheckUser, con);
                    com.ExecuteNonQuery();
                    Page_Load(null, EventArgs.Empty);
                con.Close();
            }
            catch (Exception ex)
            {
                //donothing
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                con.Open();
                Label6.Text = "History Cleared";
                string CheckUser = "update Ticket SET A1=0, A2=0,A3=0, A4=0, B1=0, B2=0, B3=0, B4=0, C1=0, C2=0, C3=0, C4=0, D1=0, D2=0, D3=0, D4=0, E1=0, E2=0, E3=0, E4=0, F1=0, F2=0, F3=0, F4=0, F5=0 where ID=" + TextBox5.Text + "";
                SqlCommand com = new SqlCommand(CheckUser, con);
                com.ExecuteNonQuery();
                Page_Load(null, EventArgs.Empty);
                con.Close();
            }
            catch (Exception ex)
            {
                //donothing
            }
        }

        protected void Refresh_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCorner.aspx");
        }

        protected void Final_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con2.Open();
            string CheckUser = "select BusId from [dbo].[Order] where Id=" + TextBox6.Text + "";
            SqlCommand com = new SqlCommand(CheckUser, con2);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
            con2.Close();

            string cs = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from [dbo].[Order] where ID="+TextBox6.Text+"", con);
                //SqlCommand cmd = new SqlCommand("Select * from [dbo].[Order]", con);
                con.Open();
                GridView2.DataSource = cmd.ExecuteReader();
                GridView2.DataBind();
            }


            using (SqlConnection con3 = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from TimeTable where ID=" + temp + "", con3);
                //SqlCommand cmd = new SqlCommand("Select * from [dbo].[Order]", con);
                con3.Open();
                GridView3.DataSource = cmd.ExecuteReader();
                GridView3.DataBind();
            }
        }
    }
}