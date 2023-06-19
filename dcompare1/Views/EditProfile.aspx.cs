using dcompare1.Controller;
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
    public partial class EditProfile : System.Web.UI.Page
    {
        public List<Review> reviews = new List<Review>();
        public User u;
        protected void Page_Load(object sender, EventArgs e)
        {
            u = Session["user"] as User;
            if (u != null)
            {
                int id = u.Id;
                reviews = CommentRepo.GetCommentsByUser(id);
                tbFName.Attributes["placeholder"] = u.first_name;
                tbLName.Attributes["placeholder"] = u.last_name;
                tbUname.Attributes["placeholder"] = u.username;
                tbEmail.Attributes["placeholder"] = u.email;
                tbPass.Attributes["placeholder"] = "********";
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if(tbFName.ReadOnly == true)
            {
                tbFName.ReadOnly = false;
                tbLName.ReadOnly = false;
                tbEmail.ReadOnly = false;
                tbUname.ReadOnly = false;
                tbPass.ReadOnly = false;
            }
            else
            {
                tbFName.ReadOnly = true;
                tbLName.ReadOnly = true;
                tbEmail.ReadOnly = true;
                tbUname.ReadOnly = true;
                tbPass.ReadOnly = true;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string errorCode = UserValidator.UserEditValidation(tbFName.Text, tbLName.Text, tbPass.Text, tbEmail.Text, tbUname.Text);
            User u = Session["user"] as User;
            if (string.IsNullOrEmpty(errorCode) && u != null)
            {
                UserRepo.UpdateUser(u.Id, tbFName.Text, tbLName.Text, tbPass.Text, tbEmail.Text, tbUname.Text);
                Response.Redirect("EditProfile.aspx");
            }
            else lbError.Text = errorCode;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("Login.aspx");
        }
    }
}