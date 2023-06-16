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
    public partial class Compare2 : System.Web.UI.Page
    {
        public List<Device> devices = new List<Device>();
        public Device d = null;
        public Device d2 = null;
        public double rating;
        public double rating2;
        public int dimensionWinner, displayWinner, audioWinner, processorWinner, graphicsWinner, ramWinner, storageWinner, fcameraWinner, rcameraWinner, batteryWinner;

        public int winner;
        protected void Page_Load(object sender, EventArgs e)
        {
            //int sub1 = 0, sub2 = 0;
            int id = Convert.ToInt32(Request.QueryString["id"]);
            int id2 = Convert.ToInt32(Request.QueryString["id2"]);
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
        }
        
    }
}