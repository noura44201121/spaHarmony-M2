using System;
using System.Web.UI;

namespace spaHarmony_M2.Admin
{
    public partial class AdminDashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnManageUsers_Click(object sender, EventArgs e)
        {
             
            // Response.Redirect("ManageUsers.aspx");
        }

        protected void btnManageServices_Click(object sender, EventArgs e)
        {
            // Response.Redirect("ManageServices.aspx");
        }

        protected void btnManageAvailability_Click(object sender, EventArgs e)
        {
            // Response.Redirect("ManageAvailability.aspx");
        }

        protected void btnManageAppointments_Click(object sender, EventArgs e)
        {
            // Response.Redirect("ManageAppointments.aspx");
        }
    }
}