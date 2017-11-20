using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDA.Account
{
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Session["UserName"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT f.FlightID, f.Origin, f.Destination, r.ReserveCode FROM Flights f INNER JOIN Reserves r ON f.FlightID = r.FlightID WHERE r.CustomerName = '" + user + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Label1.Visible = false;
                DataTable dt = new DataTable();
                dt.Load(dr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else
                Label1.Visible = true;
        }
    }
}