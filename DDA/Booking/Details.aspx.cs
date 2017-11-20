using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDA.Booking
{
    public partial class Details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string flightSelected = Session["FlightSelected"].ToString();
            string query = "SELECT FlightID, FlightType, Origin, Destination, DepartDate, ReturnDate FROM Flights WHERE FlightID = '" + flightSelected + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    FlightID.Text = reader.GetString(0);
                    FlightType.Text = reader.GetString(1);
                    Origin.Text = reader.GetString(2);
                    Desination.Text = reader.GetString(3);
                    DepartDate.Text = reader.GetString(4);
                    if (reader.GetString(1) == "TwoWay")
                        ReturnDate.Text = reader.GetString(5);
                    else
                        ReturnDate.Text = "";
                }
            }
            con.Close();
            con.Open();
            string user = Session["UserName"].ToString();
            string query2 = "SELECT Name, Passport, Gender, PhoneNumber, Email FROM AspNetUsers WHERE UserName = '" + user + "'";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            SqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Name.Text = dr.GetString(0);
                    Passport.Text = dr.GetString(1);
                    Gender.Text = dr.GetString(2);
                    ContactNumber.Text = dr.GetString(3);
                    Email.Text = dr.GetString(4);
                }
            }
            con.Close();
        }

        protected void btnProceed_Click(object sender, EventArgs e)
        {
            var random = new Random();
            string s = string.Empty;
            for (int i = 0; i < 6; i++)
                s = String.Concat(s, random.Next(10).ToString());
            string rs = "RESV" + s;

            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Reserves (FlightID, CustomerName, ReserveCode) VALUES (@flightID,@name,@code)", con);
            cmd.Parameters.AddWithValue("@flightID", Session["FlightSelected"].ToString());
            cmd.Parameters.AddWithValue("@name", Session["UserName"].ToString());
            cmd.Parameters.AddWithValue("@code", rs);
            cmd.ExecuteNonQuery();
            Session["ReverseCode"] = rs;
            Response.Write("<script>alert('Successfully Booking!')</script>");
            IdentityHelper.RedirectToReturnUrl("~/Booking/Result", Response);
            //Response.Redirect("ResultPage.aspx");
        }
    }
}