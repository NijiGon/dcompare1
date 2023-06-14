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
    public partial class HomeView : System.Web.UI.Page
    {
        public List<Device> devices = new List<Device>();
        protected void Page_Load(object sender, EventArgs e)
        {
            devices = DeviceRepo.GetDevices();
        }
    }
}