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
        public int gdeID { get; set; }
        public string gdeTitle { get; set; }
        public string gdeDesc { get; set; }


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
        public Guide(int gdeid, string gdetitle, string gdedesc)
        {
            this.gdeCatID = gdeid;
            this.gdeTitle = gdetitle;
            this.gdeDesc = gdedesc;
        }
        public Guide(string gdetitle, string gdedesc)
        {
            this.gdeTitle = gdetitle;
            this.gdeDesc = gdedesc;
        }


        //Methods
        public int AddCategory()
        {
            GuideDAO dao = new GuideDAO();
            return (dao.InsertCategory(this));
        }
        public List<Guide> GetAllCategories()
        {
            GuideDAO dao = new GuideDAO();
            return dao.GetAllGuideCategories();
        }

        public int AddGuide()
        {
            GuideDAO dao = new GuideDAO();
            return (dao.InsertGuide(this));
        }
    }
}