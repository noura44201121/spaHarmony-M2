using System;
using System.Data.SqlClient;
using System.Configuration;

namespace spaHarmony_M2.Client
{
    public partial class login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SpaConn"].ConnectionString))
            {
                string query = "SELECT Role FROM Users WHERE Name=@n AND Password=@p";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@n", txtUsername.Text);
                cmd.Parameters.AddWithValue("@p", txtPassword.Text);

                con.Open();
                object result = cmd.ExecuteScalar();
                con.Close();

                if (result != null && result.ToString() == "client")
                {
                    Session["Role"] = "client";
                    Session["User"] = txtUsername.Text;
                    Response.Redirect("services.aspx");
                }
                else
                {
                    lblMessage.Text = "Invalid username or password.";
                }
            }
        }
    }
}
