using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dcompare1.Model;

namespace dcompare1.Repository
{
    public class DatabaseSingleton
    {
        private static MainEntities3 db = null;

        public static MainEntities3 getInstance()
        {
            if(db == null)
            {
                db = new MainEntities3();
            }
            return db;
        }
    }
}