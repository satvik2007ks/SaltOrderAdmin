using ClosedXML.Excel;
using RoadSaltOrder.Library;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace RoadSaltOrderAdmin
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserId"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    string qur = "select Distinct(YEAR(orderDateTime)) as year from [Order]";
                    DataSet ds = dbLibrary.idGetCustomResult(qur);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        ddlYear.DataValueField = "year";
                        ddlYear.DataTextField = "year";
                        ddlYear.DataSource = ds;
                        ddlYear.DataBind();
                    }
                    MultiView1.SetActiveView(View1);
                }
            }
        }

        protected void lnkReport_Click(object sender, EventArgs e)
        {
            liReport.Attributes.Add("class", "active");
            liEmail.Attributes.Remove("class");
            MultiView1.SetActiveView(View1);
        }

        protected void lnkEmail_Click(object sender, EventArgs e)
        {
            liReport.Attributes.Remove("class");
            liEmail.Attributes.Add("class", "active");
            MultiView1.SetActiveView(View2);
        }

        protected void lnkExport_Click(object sender, EventArgs e)
        {
            string qur = "select * from v_SaltOrderReport where YEAR(orderDateTime)='" + ddlYear.SelectedValue + "'";
            DataSet ds = dbLibrary.idGetCustomResult(qur);
            if (ds.Tables[0].Rows.Count > 0)
            {
                using (XLWorkbook wb = new XLWorkbook())
                {
                    ds.Tables[0].TableName = "Report";
                    wb.Worksheets.Add(ds.Tables[0]);

                    Response.Clear();
                    Response.Buffer = true;
                    Response.Charset = "";
                    Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                    Response.AddHeader("content-disposition", "attachment;filename=SaltOrderReport_"+ddlYear.SelectedValue+".xlsx");
                    using (MemoryStream MyMemoryStream = new MemoryStream())
                    {
                        wb.SaveAs(MyMemoryStream);
                        MyMemoryStream.WriteTo(Response.OutputStream);
                        Response.Flush();
                        Response.End();
                    }
                }
            }
        }
    }
}