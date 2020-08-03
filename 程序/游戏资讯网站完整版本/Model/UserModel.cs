using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public class UserModel
    {
        private string name;
        private string pwd;
        private string sex;
        private string QQ;
        private string Email;
        private string phone;
        private string hobby;
        private DateTime IssueDate;
        private string podcast;
        public UserModel(string name, string pwd)
        {
            this.Name = name;
            this.Pwd = pwd;
        }
        public UserModel(string name)
        {
            this.Name = name;
            
        }

        public UserModel(string name, string pwd, string sex, string qQ, string email, string phone, string hobby, DateTime issueDate, string podcast)
        {
            this.Name1 = name;
            this.Pwd1 = pwd;
            this.Sex = sex;
            QQ1 = qQ;
            Email1 = email;
            this.Phone = phone;
            this.Hobby = hobby;
            IssueDate1 = issueDate;
            this.Podcast = podcast;
        }

        public string Name
        {
            get
            {
                return Name1;
            }

            set
            {
                Name1 = value;
            }
        }

        public string Pwd
        {
            get
            {
                return Pwd1;
            }

            set
            {
                Pwd1 = value;
            }
        }

        public string Name1
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

        public string Pwd1
        {
            get
            {
                return pwd;
            }

            set
            {
                pwd = value;
            }
        }

        public string Sex
        {
            get
            {
                return sex;
            }

            set
            {
                sex = value;
            }
        }

        public string QQ1
        {
            get
            {
                return QQ;
            }

            set
            {
                QQ = value;
            }
        }

        public string Email1
        {
            get
            {
                return Email;
            }

            set
            {
                Email = value;
            }
        }

        public string Phone
        {
            get
            {
                return phone;
            }

            set
            {
                phone = value;
            }
        }

        public string Hobby
        {
            get
            {
                return hobby;
            }

            set
            {
                hobby = value;
            }
        }

        public DateTime IssueDate1
        {
            get
            {
                return IssueDate;
            }

            set
            {
                IssueDate = value;
            }
        }

        public string Podcast
        {
            get
            {
                return podcast;
            }

            set
            {
                podcast = value;
            }
        }
    }
}
