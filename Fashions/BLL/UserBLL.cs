using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class UserBLL
    {
        public static DataTable LoginOrAddQuery(string name, string pwd)
        {
            return DAL.UserDAL.LoginOrAddQuery(name, pwd);
        }

        public static int AddUser(string name, string pwd)
        {
            return DAL.UserDAL.AddUser(name, pwd);
        }
        public static DataTable CategoryList()
        {
            return DAL.UserDAL.CategoryList();
        }

        public static DataTable ProductList()
        {
            return DAL.UserDAL.ProductList();
        }
        public static DataTable CategoryList(string categoryId)
        {
            return DAL.UserDAL.CategoryList(categoryId);
        }
        public static DataTable QueryInfo(string pid)
        {
            return DAL.UserDAL.QueryInfo(pid);
        }

        public static int AddToCart(string img, string name, decimal price, string cookiename)
        {
            return DAL.UserDAL.AddToCart(img,name,price,cookiename);
        }

        public static DataTable CartList(string uname)
        {
            return DAL.UserDAL.CartList(uname);
        }

        public static DataTable DeleteCart(string cid)
        {
            return DAL.UserDAL.DeleteCart(cid);
        }

        public static int UpdateCart(int num, decimal total, string cid)
        {
            return DAL.UserDAL.UpdateCart(num,total,cid);
        }

        public static int CountNum(string uname)
        {
            return DAL.UserDAL.CountNum(uname);
        }
      
        public static DataTable SelectCart(string cid)
        {
            return DAL.UserDAL.SelectCart(cid);
        }

        public static DataTable SelectUserId(string cid)
        {
            return DAL.UserDAL.SelectUserId(cid);
        }
        public static int  AddOrder(int cid, decimal Total)
        {
            return DAL.UserDAL.AddOrder(cid,Total);
        }
        public static int SelectOrderId()
        {

            return DAL.UserDAL.SelectOrderId();
        }

        public static int UpdateState(string oid)
        {
            return DAL.UserDAL.UpdateState(oid);
        }

        public static int ClearCart(string cid)
        {

            return DAL.UserDAL.ClearCart(cid);
        }
    }
}
