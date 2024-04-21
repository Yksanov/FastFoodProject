using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FastFoodProject.User
{
    public partial class Delivery : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(Connection.GetConnectionString());
                cmd = new SqlCommand("DeliverySp", con);
                cmd.Parameters.AddWithValue("@Action", "INSERT");
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@Apart", txtApart.Text.Trim());
                cmd.Parameters.AddWithValue("@Entran", txtEntran.Text.Trim());
                cmd.Parameters.AddWithValue("@Floor", int.Parse(ddlFloor.SelectedValue));
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Visible = true;
                lblMsg.Text = "Ожидайте доставку";
                lblMsg.CssClass = "alert alert-success";
                clear();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
            finally
            {
                con.Close();
            }
        }

        private void clear()
        {
            txtAddress.Text = string.Empty;
            txtApart.Text = string.Empty;
            txtEntran.Text = string.Empty;
            ddlFloor.Text = string.Empty;
        }
    }
}