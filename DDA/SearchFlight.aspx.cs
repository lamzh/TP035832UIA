using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDA
{
    public partial class About : Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT FlightID, FlightType, Origin, Destination, DepartDate, ReturnDate, DepartureTime FROM Flights";
            SearchFlight(query);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string query = "SELECT FlightID, FlightType, Origin, Destination, DepartDate, ReturnDate, DepartureTime FROM Flights WHERE Origin LIKE '%" + txtOrigin.Text + "%' AND destination LIKE '%" + txtDestination.Text + "%'";
            SearchFlight(query);
        }

        protected void SearchFlight(string query)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            if (reader.HasRows)
            {
                Label1.Visible = false;
                dt.Load(reader);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else
            {
                Label1.Visible = true;
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                Session["FlightSelected"] = GridView1.SelectedRow.Cells[1].Text;
                IdentityHelper.RedirectToReturnUrl("~/Booking/Details", Response);
            }
            else
                IdentityHelper.RedirectToReturnUrl("~/Account/Login", Response);
        }
    }
}