using dcompare1.Algo;
using dcompare1.Model;
using dcompare1.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dcompare1.Views
{
    public partial class Compare3 : System.Web.UI.Page
    {
        public List<Device> devices = new List<Device>();
        public Device d = null;
        public Device d2 = null;
        public Device d3 = null;
        public string rating, rating2, rating3;
        public int dimensionWinner, displayWinner, audioWinner, processorWinner, graphicsWinner, ramWinner, storageWinner, fcameraWinner, rcameraWinner, batteryWinner;
        public string type1 = "";
        public string type2 = "border-end";
        public string type3 = "border border-4 border-bottom-0 border-top-0";
        public string type4 = "border border-4 border-top-0";
        public string type5 = "border border-4 border-bottom-0";
        public int winner;
        protected void Page_Load(object sender, EventArgs e)
        {
            //int sub1 = 0, sub2 = 0;
            int id = Convert.ToInt32(Request.QueryString["id"]);
            int id2 = Convert.ToInt32(Request.QueryString["id2"]);
            int id3 = Convert.ToInt32(Request.QueryString["id3"]);
            
            devices = DeviceRepo.GetDevices();
            d = DeviceRepo.FindById(id);
            d2 = DeviceRepo.FindById(id2);
            d3 = DeviceRepo.FindById(id3);
            rating = DeviceRepo.GetRating(id).ToString("0.00");
            rating2 = DeviceRepo.GetRating(id2).ToString("0.00");
            rating3 = DeviceRepo.GetRating(id3).ToString("0.00");
            dimensionWinner = CompareAlgo2.compareDimension(d, d2, d3);
            displayWinner = CompareAlgo2.compareDisplay(d, d2, d3);
            audioWinner = CompareAlgo2.compareAudio(d, d2, d3);
            processorWinner = CompareAlgo2.compareProcessor(d, d2, d3);
            graphicsWinner = CompareAlgo2.compareGraphics(d, d2, d3);
            ramWinner = CompareAlgo2.compareMemory(d, d2, d3);
            storageWinner = CompareAlgo2.compareStorage(d, d2, d3);
            batteryWinner = CompareAlgo2.compareBattery(d, d2, d3);
            fcameraWinner = CompareAlgo2.compareFCamera(d, d2, d3);
            rcameraWinner = CompareAlgo2.compareRCamera(d, d2, d3);
            winner = CompareAlgo2.realWinner(dimensionWinner, displayWinner, audioWinner, processorWinner, graphicsWinner, ramWinner, storageWinner, fcameraWinner, rcameraWinner, batteryWinner);
            //Console.WriteLine(dimensionWinner);
        }
    }
}