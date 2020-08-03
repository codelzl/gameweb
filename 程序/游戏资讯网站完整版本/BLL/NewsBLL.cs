using System;
using System.Collections.Generic;
using System.Text;
using DAL;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public class NewsBLL
    {
        NewsDAL nd = new NewsDAL();
        public DataSet findbyID(string ID)
        {
            return nd.findbyID(ID);
        }
        public void update(string title, string content, string liayuan, string type, string id)
        {
            nd.update( title, content,  liayuan, type, id);
        }

        public string search(string style, string txtKey)
        {
            return nd.search(style,  txtKey);
        }
        public void insert(string Title, string Content, string Style, string Liayuan, string imgsur, int pinglun)
        {
            nd.insert(Title, Content, Style, Liayuan, imgsur, pinglun);

        }
        public SqlDataAdapter all()
        {
            return nd.all();
        }
        public DataSet topid(string ID)
        {
            return nd.topid(ID);

        }
        public DataSet selectstyle(string strStyle)
        {
            return nd.selectstyle(strStyle);
        }
        public DataSet topid7()
        {
            return nd.topid7();

        }
        public SqlDataAdapter bydesc()
        {
            return nd.bydesc();
        }
       
    }
}
