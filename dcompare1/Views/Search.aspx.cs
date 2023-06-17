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
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Request.QueryString["keywords"] != null)
            {
                string keywords = Request.QueryString["keywords"];

                // Perform the database query using LINQ based on the keywords
                var searchResults = DeviceRepo.FindyByKeyword(keywords);

                // Generate the HTML for the search results
                StringBuilder sb = new StringBuilder();
                foreach (var result in searchResults)
                {
                    sb.AppendFormat("<li class=\"mb-1 py-2 px-4\"><a class=\"text-black text-decoration-none\" href=\"Compare1.aspx?id={0}\">{1}</a></li>", result.Id, result.name);
                }

                // Return the HTML to the client
                Response.Write(sb.ToString());
                Response.End();
            }
        }
    }
}