using dcompare1.Algo;
using dcompare1.Model;
using dcompare1.Repository;
using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dcompare1.Views
{
    public partial class Compare1 : System.Web.UI.Page
    {
        public List<Review> review = new List<Review>();
        public List<Device> devices = new List<Device>();
        public Device d = null;
        public string rating;
        public string data;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            devices = DeviceRepo.GetDevices();
            d = DeviceRepo.FindById(id);
            rating = DeviceRepo.GetRating(id).ToString("0.00");
            review = CommentRepo.GetReviews(Convert.ToInt32(id));
            data = WebScraper.ScrapeWebsite(d.maxpriceUrl);
        }
        protected void Star_Click(object sender, EventArgs e)
        {
            var starButton = (LinkButton)sender;
            var starIndex = int.Parse(starButton.CommandArgument);

            hiddenStarIndex.Value = starIndex.ToString();

            // Loop through all the star controls
            for (int i = 1; i <= starIndex; i++)
            {
                var filledStar = (Image)starButton.FindControl("filledStar" + i);
                filledStar.Visible = true;

                var emptyStar = (Image)starButton.FindControl("emptyStar" + i);
                emptyStar.Visible = false;
            }

            // Perform any other necessary operations, such as submitting the rating
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            User u = Session["user"] as User;
            int device_id = Convert.ToInt32(Request.QueryString["id"]);
            string rating = hiddenStarIndex.Value;
            if (u != null || !string.IsNullOrEmpty(rating) && cbAgree.Checked == true)
            {
                Review r = CommentRepo.GetReviewByUserAndDevice(u.Id, d.Id);
                if(r == null)
                    CommentRepo.addReview(u.Id, device_id, 0, 0, txtReview.Value, Convert.ToInt32(rating));
                else
                    CommentRepo.EditComment(u.Id, device_id, txtReview.Value, Convert.ToInt32(rating));
            }
            else
            {
                if (cbAgree.Checked == false) lbError.Text += "Agreement must be checked";
            }
        }
    }
}