using System;
using System.Data.SqlClient;
using System.Configuration;

namespace spaHarmony_M2.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SpaConn"].ConnectionString))
            {
                string query = "SELECT Role FROM Users WHERE Name=@n AND Password=@p";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@n", txtAdminUser.Text);
                cmd.Parameters.AddWithValue("@p", txtAdminPass.Text);

                con.Open();
                object role = cmd.ExecuteScalar();
                con.Close();

                if (role != null && role.ToString() == "admin")
                {
                    Session["Role"] = "admin";
                    Session["User"] = txtAdminUser.Text;
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
