using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDA.Booking
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblFlightID.Text = Session["FlightSelected"].ToString();
            lblCode.Text = Session["ReverseCode"].ToString();
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            IdentityHelper.RedirectToReturnUrl("~/", Response);
        }
    }
}