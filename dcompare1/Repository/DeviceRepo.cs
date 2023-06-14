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
            if(rev != null)
                return (from r in db.Reviews where r.device == id select r.rating).Average();
            else
            {
                return 0;
            }
        }

        public static Device FindById(int id)
        {
            return (from d in db.Devices where d.Id == id select d).FirstOrDefault();
        }
    }
}