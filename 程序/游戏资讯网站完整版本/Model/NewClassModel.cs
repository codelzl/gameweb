using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public class NewClassModel
    {
        int id;
        string Class;
        int st;
        DateTime date;

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

        public string Class1
        {
            get
            {
                return Class;
            }

            set
            {
                Class = value;
            }
        }

        public int St
        {
            get
            {
                return st;
            }

            set
            {
                st = value;
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

        public NewClassModel(int id, string @class, int st, DateTime date)
        {
            this.Id = id;
            Class1 = @class;
            this.St = st;
            this.Date = date;
        }
    }
}
