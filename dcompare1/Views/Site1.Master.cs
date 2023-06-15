using dcompare1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dcompare1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string uname;
        protected void Page_Load(object sender, EventArgs e)
        {
            User u = Session["user"] as User;
            uname = u != null ? u.first_name : "Login";
        }
    }
}