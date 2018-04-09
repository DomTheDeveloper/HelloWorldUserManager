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
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtFirstName.Text.Length == 0)
            {
                rfdFirstName.IsValid = false;
                return;
            }

            if (txtLastName.Text.Length == 0)
            {
                rfdLastName.IsValid = false;
                return;
            }

            if (txtAddress1.Text.Length == 0)
            {
                rfdAddress1.IsValid = false;
                return;
            }

            if (txtCity.Text.Length == 0)
            {
                rfdCity.IsValid = false;
                return;
            }

            if (ddlState.SelectedValue == "-1")
            {
                rfdState.IsValid = false;
                return;
            }

            if (txtZip.Text.Length == 0)
            {
                rfdZip.IsValid = false;
                return;
            }

            if (!int.TryParse(txtZip.Text, out int x) || (txtZip.Text.Length != 5 && txtZip.Text.Length != 9))
            {
                rxvZip.IsValid = false;
                return;
            }

            if (ddlCountry.SelectedValue == "-1")
            {
                rfdCountry.IsValid = false;
                return;
            }

            using (SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                sqlConn.Open();
                
                using (SqlCommand cmd = sqlConn.CreateCommand())
                {
                    cmd.CommandText = "[CreateUser]";
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = txtFirstName.Text;
                    cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtLastName.Text;
                    cmd.Parameters.Add("@Address1", SqlDbType.VarChar).Value = txtAddress1.Text;
                    cmd.Parameters.Add("@Address2", SqlDbType.VarChar).Value = txtAddress2.Text;
                    cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = txtFirstName.Text;
                    cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = ddlState.SelectedValue;
                    cmd.Parameters.Add("@Zip", SqlDbType.VarChar).Value = txtZip.Text;
                    cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = ddlCountry.SelectedValue;
                    
                    cmd.ExecuteNonQuery();

                    Response.Redirect("~/Confirmed");
                }

                sqlConn.Close();
            }
        }
    }
}