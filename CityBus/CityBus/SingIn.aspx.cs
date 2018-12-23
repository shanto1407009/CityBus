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
    public partial class SingIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                con.Open();
                string CheckUser = "select count(*) from UserData where UserName='" + TextBox3.Text + "'";
                SqlCommand com = new SqlCommand(CheckUser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
                if (temp == 1)
                {
                    Label3.Text = "*User Already Exist";
                }
                con.Close();
            }
            if (!IsPostBack)
            {

                HttpCookie usercookie = Request.Cookies["info"];
                if (usercookie != null)
                {
                    TextBox1.Text = usercookie["username"].ToString();
                    TextBox2.Text = usercookie["password"].ToString();
                    
                }
                else
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    
                }


            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                con.Open();

                string CheckUser = "select count(*) from UserData where UserName='" + TextBox3.Text + "'";
                SqlCommand comm = new SqlCommand(CheckUser, con);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString().Replace(" ", ""));

                string val = TextBox4.Text;
                string pattern = @"^[a-z][a-z|0-9|]*([_][a-z|0-9]+)*([.][a-z|0-9]+([_][a-z|0-9]+)*)?@[a-z][a-z|0-9|]*\.([a-z][a-z|0-9]*(\.[a-z][a-z|0-9]*)?)$";
                Match match = Regex.Match(val.Trim(), pattern, RegexOptions.IgnoreCase);


                if (TextBox3.Text == String.Empty || TextBox4.Text == String.Empty || TextBox5.Text == String.Empty || TextBox6.Text == String.Empty || TextBox7.Text == String.Empty)
                {
                    Label3.Text = "*Please fill all the blocks";
                }
                else if (temp == 1)
                {
                    Label3.Text = "*User Already Exist";
                }
                else if (!match.Success)
                {
                    Label3.Text = "*Invalid email format";
                }
                else if (TextBox5.Text.Length < 8)
                {
                    Label3.Text = "*Chose at least 8 character for password";
                }
                else if (TextBox5.Text != TextBox6.Text)
                {
                    Label3.Text = "*Password doesn't match";
                }
                else
                {
                    string InsertUser = "insert into UserData (UserName, Email, Password, MobileNo, Type) values (@username, @email, @password, @mobileno, @type)";
                    SqlCommand com = new SqlCommand(InsertUser, con);
                    com.Parameters.AddWithValue("@username", TextBox3.Text);
                    com.Parameters.AddWithValue("@email", TextBox4.Text);
                    com.Parameters.AddWithValue("@password", TextBox5.Text);
                    com.Parameters.AddWithValue("@mobileno", TextBox7.Text);
                    com.Parameters.AddWithValue("@type", "user");
                    com.ExecuteNonQuery();
                    Label3.Text = "Account created successfully";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con.Open();
            string CheckUser = "select count(*) from UserData where UserName='" + TextBox1.Text + "'";
            SqlCommand commm = new SqlCommand(CheckUser, con);
            int temp = Convert.ToInt32(commm.ExecuteScalar().ToString().Replace(" ", ""));
            if (TextBox1.Text == String.Empty || TextBox2.Text == String.Empty)
            {
                Label2.Text = "*Please enter username and password";
            }
            else if (temp == 1)
            {
                string CheckPassword = "select Password from UserData where UserName='"+ TextBox1.Text +"'";
                SqlCommand Upass = new SqlCommand(CheckPassword, con);
                string pass = Upass.ExecuteScalar().ToString().Replace(" ", "");
                if (pass == TextBox2.Text)
                {
                    Session["new"] = TextBox1.Text;
                    Label2.Text = "Login Successful";

                    HttpCookie userData = new HttpCookie("info");
                    userData["username"] = TextBox1.Text;
                    userData["password"] = TextBox2.Text;
                    userData.Expires = System.DateTime.Now.AddDays(30);
                    Response.Cookies.Add(userData);

                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Label2.Text = "*Incorrect Password";
                }
            }
            else
            {
                Label2.Text = "*Incorrect Username";
            }
            con.Close();
        }
    }
}