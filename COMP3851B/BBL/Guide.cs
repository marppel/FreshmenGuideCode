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
        public string gdeThumbnail { get; set; }


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
        public Guide(int gdecatid, string gdetitle, string gdedesc, string imagepath)
        {
            this.gdeCatID = gdecatid;
            this.gdeTitle = gdetitle;
            this.gdeDesc = gdedesc;
            this.gdeThumbnail = imagepath;
        }
        public Guide(string gdetitle, string gdedesc, string imagepath, int catid)
        {
            this.gdeTitle = gdetitle;
            this.gdeDesc = gdedesc;
            this.gdeThumbnail = imagepath;
            this.gdeCatID = catid;
        }
        public Guide(int gdeid, string gdetitle, string gdedesc, string imagepath, int gdecatid, string gdecatname)
        {
            this.gdeID = gdeid;
            this.gdeTitle = gdetitle;
            this.gdeDesc = gdedesc;
            this.gdeThumbnail = imagepath;
            this.gdeCatID = gdecatid;
            this.gdeCatName = gdecatname;
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
        public Guide getOne(int id)
        {
            GuideDAO dao = new GuideDAO();
            return dao.getOne(id);
        }
        public int DeleteCategory(int id)
        {
            GuideDAO dao = new GuideDAO();
            return dao.DeleteCategory(id);
        }
        public int UpdateCategory(int id, string name)
        {
            GuideDAO dao = new GuideDAO();
            return dao.UpdateCategory(name, id);
        }
        public List<Guide> SearchFor(string substring)
        {
            GuideDAO dao = new GuideDAO();
            return dao.Search(substring);
        }

        public int AddGuide()
        {
            GuideDAO dao = new GuideDAO();
            return (dao.InsertGuide(this));
        }
        public List<Guide> GetAllGuides()
        {
            GuideDAO dao = new GuideDAO();
            return dao.GetAllGuides();
        }
        public int DeleteGuide(int id)
        {
            GuideDAO dao = new GuideDAO();
            return dao.DeleteGuide(id);
        }
        public Guide getOneGuide(int id)
        {
            GuideDAO dao = new GuideDAO();
            return dao.getOneGuide(id);
        }
        public int UpdateGuide(int id)
        {
            GuideDAO dao = new GuideDAO();
            return dao.UpdateGuide(this, id);
        }
    }
}