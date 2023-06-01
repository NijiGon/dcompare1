using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dcompare1.Model;

namespace dcompare1.Repository
{
    public class DatabaseSingleton
    {
        private static MainEntities10 db = null;

        public static MainEntities10 getInstance()
        {
            if(db == null)
            {
                db = new MainEntities10();
            }
            return db;
        }
    }
}