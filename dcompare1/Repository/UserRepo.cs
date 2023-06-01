using dcompare1.Factory;
using dcompare1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dcompare1.Repository
{
    public class UserRepo
    {
        static MainEntities3 db = DatabaseSingleton.getInstance();

        public static void addUser(string first, string last, string password, string email)
        {
            User newUser = UserFactory.createUser(first, last, password, email);
            db.Users.Add(newUser);
            db.SaveChanges();
        }

    }
}