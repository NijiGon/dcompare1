using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dcompare1.Controller
{
    public class UserValidator
    {
        public static Boolean UserValidation(string first, string last, string pass, string email)
        {
            if(validName(first) && validName(last) && validPassword(pass) && validEmail(email))
            {
                return true;
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
            if(pass.Length >= 8)
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
                if(char.IsLetterOrDigit(i) == false)
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
            return false;
        }
    }
}