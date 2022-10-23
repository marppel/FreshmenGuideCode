﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMP3851B.BBL;

namespace COMP3851B.Views.User.TutorialGuide
{
    public partial class GuideCategory : System.Web.UI.Page
    {
        public List<Guide> gdeList; //List for storing Guide data
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CatID2Guide"] != null)
            {
                int id = Convert.ToInt32(Session["CatID2Guide"]);
                Guide gde = new Guide();
                gdeList = gde.GetAllByCategory(id);
                gde = gde.GetOneCategory(id);
                lblHeader.InnerText = gde.gdeCatName;

                DLGde.DataSource = gdeList;
                DLGde.DataBind();
            }

        }

        protected void DLGde_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName.Equals("ToGuide"))
            {
                int gdeid = Convert.ToInt32(e.CommandArgument);
                Session["GdeID2Details"] = gdeid.ToString();

                Response.Redirect("GuideDetails.aspx");
            }
        }
    }
}