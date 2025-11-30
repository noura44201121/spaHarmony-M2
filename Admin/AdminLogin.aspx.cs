using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;

namespace spaHarmony_M2.Admin
{
    public partial class AdminLogin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            string user = txtAdminUser.Text.Trim();
            string pass = txtAdminPass.Text.Trim();

            string cs = ConfigurationManager.ConnectionStrings["SpaConn"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT COUNT(*) FROM dbo.Users WHERE Name = @user AND Password = @pass AND Role = 'admin'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@user", user);
                cmd.Parameters.AddWithValue("@pass", pass);

                con.Open();
                int count = (int)cmd.ExecuteScalar();
                con.Close();

                if (count == 1)
                {
                    Response.Redirect("AdminDashboard.aspx");
                }
                else
                {
                    lblAdminMsg.Text = "Invalid username or password.";
                }
            }
        }
    }
}
