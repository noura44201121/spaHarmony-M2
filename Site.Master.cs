using System;
using System.Web.UI;

namespace spaHarmony_M2
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetMenuByRole();
            }
        }

        private void SetMenuByRole()
        {
            string role = Session["Role"] as string;

            phGuest.Visible = true;
            phClient.Visible = false;
            phAdmin.Visible = false;

            if (role == "client")
            {
                phGuest.Visible = false;
                phClient.Visible = true;
                phAdmin.Visible = false;
            }
            else if (role == "admin")
            {
                phGuest.Visible = false;
                phClient.Visible = false;
                phAdmin.Visible = true;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
        }
    }
}
