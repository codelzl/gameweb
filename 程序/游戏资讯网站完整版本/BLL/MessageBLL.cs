using System;
using System.Collections.Generic;
using System.Text;
using DAL;
using Model;
using System.Data;

namespace BLL
{ 
    public class MessageBLL
    {
        MessageDAL md = new MessageDAL();
        public DataSet load()
        {
            return md.load();
        }
        public DataSet loadbyid() {
            return md.loadbyid();
        }
        public void Delete(string s)
        {
            md.Delete(s);
        }
        public DataSet loadbyiddesc()
        {
            return md.loadbyiddesc();
        }
        public void insert(string Uname, string Ucontent)
        {
           md.insert(Uname, Ucontent);

        }
    }
}
