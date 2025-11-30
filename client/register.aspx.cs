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
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SpaHarmonyConn"].ConnectionString))
            {
                string query = "INSERT INTO Users (Name, Username, Password, Role) VALUES (@n, @u, @p, 'client')";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@n", txtName.Text);
                cmd.Parameters.AddWithValue("@u", txtUsername.Text);
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