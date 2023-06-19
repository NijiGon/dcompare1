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

            User u = UserRepo.FindUser(tbEmail.Text, tbPass.Text);

            if (u != null)
            {
                Session["user"] = u;
                Response.Redirect("Home.aspx");
                return;
            }
            lbError.Text = "Incorrect combination of email and password.";
        }
    }
}