using dcompare1.Algo;
using dcompare1.Model;
using dcompare1.Repository;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dcompare1.Views
{
    public partial class ViewDevices : System.Web.UI.Page
    {
        //List<double> ratings = new List<double>();
        //List<int> prices = new List<int>();
        public double[] ratings = new double[100];
        public int[] prices = new int[100];
        public string[] sp = new string[100];
        public List<Device> devices = new List<Device>();
        protected void Page_Load(object sender, EventArgs e)
        {
            devices = DeviceRepo.GetDevices();
            //for (int i = 0; i < devices.Count; i++)
            //{
            //    ratings.Add(0.0);
            //    prices.Add(0);
            //}
            foreach (var d in devices)
            {
                ratings[d.Id] = DeviceRepo.GetRating(d.Id);
                //if (d.priceUrl != null) prices[d.Id] = ParsePrice(WebScraper.ScrapeWebsite(d.priceUrl));
                //else prices[d.Id] = 0;
                sp[d.Id] = d.priceUrl != null ? WebScraper.ScrapeWebsite(d.priceUrl) : "-";
            }
        }
        protected int ParsePrice(string sprice)
        {
            string priceString = sprice;
            string numericString = priceString.Replace("Rp", "").Replace(".", "");
            int price = int.Parse(numericString);
            return price;
        }

        protected void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            ContentPlaceHolder contentPlaceHolder = (ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1");

            if (contentPlaceHolder != null)
            {
                foreach (Control control in contentPlaceHolder.Controls)
                {
                    if (control is CheckBox checkBox && checkBox != sender)
                    {
                        checkBox.Checked = false;
                    }
                }
            }
        }

        protected void checkBox5_CheckedChanged(object sender, EventArgs e)
        {
            ContentPlaceHolder contentPlaceHolder = (ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1");

            if (contentPlaceHolder != null)
            {
                foreach (Control control in contentPlaceHolder.Controls)
                {
                    if (control is CheckBox checkBox && checkBox != sender)
                    {
                        checkBox.Checked = false;
                    }
                }
            }
        }
    }
}