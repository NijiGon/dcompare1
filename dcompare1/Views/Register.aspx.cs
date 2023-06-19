using dcompare1.Controller;
using dcompare1.Model;
using dcompare1.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dcompare1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string errorCode = UserValidator.UserValidation(tbDepan.Text, tbBelakang.Text, tbPass.Text, tbEmail.Text, tbUsername.Text);
            if (string.IsNullOrEmpty(errorCode))
            {
                UserRepo.addUser(tbDepan.Text, tbBelakang.Text, tbPass.Text, tbEmail.Text, tbUsername.Text);
                Response.Redirect("Login.aspx");
            }
            lbError.Text = errorCode;
        }
    }
}