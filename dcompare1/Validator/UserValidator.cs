using dcompare1.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dcompare1.Controller
{
    public class UserValidator
    {
        public static string UserValidation(string first, string last, string pass, string email, string uname)
        {
            if(validName(first) && validName(last))
            {
                if (validPassword(pass))
                {
                    if (validEmail(email))
                    {
                        if (checkUname(uname))
                        {
                            return null;
                        }
                        return "Username must be unique and contain at least one digit";
                    }
                    return "Invalid email";
                }
                return "Password must contain at least 8 character, a digit, and an uppercase letter";
            }
            return "First and last names cannot contain a digit";
        }
        public static string UserEditValidation(string first, string last, string pass, string email, string uname)
        {
            if (validName(first) && validName(last))
            {
                if (validPassword(pass))
                {
                    if (validEmail(email))
                    {
                        if (checkUname(uname))
                        {
                            return null;
                        }
                        return "Username must be unique and contain at least one digit";
                    }
                    return "Invalid email";
                }
                return "Password must contain at least 8 character, a digit, and an uppercase letter";
            }
            return "First and last names cannot contain a digit";
        }
        public static Boolean checkUname(string uname)
        {
            if (string.IsNullOrEmpty(uname)) return true;
            foreach (char i in uname)
            {
                if (char.IsDigit(i)) return true;
            }
            return false;
        }
        public static Boolean checkUpper(string pass)
        {
            foreach(char i in pass)
            {
                if (char.IsUpper(i))
                {
                    return true;
                }
            }
            return false;
        }
        public static Boolean checkNumber(string pass)
        {
            foreach(char i in pass)
            {
                if (char.IsDigit(i))
                {
                    return true;
                }
            }
            return false;
        }
        public static Boolean validPassword(string pass)
        {
            if(pass.Length >= 8 || string.IsNullOrEmpty(pass))
            {
                if (checkUpper(pass))
                {
                    if (checkNumber(pass)){
                        return true;
                    }
                }
            }
            return false;
        }
        public static Boolean validName(string name)
        {
            foreach(char i in name)
            {
                if(char.IsDigit(i) == true)
                {
                    return false;
                }
            }
            return true;
        }
        public static Boolean validEmail(string email)
        {
            if (email.Contains('@') && email.Contains('.'))
            {
                if (email.IndexOf('.') != 0 && email.IndexOf('.') != email.Length - 1 && email.IndexOf('@') != 0 && email.IndexOf('@') != email.Length - 1)
                {
                    if (email.IndexOf('@') != email.IndexOf('.') + 1 && email.IndexOf('@') != email.IndexOf('.') - 1)
                    {
                        return true;
                    }
                }
            }
            else if (string.IsNullOrEmpty(email)) return true;
            return false;
        }
    }
}