using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Drawing;

namespace CityBus
{
    public partial class BuyTickets : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["BD"] != null)
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString); con.Open();
                    string CheckUser = "select A1 from Ticket where ID=" + Session["BD"] + ""; SqlCommand com = new SqlCommand(CheckUser, con); int temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { A1.Text = "N/A"; A1.BackColor = Color.Red; } else { A1.Text = "A1"; A1.BackColor = Color.Green; }
                    CheckUser = "select A2 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { A2.Text = "N/A"; A2.BackColor = Color.Red; } else { A2.Text = "A2"; A2.BackColor = Color.Green; }
                    CheckUser = "select A3 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { A3.Text = "N/A"; A3.BackColor = Color.Red; } else { A3.Text = "A3"; A3.BackColor = Color.Green; }
                    CheckUser = "select A4 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { A4.Text = "N/A"; A4.BackColor = Color.Red; } else { A4.Text = "A4"; A4.BackColor = Color.Green; }
                    CheckUser = "select B1 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { B1.Text = "N/A"; B1.BackColor = Color.Red; } else { B1.Text = "B1"; B1.BackColor = Color.Green; }
                    CheckUser = "select B2 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { B2.Text = "N/A"; B2.BackColor = Color.Red; } else { B2.Text = "B2"; B2.BackColor = Color.Green; }
                    CheckUser = "select B3 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { B3.Text = "N/A"; B3.BackColor = Color.Red; } else { B3.Text = "B3"; B3.BackColor = Color.Green; }
                    CheckUser = "select B4 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { B4.Text = "N/A"; B4.BackColor = Color.Red; } else { B4.Text = "B4"; B4.BackColor = Color.Green; }
                    CheckUser = "select C1 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { C1.Text = "N/A"; C1.BackColor = Color.Red; } else { C1.Text = "C1"; C1.BackColor = Color.Green; }
                    CheckUser = "select C2 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { C2.Text = "N/A"; C2.BackColor = Color.Red; } else { C2.Text = "C2"; C2.BackColor = Color.Green; }
                    CheckUser = "select C3 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { C3.Text = "N/A"; C3.BackColor = Color.Red; } else { C3.Text = "C3"; C3.BackColor = Color.Green; }
                    CheckUser = "select C4 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { C4.Text = "N/A"; C4.BackColor = Color.Red; } else { C4.Text = "C4"; C4.BackColor = Color.Green; }
                    CheckUser = "select D1 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { D1.Text = "N/A"; D1.BackColor = Color.Red; } else { D1.Text = "D1"; D1.BackColor = Color.Green; }
                    CheckUser = "select D2 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { D2.Text = "N/A"; D2.BackColor = Color.Red; } else { D2.Text = "D2"; D2.BackColor = Color.Green; }
                    CheckUser = "select D3 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { D3.Text = "N/A"; D3.BackColor = Color.Red; } else { D3.Text = "D3"; D3.BackColor = Color.Green; }
                    CheckUser = "select D4 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { D4.Text = "N/A"; D4.BackColor = Color.Red; } else { D4.Text = "D4"; D4.BackColor = Color.Green; }
                    CheckUser = "select E1 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { E1.Text = "N/A"; E1.BackColor = Color.Red; } else { E1.Text = "E1"; E1.BackColor = Color.Green; }
                    CheckUser = "select E2 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { E2.Text = "N/A"; E2.BackColor = Color.Red; } else { E2.Text = "E2"; E2.BackColor = Color.Green; }
                    CheckUser = "select E3 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { E3.Text = "N/A"; E3.BackColor = Color.Red; } else { E3.Text = "E3"; E3.BackColor = Color.Green; }
                    CheckUser = "select E4 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { E4.Text = "N/A"; E4.BackColor = Color.Red; } else { E4.Text = "E4"; E4.BackColor = Color.Green; }
                    CheckUser = "select F1 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { F1.Text = "N/A"; F1.BackColor = Color.Red; } else { F1.Text = "F1"; F1.BackColor = Color.Green; }
                    CheckUser = "select F2 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { F2.Text = "N/A"; F2.BackColor = Color.Red; } else { F2.Text = "F2"; F2.BackColor = Color.Green; }
                    CheckUser = "select F3 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { F3.Text = "N/A"; F3.BackColor = Color.Red; } else { F3.Text = "F3"; F3.BackColor = Color.Green; }
                    CheckUser = "select F4 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { F4.Text = "N/A"; F4.BackColor = Color.Red; } else { F4.Text = "F4"; F4.BackColor = Color.Green; }
                    CheckUser = "select F5 from Ticket where ID=" + Session["BD"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { F5.Text = "N/A"; F5.BackColor = Color.Red; } else { F5.Text = "F5"; F5.BackColor = Color.Green; }
                    con.Close();
                }
                catch (Exception ex)
                {
                    //nothing happens
                }
                
                
                
            }








            if (Session["BD"] == null) mydiv.Visible = false;
            if (Session["new"] == null)
            {
                Response.Redirect("SingIn.aspx");
            }
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
                Session["new"] = null;
                Session["BD"] = null;
                Session["Seat"] = null;
                Response.Redirect("Home.aspx");
            }
        }

        protected void Check_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == String.Empty)
            {
                Label2.Text = "*Please Enter BusID";
            }
            else
            {
                Session["BD"] = TextBox1.Text;
                Label2.Text = "Your BusID is "+ TextBox1.Text;
                if (Session["Seat"] != null)
                {
                    Label2.Text = Label2.Text + " and Seat no. is " + Session["Seat"];
                }
                mydiv.Visible = true;
                Page_Load(null, EventArgs.Empty);
            }
            
        }

        protected void Order_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                con.Open();
                string CheckUser = "select " + Session["Seat"] + " from Ticket where ID=" + Session["BD"] + "";
                SqlCommand com = new SqlCommand(CheckUser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 0)
                {
                    Label3.Text = "*Your Order Has been Submitted. Please wait for confirmation via phone";
                    CheckUser = "INSERT INTO [dbo].[Order] ([UserName], [BusId], [SeatNo], [State]) VALUES ('" + Session["new"] + "', " + Session["BD"] + ", '" + Session["Seat"] + "', 0)";
                    com = new SqlCommand(CheckUser, con);
                    /*com.Parameters.AddWithValue("@username", Session["new"]);
                    com.Parameters.AddWithValue("@busid", Session["BD"]);
                    com.Parameters.AddWithValue("@seatno", Session["Seat"]);
                    com.Parameters.AddWithValue("@state", 0);*/
                    try
                    {
                        com.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }
                else
                {
                    Label3.Text = "Sorry. The seat is not available now. Please choose another seat";
                }
                con.Close();
            }
            catch (Exception ex)
            { 
                //do nothing
            }
        }

        protected void A1_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "A1";
            Label2.Text = "Your BusID is " + TextBox1.Text +" and seat no. is " + Session["Seat"];
            
        }

        protected void A2_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "A2";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void A3_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "A3";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void A4_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "A4";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void B1_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "B1";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void B2_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "B2";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void B3_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "B3";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void B4_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "B4";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void C1_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "C1";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void C2_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "C2";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void C3_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "C3";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void C4_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "C4";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void D1_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "D1";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void D2_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "D2";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void D3_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "D3";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void D4_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "D4";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void E1_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "E1";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void E2_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "E2";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void E3_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "E3";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void E4_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "E4";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void F1_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "F1";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void F2_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "F2";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void F3_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "F3";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void F4_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "F4";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

        protected void F5_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "F5";
            Label2.Text = "Your BusID is " + TextBox1.Text + " and seat no. is " + Session["Seat"];
        }

    }
}