using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FastFoodProject.Courier
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["breadCrum"] = "";
                if (Session["courier"] == null)
                {
                    Response.Redirect("../User/Login.aspx");
                }
                else
                {
                    DashboardCount dashboard = new DashboardCount();
                    Session["user"] = dashboard.Count("USER");
                }
            }
        }
    }
}