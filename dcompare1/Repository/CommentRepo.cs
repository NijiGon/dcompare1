using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dcompare1.Factory;
using dcompare1.Model;

namespace dcompare1.Repository
{
    public class CommentRepo
    {
        static MainEntities10 db = DatabaseSingleton.getInstance();
        
        public static void addReview(int user_id, int device_id, int likes, int dislikes, string comment, int rating)
        {
            Review review = CommentFactory.createReview(user_id, device_id, likes, dislikes, comment, rating);
            db.Reviews.Add(review);
            db.SaveChanges();
        }

        public static List<Review> GetReviews(int id)
        {
            //return (from r in db.Reviews select r).ToList();
            return (from r in db.Reviews where r.device == id select r).ToList();
        }
        public static Review GetReviewByUserAndDevice(int user_id, int device_id)
        {
            return (from r in db.Reviews where r.user == user_id && r.device == device_id select r).FirstOrDefault();
        }
        public static void EditComment(int user_id, int device_id, string comment, int rating)
        {
            Review r = GetReviewByUserAndDevice(user_id, device_id);
            if(r != null)
            {
                CommentFactory.UpdateComment(r, comment, rating);
                db.SaveChanges();
            }
        }
    }
}