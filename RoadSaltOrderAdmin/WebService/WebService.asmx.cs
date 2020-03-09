using Newtonsoft.Json;
using RoadSaltOrder.Library;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

namespace RoadSaltOrderAdmin.WebService
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {
        [WebMethod]
        public void getEmails()
        {
            List<email> listemmail = new List<email>();
            string cs = ConfigurationManager.ConnectionStrings["saltOrderconStr"].ConnectionString;
            using (SqlConnection objsql = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select contactID, emailID from ContactDetails order by emailID", objsql);
                objsql.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    email emailobj = new email();
                    emailobj.contactID = Convert.ToInt32(rdr["contactID"]);
                    emailobj.emailID = rdr["emailID"].ToString();
                    listemmail.Add(emailobj);
                }
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(listemmail));
        }

        [WebMethod]
        public string SaveEmail(string email, string contactid)
        {
            string qur = "";
            if(contactid=="0")
            {
                qur = dbLibrary.idBuildQuery("[SaveEmail]","", email, "Insert");
                dbLibrary.idExecute(qur);
            }
            else
            {
                qur = dbLibrary.idBuildQuery("[SaveEmail]", contactid, email, "Update");
                dbLibrary.idExecute(qur);
            }
            return "Success";
        }

        [WebMethod]
        public string DeleteEmails(string contactid)
        {
            string qur="Delete from ContactDetails where contactID='"+contactid+"'";
            dbLibrary.idExecute(qur);
            return "success";
        }

        [WebMethod]
        public void getReport(string year)
        {
            List<report> listreport = new List<report>();
            string cs = ConfigurationManager.ConnectionStrings["saltOrderconStr"].ConnectionString;
            using (SqlConnection objsql = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select * from v_SaltOrderReport where YEAR(orderDateTime)='" + year + "'", objsql);
                objsql.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    report reportobj = new report();
                    reportobj.orderID = rdr["orderID"].ToString();
                    reportobj.orderDateTime = rdr["orderDateTime"].ToString();
                    reportobj.agencyPOC= rdr["agencyPOC"].ToString();
                    reportobj.agencyEmail = rdr["agencyEmail"].ToString();
                    reportobj.agencyDirectPhone = rdr["agencyDirectPhone"].ToString();
                    reportobj.agencyAltContact = rdr["agencyAltContact"].ToString();
                    reportobj.agencyAltEmail = rdr["agencyAltEmail"].ToString();
                    reportobj.agencyAltPhone = rdr["agencyAltDirectPhone"].ToString();
                    reportobj.District = rdr["District"].ToString();
                    reportobj.agencyLocationType = rdr["agencyLocationType"].ToString();
                    reportobj.municipalAgencyName = rdr["municipalAgencyName"].ToString();
                    reportobj.streetAddress = rdr["streetAddress"].ToString();
                    reportobj.city = rdr["city"].ToString();
                    reportobj.zip = rdr["zip"].ToString();
                    reportobj.unloadingMethod = rdr["unloadingMethod"].ToString();
                    reportobj.untreatedSaltQty = rdr["untreatedSaltQty"].ToString();
                    reportobj.untreatedSaltQtyType = rdr["untreatedSaltQtyType"].ToString();
                    reportobj.treatedSaltQty = rdr["treatedSaltQty"].ToString();
                    reportobj.treatedSaltQtyType = rdr["treatedSaltQtyType"].ToString();
                    reportobj.earlyFilluntreatedSaltQty = rdr["untreatedSaltyQtyEarlyFill"].ToString();
                    reportobj.earlyFilluntreatedSaltQtyType = rdr["untreatedSaltEarlyFillQtyType"].ToString();
                    reportobj.earlyFilltreatedSaltQty = rdr["treatedSaltQytEarlyFill"].ToString();
                    reportobj.earlyFilltreatedSaltQtyType = rdr["treatedSaltEarlyFillQtyType"].ToString();
                    listreport.Add(reportobj);
                }
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(listreport));
        }

    }
}
