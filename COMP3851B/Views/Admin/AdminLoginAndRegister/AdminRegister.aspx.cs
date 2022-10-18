using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP3851B.Views.Admin.AdminLoginAndRegister
{
    public partial class AdminRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("../AdminHome/AdminHome.aspx");
        }
    }
}