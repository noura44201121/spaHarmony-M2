using System;
using System.Data.SqlClient;
using System.Configuration;

namespace spaHarmony_M2.Client
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["SpaConn"].ConnectionString))
            {
                string query = "INSERT INTO Users (Name, Password, Role) VALUES (@n, @p, 'client')";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@n", txtUsername.Text);
                cmd.Parameters.AddWithValue("@p", txtPassword.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Registration successful. You can now login.";
            }
        }
    }
}
