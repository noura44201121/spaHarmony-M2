using System;
using System.Data.SqlClient;

namespace spaHarmony_M2.client
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string serviceFromQuery = Request.QueryString["service"];

                if (string.IsNullOrEmpty(serviceFromQuery))
                {
                    serviceFromQuery = "Manicure";
                }

                txtService.Text = serviceFromQuery;
                hdnService.Value = serviceFromQuery;
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            string name = txtName.Text;
            string service = hdnService.Value;
            string date = txtDate.Text;
            string time = ddlTime.SelectedValue;

            string connStr = System.Configuration.ConfigurationManager
                                 .ConnectionStrings["SpaConn"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO Appointments (userID, Name, Service, Date, Time) " +
                               "VALUES (@userID, @Name, @Service, @Date, @Time)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@userID", 1);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Service", service);
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Parameters.AddWithValue("@Time", time);

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            Response.Write("<script>alert('Appointment booked successfully');</script>");
        }
    }
}

