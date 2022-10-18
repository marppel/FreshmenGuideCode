using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using COMP3851B.DAL;

namespace COMP3851B.BBL
{
    public class Guide
    {
        //Guide Category
        public int gdeCatID { get; set; }
        public string gdeCatName { get; set; }

        //Guide

        //Class
        public Guide()
        {

        }

        public Guide(string gdecatname)
        {
            this.gdeCatName = gdecatname;
        }
        public Guide(int gdecatid, string gdecatname)
        {
            this.gdeCatID = gdecatid;
            this.gdeCatName = gdecatname;
        }

        //Methods
        public int AddCategory()
        {
            GuideDAO dao = new GuideDAO();
            return (dao.Insert(this));
        }

        public List<Guide> GetAllCategories()
        {
            GuideDAO dao = new GuideDAO();
            return dao.GetAllGuideCategories();
        }
    }
}