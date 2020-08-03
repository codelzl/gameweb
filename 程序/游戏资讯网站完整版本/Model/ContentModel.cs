using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public class ContentModel
    {
        int pd;
        int id;
        string name;
        string content;
        string title;
        int show;
        DateTime date;

        public int Pd
        {
            get
            {
                return pd;
            }

            set
            {
                pd = value;
            }
        }

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

        public int Show
        {
            get
            {
                return show;
            }

            set
            {
                show = value;
            }
        }

        public DateTime Date
        {
            get
            {
                return date;
            }

            set
            {
                date = value;
            }
        }

        public ContentModel(int pd, int id, string name, string content, string title, int show, DateTime date)
        {
            this.Pd = pd;
            this.Id = id;
            this.Name = name;
            this.Content = content;
            this.Title = title;
            this.Show = show;
            this.Date = date;
        }
    }
}
