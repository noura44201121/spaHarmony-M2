using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spaHarmony_M2.client
{
    public partial class MyAppointments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAppointments();
            }
        }

        private void LoadAppointments()
        {
            string connStr = System.Configuration.ConfigurationManager
                                .ConnectionStrings["SpaConn"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT Id, Name, Service, Date, Time FROM Appointments WHERE userID = 1";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvAppointments.DataSource = dt;
                gvAppointments.DataBind();

                bool hasRows = dt.Rows.Count > 0;
                pnlAppointments.Visible = hasRows;
                pnlEmpty.Visible = !hasRows;
            }
        }

        protected void gvAppointments_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "CancelAppointment")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(gvAppointments.DataKeys[rowIndex].Value);

                string connStr = System.Configuration.ConfigurationManager
                                    .ConnectionStrings["SpaConn"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string deleteQuery = "DELETE FROM Appointments WHERE Id = @Id";
                    SqlCommand cmd = new SqlCommand(deleteQuery, conn);
                    cmd.Parameters.AddWithValue("@Id", id);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }

                LoadAppointments();
            }
        }
    }
}

