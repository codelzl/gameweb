using System;
using System.Collections.Generic;
using System.Text;
using DAL;
using Model;
using System.Data;

namespace BLL
{
    public class WzxxBLL
    {
        WzxxDAL Wd = new WzxxDAL();
        public void update(string title, string meta, string banquan)
        {
            Wd.update(title,meta,banquan);

         }
        public DataSet pageload() {
          return   Wd.pageload();

        }
        public DataSet loadbyid()
        {
            return Wd.loadbyid();

        }
        

    }
}
