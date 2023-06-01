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
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MainEntities10 db = DatabaseSingleton.getInstance();

            User u = (from user in db.Users where tbEmail.Text == user.email && tbPass.Text == user.password select user).FirstOrDefault();

            if (u != null)
            {
                Session["user"] = u;
                Response.Redirect("Home.aspx");
                return;
            }
        }
    }
}