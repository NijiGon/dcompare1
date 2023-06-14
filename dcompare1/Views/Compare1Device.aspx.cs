﻿using dcompare1.Model;
using dcompare1.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dcompare1.Views
{
    public partial class Compare1Device : System.Web.UI.Page
    {
        public List<Review> review = new List<Review>();
        public Device d = null;
        public double rating;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            d = DeviceRepo.FindById(id);
            rating = DeviceRepo.GetRating(id);
            review = CommentRepo.GetReviews(Convert.ToInt32(id));
        }
    }
}