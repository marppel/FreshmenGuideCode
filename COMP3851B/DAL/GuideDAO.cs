using System.Linq;
using System.Web;
using COMP3851B.BBL;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;

namespace COMP3851B.DAL
{
    public class GuideDAO
    {
        public int Insert(Guide gde)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO tutorialGuideCategory (gdeCatName) VALUES (@paraGName)";

            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraGName", gde.gdeCatName);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }

        public List<Guide> GetAllGuideCategories()
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["FunUniversityConnectionString"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlstmt = "SELECT gdeCatID, gdeCatName FROM tutorialGuideCategory ORDER BY gdeCatName ASC";

            SqlDataAdapter da = new SqlDataAdapter(sqlstmt, myConn);

            DataSet ds = new DataSet();
            da.Fill(ds);

            List<Guide> gList = new List<Guide>();

            int rec_cnt = ds.Tables[0].Rows.Count;
            if (rec_cnt == 0)
            {
                gList = null;
            }
            else
            {
                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    int gdeid = Convert.ToInt32(row["gdeCatID"]);
                    string gdename = row["gdeCatName"].ToString();

                    Guide objRate = new Guide(gdeid, gdename);
                    gList.Add(objRate);
                }
            }
            return gList;
        }
    }
}