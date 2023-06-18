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
    public partial class Compare4 : System.Web.UI.Page
    {
        public List<Device> devices = new List<Device>();
        public Device d = null;
        public Device d2 = null;
        public Device d3 = null;
        public Device d4 = null;
        public string rating, rating2, rating3, rating4;
        public int dimensionWinner, displayWinner, audioWinner, processorWinner, graphicsWinner, ramWinner, storageWinner, fcameraWinner, rcameraWinner, batteryWinner;
        public string type1 = "";
        public string type2 = "border-end";
        public string type3 = "border border-4 border-bottom-0 border-top-0";
        public string type4 = "border border-4 border-top-0";
        public string type5 = "border border-4 border-bottom-0";
        public int winner;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            int id2 = Convert.ToInt32(Request.QueryString["id2"]);
            int id3 = Convert.ToInt32(Request.QueryString["id3"]);
            int id4 = Convert.ToInt32(Request.QueryString["id4"]);

            devices = DeviceRepo.GetDevices();
            d = DeviceRepo.FindById(id);
            d2 = DeviceRepo.FindById(id2);
            d3 = DeviceRepo.FindById(id3);
            d4 = DeviceRepo.FindById(id4);
            rating = DeviceRepo.GetRating(id).ToString("0.00");
            rating2 = DeviceRepo.GetRating(id2).ToString("0.00");
            rating3 = DeviceRepo.GetRating(id3).ToString("0.00");
            rating4 = DeviceRepo.GetRating(id4).ToString("0.00");
            dimensionWinner = CompareAlgo3.compareDimension(d, d2, d3, d4);
            displayWinner = CompareAlgo3.compareDisplay(d, d2, d3, d4);
            audioWinner = CompareAlgo3.compareAudio(d, d2, d3, d4);
            processorWinner = CompareAlgo3.compareProcessor(d, d2, d3, d4);
            graphicsWinner = CompareAlgo3.compareGraphics(d, d2, d3, d4);
            ramWinner = CompareAlgo3.compareMemory(d, d2, d3, d4);
            storageWinner = CompareAlgo3.compareStorage(d, d2, d3, d4);
            batteryWinner = CompareAlgo3.compareBattery(d, d2, d3, d4);
            fcameraWinner = CompareAlgo3.compareFCamera(d, d2, d3, d4);
            rcameraWinner = CompareAlgo3.compareRCamera(d, d2, d3, d4);
            winner = CompareAlgo3.realWinner(dimensionWinner, displayWinner, audioWinner, processorWinner, graphicsWinner, ramWinner, storageWinner, fcameraWinner, rcameraWinner, batteryWinner);
            //Console.WriteLine(dimensionWinner);
        }
    }
}