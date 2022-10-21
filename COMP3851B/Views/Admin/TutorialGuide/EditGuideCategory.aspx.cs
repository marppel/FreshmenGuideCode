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
        public List<Guide> gdeList; //List for storing Guide Category data
        protected void Page_Load(object sender, EventArgs e)
        {
            //If not post back, clear all fields and bind all data to tables/lists
            if (!IsPostBack)
            {
                txtName.Text = "";
                lblID.Text = "Category ID: (No row selected)";

                Guide gde = new Guide();
                gdeList = gde.GetAllCategories();

                GVCat.DataSource = gdeList;
                GVCat.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string btnName = (sender as Button).Text;

            if (btnName == "Add") //Button name = "Add"
            {
                //Get all field data
                string name = txtName.Text;

                Guide gde = new Guide(name);

                try
                {
                    //Add new Category to database
                    int result = gde.AddCategory();

                    if (result == 1) //Successful
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item added successfully.')", true);

                        txtName.Text = "";

                        //Rebind updated data
                        gdeList = gde.GetAllCategories();
                        GVCat.DataSource = gdeList;
                        GVCat.DataBind();
                    }
                    else //Unsuccessful
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('A record for this item already exists. Please enter a different item.')", true);
                    }
                }
                catch //Internal code error
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured when adding new item. Please contact the developers about the issue.')", true);
                }
            }

            else //Button name = "Save"
            {
                //Get all field data
                string name = txtName.Text;
                int id = Int32.Parse(Regex.Match(lblID.Text, @"\d+").Value);

                Guide gde = new Guide();

                try
                {
                    //Update new data
                    int result = gde.UpdateCategory(id, name);

                    if (result == 1) //Successful
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item updated successfully.')", true);
                        
                        //Rebind updated data
                        gdeList = gde.GetAllCategories();
                        GVCat.DataSource = gdeList;
                        GVCat.DataBind();

                        btnAdd.Text = "Add";
                        btnSearch.Text = "Search";
                    }
                    else //Unsuccessful
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Unable to update item. Please try again.')", true);
                    }
                }
                catch //Internal code error
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured when updating an item. Please contact the developers about the issue.')", true);
                }
            }
        }

        protected void GVCat_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Get id of data row
            int id = Convert.ToInt32(GVCat.DataKeys[e.RowIndex].Value);

            Guide gde = new Guide();
            try
            {
                //Delete selected row
                int result = gde.DeleteCategory(id);

                if (result == 1) //Successful
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item deleted successfully.')", true);
                    gdeList = gde.GetAllCategories();

                    GVCat.DataSource = gdeList;
                    GVCat.DataBind();
                }
                else //Unsuccessful
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Deletion unsuccessful. Please try again.')", true);
                }
            }
            catch //Internal code error
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured when deleting item row. Please contact the developers about the issue.')", true);
            }
        }

        protected void GVCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                //Get id of data row
                GridViewRow row = GVCat.SelectedRow;
                int id = Convert.ToInt32(row.Cells[0].Text);

                //Retrieve data of selected data row using CategoryID
                Guide gde = new Guide();
                gde = gde.GetOneCategory(id);

                //Display retrieved item
                txtName.Text = gde.gdeCatName;
                lblID.Text = "Category ID: " + gde.gdeCatID.ToString();

                //Change Add/Search buttons to Save/Cancel for editing phase
                btnAdd.Text = "Save";
                btnSearch.Text = "Cancel";
            }
            catch //Internal code error
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured while trying to select a row to edit. Please contact the developers about the issue.')", true);
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string btnName = (sender as Button).Text;

            if (btnName == "Cancel") //Button name = "Cancel"
            {
                //Empty data rows
                txtName.Text = "";
                lblID.Text = "Category ID: (No row selected)";

                //Change back Save/Cancel buttons to default Add/Search
                btnAdd.Text = "Add";
                btnSearch.Text = "Search";
            }
            else //Button name = "Search"
            {
                //Get CategoryName field data
                string substring = txtName.Text.Trim();
                Guide gde = new Guide();

                try
                {
                    //Search database for matching substring
                    gdeList = gde.SearchFor(substring);
                    GVCat.DataSource = gdeList;
                    GVCat.DataBind();
                }
                catch //Internal code error
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured while trying to search for a row. Please contact the developers about the issue.')", true);
                }
            }
        }

        protected void GVCat_PageIndexChanging(object sender, GridViewPageEventArgs e) //Gridview paging
        {
            GVCat.PageIndex = e.NewPageIndex;

            //Bind page data to gridview
            Guide gde = new Guide();
            gdeList = gde.GetAllCategories();
            GVCat.DataSource = gdeList;
            GVCat.DataBind();
        }
    }
}