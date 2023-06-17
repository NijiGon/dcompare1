using dcompare1.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dcompare1.Views
{
    public partial class SearchDevices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Request.QueryString["keywords"] != null)
            {
                string keywords = Request.QueryString["keywords"];
                string id1 = Request.QueryString["id"];
                string id2 = Request.QueryString["id2"];

                // Perform the database query using LINQ based on the keywords
                var searchResults = DeviceRepo.FindyByKeyword(keywords);

                // Generate the HTML for the search results
                StringBuilder sb = new StringBuilder();
                foreach (var result in searchResults)
                {
                    sb.AppendFormat("<li class=\"mb-1 py-2 px-4\"><a class=\"text-black text-decoration-none\" href=\"Compare3.aspx?id={0}&id2={1}&id3={2}\">{3}</a></li>", id1, id2, result.Id, result.name);
                }

                // Return the HTML to the client
                Response.Write(sb.ToString());
                Response.End();
            }
        }
    }
}