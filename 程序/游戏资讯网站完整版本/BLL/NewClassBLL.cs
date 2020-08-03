using System;
using System.Collections.Generic;
using System.Text;
using DAL;
using System.Data.SqlClient;
using System.Data;

namespace BLL
{
    public class NewClassBLL
    {
        NewClassDAL nd = new NewClassDAL();
        public SqlDataAdapter AllClass()
        {
            return nd.AllClass();
        }
       
        public DataSet loadbyid(string ID)
        {
            return nd.loadbyid(ID);

        }
        public void delete(int ID)
        {
            nd.delete(ID);

        }
        public void insert(string Class_name, string St)
        {
            nd.insert(Class_name,  St);
        }
        public DataSet selectid(string ID)
        {
          return  nd.selectid(ID);
        }
        public void update(string Class_name, string St, string ID)
        {
            nd.update( Class_name,  St,  ID);
        }

      

    }
}
