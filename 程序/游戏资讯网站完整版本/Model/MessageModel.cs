using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
     public class MessageModel
    {
        private string uname;
        private string content;
        private DateTime data;

        public MessageModel(string uname, string content, DateTime data)
        {
            this.uname = uname;
            this.content = content;
            this.data = data;
        }

        public string Uname
        {
            get
            {
                return uname;
            }

            set
            {
                uname = value;
            }
        }

        public string Content
        {
            get
            {
                return content;
            }

            set
            {
                content = value;
            }
        }

        public DateTime Data
        {
            get
            {
                return data;
            }

            set
            {
                data = value;
            }
        }
    }
}
