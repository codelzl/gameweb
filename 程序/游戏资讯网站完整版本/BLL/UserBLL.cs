using System;
using System.Collections.Generic;
using System.Text;
using DAL;
using Model;
using System.Data.SqlClient;

namespace BLL
{
   public class UserBLL
    {
        UserDAL ud = new UserDAL();
        public int check(UserModel user)
        {
            int lntUserln = ud.UserkLogin(user.Name,user.Pwd);
           
            return lntUserln;

        }
        public int checkzc(UserModel user)
        {
           
            int lntUserzc = ud.UserkLogin(user.Name);
            return lntUserzc;

        }

        public void Reg(UserModel user)
        {
            UserDAL ud = new UserDAL();
            ud.UserReg(user);
        }

        public SqlDataAdapter SearchID()
        {
            UserDAL ud = new UserDAL();

            return   ud.SearchID();
          
         }


        public void DeleteID(int ID)
        {
            UserDAL ud = new UserDAL();

            ud.DeleteID(ID);

        }

    }
}
