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
        static MainEntities10 db = DatabaseSingleton.getInstance();

        public static void addUser(string first, string last, string password, string email, string uname)
        {
            User newUser = UserFactory.createUser(first, last, password, email, uname);
            db.Users.Add(newUser);
            db.SaveChanges();
        }

        public static User FindUserByUsername(string uname)
        {
            return (from u in db.Users where u.username == uname select u).FirstOrDefault();
        }

        public static User FindUser(string email, string pass)
        {
            return (from u in db.Users where u.email == email && u.password == pass select u).FirstOrDefault();
        }
        public static User FindById(int id)
        {
            return (from u in db.Users where u.Id == id select u).FirstOrDefault();
        }
        public static void UpdateUser(int id, string first, string last, string password, string email, string uname)
        {
            User u = FindById(id);
            if(u != null)
            {
                UserFactory.editUser(u, first, last, password, email, uname);
                db.SaveChanges();
            }
        }
    }
}