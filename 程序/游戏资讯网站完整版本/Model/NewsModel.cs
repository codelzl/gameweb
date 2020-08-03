using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public class NewsModel
    {
        int ID;
        string title;
        string content;
        string style;
        string laiyuan;
        string imgsur;
        int pinglun;
        DateTime date;

        public int ID1
        {
            get
            {
                return ID;
            }

            set
            {
                ID = value;
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

        public string Style
        {
            get
            {
                return style;
            }

            set
            {
                style = value;
            }
        }

        public string Laiyuan
        {
            get
            {
                return laiyuan;
            }

            set
            {
                laiyuan = value;
            }
        }

        public string Imgsur
        {
            get
            {
                return imgsur;
            }

            set
            {
                imgsur = value;
            }
        }

        public int Pinglun
        {
            get
            {
                return pinglun;
            }

            set
            {
                pinglun = value;
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

        public NewsModel(int iD, string title, string content, string style, string laiyuan, string imgsur, int pinglun, DateTime date)
        {
            ID1 = iD;
            this.Title = title;
            this.Content = content;
            this.Style = style;
            this.Laiyuan = laiyuan;
            this.Imgsur = imgsur;
            this.Pinglun = pinglun;
            this.Date = date;
        }
    }
}
