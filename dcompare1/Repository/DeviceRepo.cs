using dcompare1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dcompare1.Repository
{
    public class DeviceRepo
    {
        static MainEntities10 db = DatabaseSingleton.getInstance();
        public static List<Device> GetDevices()
        {
            return (from d in db.Devices select d).ToList();
        }

        public static double GetRating(int id)
        {
            Review rev = (from r in db.Reviews where r.device == id select r).FirstOrDefault();
            if(rev != null) return (from r in db.Reviews where r.device == id select r.rating).Average();
            return 0;
        }

        public static Device FindById(int id)
        {
            return (from d in db.Devices where d.Id == id select d).FirstOrDefault();
        }

        public static List<Device> FindyByKeyword(string keys)
        {
            return (from d in db.Devices where d.name.Contains(keys) select d).ToList();
        }
        public static List<Device> SortByName()
        {
            return (from d in db.Devices orderby d.name select d).ToList();
        }
        public static List<Device> SortByNameDesc()
        {
            return (from d in db.Devices orderby d.name descending select d).ToList();
        }
        public static List<Device> SortByRating()
        {
            return (from d in db.Devices join r in db.Reviews on d.Id equals r.device into deviceRatings orderby deviceRatings.Average(r => r.rating) select d).ToList();
        }
        public static List<Device> SortByRatingDesc()
        {
            return (from d in db.Devices join r in db.Reviews on d.Id equals r.device into deviceRatings orderby deviceRatings.Average(r => r.rating) descending select d).ToList();
        }
    }
}