using dcompare1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dcompare1.Model;

namespace dcompare1.Repository
{
    public class DeviceRepo
    {
        static MainEntities10 db = DatabaseSingleton.getInstance();
        public static List<Device> GetDevices()
        {
            return (from d in db.Devices select d).ToList();
        }

        public static Device FindById(int id)
        {
            return (from d in db.Devices where d.Id == id select d).FirstOrDefault();
        }
    }
}