using System;
using System.Collections.Generic;
using System.Text;
using Model;
using DAL;
using System.Data;

namespace BLL
{
    public class AdminBLL
    {
        AdminDAL AD = new AdminDAL();
        public int check(AdminModel AM)
        {
            int lntUserln = AD.checkLogin(AM.Name, AM.Password);

            return lntUserln;

        }
        public int checkxg(string pwd)
        {
            int lntUserln = AD.checkxg(pwd);
            return  lntUserln;

        }

        public void updatepwd(string newpwd, string Name)
        {
            AD.updatepwd(newpwd, Name);

        }

        public void insert(string name, string pwd)
        {
            AD.insert(name,pwd);

        }
        public void delete(int id)
        {
            AD.delete(id);

        }

        public DataSet load(string ID)
        {
           return  AD.load(ID);

        }
        public DataSet loadbyID(string ID)
        {
            return AD.loadbyID(ID);

        }
    }
}
