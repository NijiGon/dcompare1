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
        public double[] ratings = new double[100];
        public int[] prices = new int[100];
        public string[] sp = new string[100];
        public List<Device> devices = new List<Device>();
        public List<Device> newdevices = new List<Device>();
        public string sort, brand;
        protected void Page_Load(object sender, EventArgs e)
        {
            sort = Request.QueryString["sort"];
            brand = Request.QueryString["brand"];
            if (brand == null)
                devices = DeviceRepo.GetDevices();
            else devices = DeviceRepo.GetDevicesByBrand(brand);
            GetSorted(sort, ref devices);
            foreach (var d in devices)
            {
                ratings[d.Id] = DeviceRepo.GetRating(d.Id);
                //if (pt == "min") sp[d.Id] = d.minpriceUrl != null ? WebScraper.ScrapeWebsite(d.minpriceUrl) : "-";
                //else if (pt == "max") sp[d.Id] = d.maxpriceUrl != null ? WebScraper.ScrapeWebsite(d.maxpriceUrl) : "-";
                //else
                sp[d.Id] = d.maxpriceUrl != null ? WebScraper.ScrapeWebsite(d.maxpriceUrl) : "-";
            }

            // Filter devices based on checkbox selections
            foreach (var d in devices)
            {
                if (!FilterPrice(ParsePrice(sp[d.Id]), checkBox1, checkBox2, checkBox3) || !FilterRating(ratings[d.Id], checkBox5, checkBox6, checkBox7))
                    continue;
                newdevices.Add(d);
            }

            // Bind the filtered devices to a control (e.g., GridView)
            // gridView.DataSource = newdevices;
            // gridView.DataBind();
        }

        protected static void GetSorted(string sort, ref List<Device> devices)
        {
            if(sort != null)
            {
                if (sort == "alph_asc") devices = DeviceRepo.SortByName();
                else if (sort == "alph_dsc") devices = DeviceRepo.SortByNameDesc();
                else if (sort == "rating_dsc") devices = devices.OrderByDescending(d => DeviceRepo.GetRating(d.Id)).ToList();
                else if (sort == "price_asc") devices = devices.OrderBy(d => ParsePrice(WebScraper.ScrapeWebsite(d.maxpriceUrl))).ToList();
                else if (sort == "price_dsc") devices = devices.OrderByDescending(d => ParsePrice(WebScraper.ScrapeWebsite(d.maxpriceUrl))).ToList();
                //if(pt == "max")
                //{
                //    if (sort == "price_asc") devices = devices.OrderBy(d => ParsePrice(WebScraper.ScrapeWebsite(d.maxpriceUrl))).ToList();
                //    else if (sort == "price_dsc") devices = devices.OrderByDescending(d => ParsePrice(WebScraper.ScrapeWebsite(d.maxpriceUrl))).ToList();
                //}
                //else if(pt == "min")
                //{
                //    if (sort == "price_asc") devices = devices.OrderBy(d => ParsePrice(WebScraper.ScrapeWebsite(d.minpriceUrl))).ToList();
                //    else if (sort == "price_dsc") devices = devices.OrderByDescending(d => ParsePrice(WebScraper.ScrapeWebsite(d.minpriceUrl))).ToList();
                //}
            }
        }

        protected static int ParsePrice(string sprice)
        {
            if (sprice != "-")
            {
                string priceString = sprice;
                string numericString = priceString.Replace("Rp", "").Replace(".", "");
                int price = int.Parse(numericString);
                return price;
            }
            return 0;
        }

        protected static bool FilterPrice(int p, CheckBox cb1, CheckBox cb2, CheckBox cb3)
        {
            if (cb1.Checked == false && cb2.Checked == false && cb3.Checked == false)
            {
                return true;
            }
            else
            {
                if (cb1.Checked)
                {
                    if (p < 1500000 || p > 5500000) return false;
                }
                else if (cb2.Checked)
                {
                    if (p <= 5500000 || p > 10000000) return false;
                }
                else if (cb3.Checked)
                {
                    if (p <= 10000000 || p > 25000000) return false;
                }
            }
            return true;
        }

        protected static bool FilterRating(double r, CheckBox cb1, CheckBox cb2, CheckBox cb3)
        {
            if (cb1.Checked == false && cb2.Checked == false && cb3.Checked == false)
            {
                return true;
            }
            else
            {
                if (cb1.Checked)
                {
                    if (r < 3 || r > 4) return false;
                }
                else if (cb2.Checked)
                {
                    if (r <= 4 || r > 5) return false;
                }
                else if (cb3.Checked)
                {
                    if (r != 5) return false;
                }
            }
            return true;
        }

        protected void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox checkBox = (CheckBox)sender;
            checkBox.AutoPostBack = true;

            ContentPlaceHolder contentPlaceHolder = (ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1");

            if (contentPlaceHolder != null)
            {
                foreach (Control control in contentPlaceHolder.Controls)
                {
                    if (control is CheckBox cb && cb != sender)
                    {
                        cb.Checked = false;
                    }
                }
            }

            ScriptManager.RegisterStartupScript(this, GetType(), "RefreshPage", "RefreshPage();", true);
        }

        protected void checkBox5_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox checkBox = (CheckBox)sender;
            checkBox.AutoPostBack = true;

            ContentPlaceHolder contentPlaceHolder = (ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1");

            if (contentPlaceHolder != null)
            {
                foreach (Control control in contentPlaceHolder.Controls)
                {
                    if (control is CheckBox cb && cb != sender)
                    {
                        cb.Checked = false;
                    }
                }
            }

            ScriptManager.RegisterStartupScript(this, GetType(), "RefreshPage", "RefreshPage();", true);
        }
    }
}
