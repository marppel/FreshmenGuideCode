using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMP3851B.BBL;

namespace COMP3851B.Views.Admin.CourseGuide
{
    public partial class AddCourseGuide : System.Web.UI.Page
    {
        public List<Guide> gdeList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Guide gde = new Guide();
                gdeList = gde.GetAllCategories();

                ddlCat.Items.Clear();
                ddlCat.Items.Insert(0, new ListItem("--Select--", "0"));
                ddlCat.AppendDataBoundItems = true;
                ddlCat.DataTextField = "gdeCatName";
                ddlCat.DataValueField = "gdeCatID";
                ddlCat.DataSource = gdeList;
                ddlCat.DataBind();

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ddlCat.SelectedValue);
            string title = txtTitle.Text;
            string desc = txtSummernote.Text;

            Guide gde = new Guide(id, title, desc);

           int result = gde.AddGuide();

            if (result == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('SUCCESS')", true);
           }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('RECORD Exists!')", true);
            }

            lblSum.Text = id.ToString();
        }
    }
}