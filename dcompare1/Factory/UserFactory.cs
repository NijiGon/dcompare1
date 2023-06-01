using dcompare1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dcompare1.Factory
{
    public class UserFactory
    {
        public static User createUser(string first, string last, string pass, string email)
        {
            User newUser = new User();
            newUser.first_name = first;
            newUser.last_name = last;
            newUser.password = pass;
            newUser.email = email;
            return newUser;
        }
    }
}