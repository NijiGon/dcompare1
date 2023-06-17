using dcompare1.Algo;
using dcompare1.Model;
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
    public partial class Compare2 : System.Web.UI.Page
    {
        public List<Device> devices = new List<Device>();
        public Device d = null;
        public Device d2 = null;
        public double rating;
        public double rating2;
        public int dimensionWinner, displayWinner, audioWinner, processorWinner, graphicsWinner, ramWinner, storageWinner, fcameraWinner, rcameraWinner, batteryWinner;
        public string Id, Id2;

        public int winner;
        protected void Page_Load(object sender, EventArgs e)
        {
            //int sub1 = 0, sub2 = 0;
            string Id = Request.QueryString["id"];
            string Id2 = Request.QueryString["id2"];
            int id = Convert.ToInt32(Id);
            int id2 = Convert.ToInt32(Id2);
            devices = DeviceRepo.GetDevices();
            d = DeviceRepo.FindById(id);
            d2 = DeviceRepo.FindById(id2);
            rating = DeviceRepo.GetRating(id);
            rating2 = DeviceRepo.GetRating(id2);
            dimensionWinner = CompareAlgo.compareDimension(d, d2);
            displayWinner = CompareAlgo.compareDisplay(d, d2);
            audioWinner = CompareAlgo.compareAudio(d, d2);
            processorWinner = CompareAlgo.compareProcessor(d, d2);
            graphicsWinner = CompareAlgo.compareGraphics(d, d2);
            ramWinner = CompareAlgo.compareMemory(d, d2);
            storageWinner = CompareAlgo.compareStorage(d, d2);
            batteryWinner = CompareAlgo.compareBattery(d, d2);
            fcameraWinner = CompareAlgo.compareFCamera(d, d2);
            rcameraWinner = CompareAlgo.compareRCamera(d, d2);
            winner = CompareAlgo.realWinner(dimensionWinner, displayWinner, audioWinner, processorWinner, graphicsWinner, ramWinner, storageWinner, fcameraWinner, rcameraWinner, batteryWinner);
            //Console.WriteLine(dimensionWinner);

            //if (!IsPostBack && Request.QueryString["keywords"] != null)
            //{
            //    string keywords = Request.QueryString["keywords"];

            //    // Perform the database query using LINQ based on the keywords
            //    var searchResults = DeviceRepo.FindyByKeyword(keywords);

            //    // Generate the HTML for the search results
            //    StringBuilder sb = new StringBuilder();
            //    foreach (var result in searchResults)
            //    {
            //        sb.AppendFormat("<li class=\"mb-1 py-2 px-4\"><a class=\"text-black text-decoration-none\" href=\"Compare3.aspx?id={0}&id2={1}&id3={2}\">{3}</a></li>", d.Id, d2.Id, result.Id, result.name);
            //    }
            //    // Return the HTML to the client
            //    Response.Write(sb.ToString());
            //    Response.End();
            //}
        }
        
    }
}