using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace COMP3851B.BBL
{
    public class Account
    {

        public string AdminEmail { get; set; }
        public string AdminPassword { get; set; }
        public string AdminUsername { get; set; }
        public int AdminAge { get; set; }
        public string IsDisabled { get; set; }

        public Account()
        {


        }

        public Account(string name)
        {
            this.AdminUsername = name;
        }

        public Account(string email, string pwd, string uname)
        {
            this.AdminEmail = email;
            this.AdminPassword = pwd;
            this.AdminUsername = uname;
        }

        public Account(string name, string email, string IsDisabled, string pwd)
        {
            this.AdminUsername = email;
            this.AdminUsername = name;
            this.AdminPassword = pwd;
            this.IsDisabled = IsDisabled;
        }


    }

}
