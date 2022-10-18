using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMP3851B.BBL;

namespace COMP3851B.Views.Admin.CourseGuide
{
    public partial class AddCourseCategory : System.Web.UI.Page
    {
        public List<Guide> gdeList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Guide gde = new Guide();
                gdeList = gde.GetAllCategories();

                GVCat.DataSource = gdeList;
                GVCat.DataBind();

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;

            if (String.IsNullOrEmpty(txtName.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('TEXTBOX EMPTY')", true);

            }
            else
            {
                Guide gde = new Guide(name);

                int result = gde.AddCategory();
                
                if (result == 1)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('SUCCESS')", true);
                    gdeList = gde.GetAllCategories();

                    GVCat.DataSource = gdeList;
                    GVCat.DataBind();
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('RECORD Exists!')", true);
                }
            }
        }
    }
}