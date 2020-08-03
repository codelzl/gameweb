using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public class AdminModel
    {
        private string name;
        private string password;

        public AdminModel(string password)
        {
            this.password = password;
        }

        public AdminModel(string name, string password)
        {
            this.Name = name;
            this.Password = password;
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }
    }
}
