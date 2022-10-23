using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;
using COMP3851B.BBL;
using System.IO;

namespace COMP3851B.Views.Admin.CourseGuide
{
    public partial class AddCourseGuide : System.Web.UI.Page
    {
        public List<Guide> catList; //List for storing Guide Category data
        public List<Guide> gdeList; //List for storing Guide data
        protected void Page_Load(object sender, EventArgs e)
        {
            //If not post back, clear all fields and bind all data to tables/lists
            if (!IsPostBack)
            {
                Guide gde = new Guide();
                catList = gde.GetAllCategories();

                ddlCat.Items.Clear();
                ddlCat.Items.Insert(0, new ListItem("--Select--", "0"));
                ddlCat.AppendDataBoundItems = true;
                ddlCat.DataTextField = "gdeCatName";
                ddlCat.DataValueField = "gdeCatID";
                ddlCat.DataSource = catList;
                ddlCat.DataBind();

                txtTitle.Text = "";
                ddlCat.SelectedValue = "0";
                UploadTmbnail.Attributes.Clear();
                txtSummernote.Text = "";
                lblID.Text = "Guide ID: (No row selected)";

                gdeList = gde.GetAllGuides();
                GVgde.DataSource = gdeList;
                GVgde.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string btnName = (sender as Button).Text;

            if (btnName == "Add") //Button name = "Add"
            {
                //Get all field data
                int id = int.Parse(ddlCat.SelectedValue);
                string title = txtTitle.Text;
                string desc = txtSummernote.Text;

                    //Get thumbnail image file and upload it to project folder
                var folder = Server.MapPath("~/uploads/");
                string fileName = Path.GetFileName(UploadTmbnail.PostedFile.FileName);
                if (fileName == "")
                {
                    fileName = "insertimage.png";
                }
                string filePath = "~/uploads/" + fileName;

                //create new directory for product images
                if (!Directory.Exists(folder))
                {
                    Directory.CreateDirectory(folder);
                    //click 'Show All Files' to find folder

                }
                UploadTmbnail.PostedFile.SaveAs(Server.MapPath(filePath));

                Guide gde = new Guide(title, desc, filePath,id);
                try
                {
                    //Add new Guide to database
                    int result = gde.AddGuide();

                    if (result == 1) //Successful
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item added successfully.')", true);

                        txtTitle.Text = "";
                        ddlCat.SelectedValue = "0";
                        UploadTmbnail.Attributes.Clear();
                        txtSummernote.Text = "";
                        lblID.Text = "Guide ID: (No row selected)";

                        //Rebind updated data
                        gdeList = gde.GetAllGuides();
                        GVgde.DataSource = gdeList;
                        GVgde.DataBind();
                    }
                    else //Unsuccessful
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('A record of this item already exists. Please enter a different item.')", true);
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
                string title = txtTitle.Text;
                int catid = Convert.ToInt32(ddlCat.SelectedValue);
                string desc = txtSummernote.Text;
                int id = Int32.Parse(Regex.Match(lblID.Text, @"\d+").Value);

                    //Get filename, if no new file name retrieve current thumbnail file
                string fileName = Path.GetFileName(UploadTmbnail.PostedFile.FileName);
                if (fileName == "")
                {
                    fileName = imgThumbnail.ImageUrl;
                }
                string filePath = "~/uploads/" + fileName;

                UploadTmbnail.PostedFile.SaveAs(Server.MapPath(filePath));

                Guide gde = new Guide(title, desc, filePath, catid);

                try
                {
                    //Update new data
                    int result = gde.UpdateGuide(id);

                    if (result == 1) //Successful
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item updated successfully.')", true);

                        txtTitle.Text = "";
                        ddlCat.SelectedValue = "0";
                        UploadTmbnail.Attributes.Clear();
                        txtSummernote.Text = "";
                        lblID.Text = "Guide ID: (No row selected)";

                        //Rebind updated data
                        gdeList = gde.GetAllGuides();
                        GVgde.DataSource = gdeList;
                        GVgde.DataBind();

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
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string btnName = (sender as Button).Text;

            if (btnName == "Cancel") //Button name = "Cancel"
            {
                //Empty data rows
                txtTitle.Text = "";
                ddlCat.SelectedValue = "0";
                UploadTmbnail.Attributes.Clear();
                txtSummernote.Text = "";
                lblID.Text = "Guide ID: (No row selected)";

                //Change back Save/Cancel buttons to default Add/Search
                btnAdd.Text = "Add";
                btnSearch.Text = "Search";
            }
            else //Button name = "Search"
            {
                //Get CategoryName field data

                try
                {       
                    //Search database for matching substring
                }
                catch //Internal code error
                {

                }
            }
        }

        protected void GVgde_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Get id of data row
            int id = Convert.ToInt32(GVgde.DataKeys[e.RowIndex].Value);

            Guide gde = new Guide();
            try
            {
                //Delete selected row
                int result = gde.DeleteGuide(id);

                if (result == 1) //Successful
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item deleted successfully.')", true);
                    gdeList = gde.GetAllGuides();

                    GVgde.DataSource = gdeList;
                    GVgde.DataBind();

                    txtTitle.Text = "";
                    ddlCat.SelectedValue = "0";
                    UploadTmbnail.Attributes.Clear();
                    txtSummernote.Text = "";
                    lblID.Text = "Guide ID: (No row selected)";
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

        protected void GVgde_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                //Get id of data row
                GridViewRow row = GVgde.SelectedRow;
                int id = Convert.ToInt32(row.Cells[0].Text);

                //Retrieve data of selected data row using GuideID
                Guide gde = new Guide();
                gde = gde.GetOneGuide(id);

                //Display retrieved item
                txtTitle.Text = gde.gdeTitle;
                ddlCat.SelectedValue = gde.gdeCatID.ToString();
                txtSummernote.Text = gde.gdeDesc;
                imgThumbnail.ImageUrl = gde.gdeThumbnail;
                lblID.Text = "Guide ID: " + gde.gdeID.ToString();

                //Change Add/Search buttons to Save/Cancel for editing phase
                btnAdd.Text = "Save";
                btnSearch.Text = "Cancel";
            }
            catch //Internal code error
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured while trying to select a row to edit. Please contact the developers about the issue.')", true);
            }
        }

        protected void GVgde_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GVgde.PageIndex = e.NewPageIndex;

            //Bind page data to gridview
            Guide gde = new Guide();
            gdeList = gde.GetAllGuides();
            GVgde.DataSource = gdeList;
            GVgde.DataBind();
        }
    }
}