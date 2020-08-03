using System;
using System.Collections.Generic;
using System.Text;
using DAL;
using System.Data.SqlClient;

namespace BLL
{
    
    public class ContelBLL
    {
        ContentDAL cd = new ContentDAL();
        public SqlDataAdapter selectByid()
        {
            return cd.selectByid();
        }
        public SqlDataAdapter selectbyt(string Pl, int Xs)
        {
              return  cd.selectbyt(Pl,Xs);
                
         }
        public void delete(int ID)
        {
            cd.delete(ID);

        }
        public void addcontent(string Name, string Content, string Title, string xianshi, string ID)
        {
            cd.addcontent( Name, Content,  Title,  xianshi,  ID);
        }
    }
}
