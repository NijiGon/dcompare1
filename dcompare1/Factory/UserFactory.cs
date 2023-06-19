using dcompare1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dcompare1.Factory
{
    public class UserFactory
    {
        public static User createUser(string first, string last, string pass, string email, string uname)
        {
            User newUser = new User();
            newUser.first_name = first;
            newUser.last_name = last;
            newUser.username = uname;
            newUser.password = pass;
            newUser.email = email;
            return newUser;
        }
        public static void editUser(User u, string first, string last, string pass, string email, string uname)
        {
            if (!string.IsNullOrEmpty(first)) u.first_name = first;
            if (!string.IsNullOrEmpty(last)) u.last_name = last;
            if (!string.IsNullOrEmpty(uname)) u.username = uname;
            if (!string.IsNullOrEmpty(pass)) u.password = pass;
            if (!string.IsNullOrEmpty(email)) u.email = email;
            //u.first_name = first;
            //u.last_name = last;
            //u.username = uname;
            //u.password = pass;
            //u.email = email;
        }
    }
}