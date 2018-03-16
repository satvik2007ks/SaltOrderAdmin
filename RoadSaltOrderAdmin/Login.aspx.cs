using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RoadSaltOrder.Library;

namespace VMP_1._0
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string name = User.Identity.Name;
                string qur = "select userID from AdminLogin where userName='"+User.Identity.Name.Split('\\')[1].ToString()+"'";
                    DataSet ds = dbLibrary.idGetCustomResult(qur);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Session["UserId"] = ds.Tables[0].Rows[0][0].ToString();
                        Response.AddHeader("REFRESH", "1;URL=AdminPanel.aspx");
                    }
                else
                {
                    Response.Redirect("AccessDenied.aspx");
                }
            }
        }
    }
}