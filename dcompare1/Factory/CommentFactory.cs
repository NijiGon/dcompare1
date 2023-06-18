using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dcompare1.Model;

namespace dcompare1.Factory
{
    public class CommentFactory
    {
        public static Review createReview(int user_id, int device_id, int likes, int dislikes, string comment, int rating)
        {
            Review review = new Review();
            review.user = user_id;
            review.device = device_id;
            review.likes = likes;
            review.dislikes = dislikes;
            review.comment = comment;
            review.rating = rating;
            return review;
        }
        public static void UpdateComment(Review r, string comment, int rating)
        {
            r.comment = comment;
            r.rating = rating;
        }
    }
}