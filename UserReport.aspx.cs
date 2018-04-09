using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloWorldManager
{
    public partial class UserReport : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                sqlConn.Open();
                using (SqlCommand cmd = sqlConn.CreateCommand())
                {
                    cmd.CommandText = "[GetUserReport]";
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlDataReader reader = cmd.ExecuteReader();

                    gvUserReport.DataSource = reader;
                    gvUserReport.DataBind();
                    reader.Close();
                }

                sqlConn.Close();
            }
        }
    }
}