using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Text.RegularExpressions;
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
                txtName.Text = "";
                lblID.Text = "Category ID: ";

                Guide gde = new Guide();
                gdeList = gde.GetAllCategories();

                GVCat.DataSource = gdeList;
                GVCat.DataBind();

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string btnName = (sender as Button).Text;

            if (btnName == "Add")
            {
                string name = txtName.Text;

                Guide gde = new Guide(name);

                try
                {
                    int result = gde.AddCategory();

                    if (result == 1)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item added successfully.')", true);
                        gdeList = gde.GetAllCategories();

                        GVCat.DataSource = gdeList;
                        GVCat.DataBind();
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('A record for this item already exists.')", true);
                    }
                }
                catch
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured when adding new item. Please contact the developers about the issue.')", true);
                }
            }
            else
            {
                string name = txtName.Text;
                int id = Int32.Parse(Regex.Match(lblID.Text, @"\d+").Value);

                Guide gde = new Guide();

                try
                {
                    int result = gde.UpdateCategory(id, name);
                    if (result == 1)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item updated successfully.')", true);
                        gdeList = gde.GetAllCategories();

                        GVCat.DataSource = gdeList;
                        GVCat.DataBind();

                        btnAdd.Text = "Add";
                        btnSearch.Text = "Search";
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Unable to update item. Please try again.')", true);
                    }
                }
                catch
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured when updating an item. Please contact the developers about the issue.')", true);
                }
            }

        }

        protected void GVCat_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GVCat.DataKeys[e.RowIndex].Value);

            Guide gde = new Guide();
            try
            {
                int result = gde.DeleteCategory(id);

                if (result == 1) //if successful
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item deleted successfully.')", true);
                    gdeList = gde.GetAllCategories();

                    GVCat.DataSource = gdeList;
                    GVCat.DataBind();
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Deletion unsuccessful. Please try again.')", true);
                }
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured when deleting item row. Please contact the developers about the issue.')", true);
            }

        }

        protected void GVCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                GridViewRow row = GVCat.SelectedRow;
                int id = Convert.ToInt32(row.Cells[0].Text);

                Guide gde = new Guide();
                gde = gde.getOne(id);
                txtName.Text = gde.gdeCatName;
                lblID.Text = "Category ID: " + gde.gdeCatID.ToString();

                btnAdd.Text = "Save";
                btnSearch.Text = "Cancel";
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured while trying to select a row to edit. Please contact the developers about the issue.')", true);
            }


        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string btnName = (sender as Button).Text;

            if (btnName == "Cancel")
            {
                txtName.Text = "";
                lblID.Text = "Category ID: ";

                btnAdd.Text = "Add";
                btnSearch.Text = "Search";
            }
            else
            {
                string substring = txtName.Text.Trim();
                Guide gde = new Guide();

                try
                {
                    gdeList = gde.SearchFor(substring);
                    GVCat.DataSource = gdeList;
                    GVCat.DataBind();
                }
                catch
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured while trying to search for a row. Please contact the developers about the issue.')", true);
                }

            }
        }
    }
}