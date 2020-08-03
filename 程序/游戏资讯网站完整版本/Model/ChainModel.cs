using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public  class ChainModel
    {
        int id;
        string url;
        string text;

        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public string Url
        {
            get
            {
                return url;
            }

            set
            {
                url = value;
            }
        }

        public string Text
        {
            get
            {
                return text;
            }

            set
            {
                text = value;
            }
        }

        public ChainModel(int id, string url, string text)
        {
            this.Id = id;
            this.Url = url;
            this.Text = text;
        }
    }
}
