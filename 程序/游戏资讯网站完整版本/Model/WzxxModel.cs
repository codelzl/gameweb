using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    class WzxxModel
    {
        private string title;
        private string meta;
        private string banqquan;

        public string Title
        {
            get
            {
                return title;
            }

            set
            {
                title = value;
            }
        }

        public string Meta
        {
            get
            {
                return meta;
            }

            set
            {
                meta = value;
            }
        }

        public string Banqquan
        {
            get
            {
                return banqquan;
            }

            set
            {
                banqquan = value;
            }
        }

        public WzxxModel(string title, string meta, string banqquan)
        {
            this.Title = title;
            this.Meta = meta;
            this.Banqquan = banqquan;
        }
    }
}
