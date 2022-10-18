using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using COMP3851B.DAL;

namespace COMP3851B.BBL
{
    public class Guide
    {
        public int gdeCatId { get; set; }
        public string gdeCatName { get; set; }

        public Guide()
        {

        }

        public Guide(string gdecatname)
        {
            this.gdeCatName = gdecatname;
        }

        public int AddCategory()
        {
            GuideDAO dao = new GuideDAO();
            return (dao.Insert(this));
        }
    }
}