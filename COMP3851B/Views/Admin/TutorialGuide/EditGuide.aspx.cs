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
        public List<Guide> catList;
        public List<Guide> gdeList;
        protected void Page_Load(object sender, EventArgs e)
        {
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

            if (btnName == "Add")
            {
                int id = int.Parse(ddlCat.SelectedValue);
                string title = txtTitle.Text;
                string desc = txtSummernote.Text;

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

                Guide gde = new Guide(id, title, desc, filePath);
                try
                {
                    int result = gde.AddGuide();

                    if (result == 1)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item added successfully.')", true);

                        txtTitle.Text = "";
                        ddlCat.SelectedValue = "0";
                        UploadTmbnail.Attributes.Clear();
                        txtSummernote.Text = "";
                        lblID.Text = "Guide ID: (No row selected)";

                        gdeList = gde.GetAllGuides();
                        GVgde.DataSource = gdeList;
                        GVgde.DataBind();
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('A record of this item already exists. Please enter a different item.')", true);
                    }
                }
                catch
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured when adding new item. Please contact the developers about the issue.')", true);

                }
            }
            else
            {
                string title = txtTitle.Text;
                int catid = Convert.ToInt32(ddlCat.SelectedValue);
                string desc = txtSummernote.Text;
                int id = Int32.Parse(Regex.Match(lblID.Text, @"\d+").Value);

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
                    int result = gde.UpdateGuide(id);

                    if (result == 1)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Item updated successfully.')", true);

                        txtTitle.Text = "";
                        ddlCat.SelectedValue = "0";
                        UploadTmbnail.Attributes.Clear();
                        txtSummernote.Text = "";
                        lblID.Text = "Guide ID: (No row selected)";

                        gdeList = gde.GetAllGuides();
                        GVgde.DataSource = gdeList;
                        GVgde.DataBind();

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
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string btnName = (sender as Button).Text;

            if (btnName == "Search")
            {
                //search
            }
            else
            {
                txtTitle.Text = "";
                ddlCat.SelectedValue = "0";
                UploadTmbnail.Attributes.Clear();
                txtSummernote.Text = "";
                lblID.Text = "Guide ID: (No row selected)";

                btnAdd.Text = "Add";
                btnSearch.Text = "Search";
            }
        }

        protected void GVgde_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GVgde.DataKeys[e.RowIndex].Value);

            Guide gde = new Guide();
            try
            {
                int result = gde.DeleteGuide(id);

                if (result == 1) //if successful
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

        protected void GVgde_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                GridViewRow row = GVgde.SelectedRow;
                int id = Convert.ToInt32(row.Cells[0].Text);

                Guide gde = new Guide();
                gde = gde.getOneGuide(id);

                //display retrieved item
                txtTitle.Text = gde.gdeTitle;
                ddlCat.SelectedValue = gde.gdeCatID.ToString();
                txtSummernote.Text = gde.gdeDesc;
                imgThumbnail.ImageUrl = gde.gdeThumbnail;
                lblID.Text = "Guide ID: " + gde.gdeID.ToString();

                btnAdd.Text = "Save";
                btnSearch.Text = "Cancel";
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('An error has occured while trying to select a row to edit. Please contact the developers about the issue.')", true);
            }
        }

        protected void GVgde_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GVgde.PageIndex = e.NewPageIndex;

            Guide gde = new Guide();

            gdeList = gde.GetAllGuides();
            GVgde.DataSource = gdeList;
            GVgde.DataBind();
        }
    }
}