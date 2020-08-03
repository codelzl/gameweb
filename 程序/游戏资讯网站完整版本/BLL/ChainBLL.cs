using System;
using System.Collections.Generic;
using System.Text;
using DAL;
using System.Data;

namespace BLL
{
    
    public class ChainBLL
    {
        ChainDAL cd = new ChainDAL();
        public void insert(string Title, string Url)
        {
            cd.insert(Title, Url);
        }
        public DataSet all()
        {
            return cd.all();
        }

    }
}
