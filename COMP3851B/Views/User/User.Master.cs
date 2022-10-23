using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMP3851B.BBL;

namespace COMP3851B.Views.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        public List<Guide> catList; //List for storing Guide Category data
        protected void Page_Load(object sender, EventArgs e)
        {
            //If not post back, clear all fields and bind all data to tables/lists
            if (!IsPostBack)
            {
                Guide gde = new Guide();
                catList = gde.GetAllCategoriesOrdered();
                LVCat.DataSource = catList;
                LVCat.DataBind();
            }
        }

        protected void LVCat_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int catid = Convert.ToInt32(LVCat.DataKeys[e.Item.DataItemIndex].Value);
            Session["CatID2Guide"] = catid;
            Response.Redirect("../TutorialGuide/GuideDetails.aspx");
        }
    }
}