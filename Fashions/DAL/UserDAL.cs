using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UserDAL
    {   
        //登录查询和注册查询是否存在已存在账户名
        public static DataTable LoginOrAddQuery(string name, string pwd)
        {
            string sql = $"select * from Users where UserName='{name}' and Password='{pwd}'";
            return SqlHelper.GetTable(sql);
        }
        //注册新用户
        public static int AddUser(string name, string pwd)
        {
            string sql = $"insert into Users values('{name}','{pwd}')";
            return SqlHelper.ExecuteNonQuery(sql);
        }
        //分类展示
        public static DataTable CategoryList()
        {
            string sql = "select * from Category";
            return SqlHelper.GetTable(sql);
        }
        //主页部分数据展示
        public static DataTable ProductList()
        {
            string sql = "select top 8 * from Product";
            return SqlHelper.GetTable(sql);
        }
        //点击分类展示相应数据
        public static DataTable CategoryList(string categoryId)
        {
            string sql = $"select * from Product where CategoryId={categoryId}";
            return SqlHelper.GetTable(sql);
        }
        
        //临时购物车数据展示
        public static DataTable QueryInfo(string pid)
        {
            string sql = $"select Name,NewImage,Newprice from Product where ProductId={pid}";
            return SqlHelper.GetTable(sql);
        }

        //查询用户表的用户ID
        public static DataTable QueryUserId()
        {
            string sql = $"select UserId from Users";
            return SqlHelper.GetTable(sql);
        }
        //添加购物车
        public static int AddToCart(string img,string name,decimal price,string cookiename)
        {
            string sql = $"insert into ShoppingCart values('{img}','{name}',{price},1,45.00,'{cookiename}')";

            return SqlHelper.ExecuteNonQuery(sql); ;
        }
        //展示购物车
        public static DataTable CartList(string uname)
        {
            string sql = $"select * from ShoppingCart where UserName='{uname}'";
            return SqlHelper.GetTable(sql);
        }

        //删除购物车里的某一条记录
        public static DataTable DeleteCart(string cid)
        {
            string sql = $"delete from ShoppingCart where CartId={cid}";
            return SqlHelper.GetTable(sql);
        }

        //编辑购物车
        public static int UpdateCart(int num,decimal total,string cid) {
            string sql = $"update ShoppingCart set Amount={num},Total={total} where CartId={cid}";
            return SqlHelper.ExecuteNonQuery(sql);
        }


        public static int CountNum(string uname) {
            string sql = $"select count(*) from ShoppingCart where UserName='{uname}'";
            return SqlHelper.ExecuteScalar(sql);
        }

        //根据用户名查询当前用户的购物车
        public static DataTable SelectCart(string cid)
        {
            string sql = $"select * from ShoppingCart where UserName='{cid}'";
            return SqlHelper.GetTable(sql);
        }

        //根据用户名查询用户Id
        public static DataTable SelectUserId(string cid)
        {
            string sql = $"select UserId from Users where UserName='{cid}'";
            return SqlHelper.GetTable(sql);
        }
        //添加订单表
        public static int AddOrder(int cid, decimal Total) {

            string sql = $"insert into Orders values({cid},'{DateTime.Now}','待支付',{Total})";
            return SqlHelper.ExecuteNonQuery(sql);
        }

        //查询订单表订单ID并按倒叙排列取第一条数据
        public static int SelectOrderId()
        {

            string sql = "select * from Orders order by OrderId Desc";
            return SqlHelper.ExecuteScalar(sql);
        }
        //支付成功后修改支付状态
        public static int UpdateState(string oid)
        {

            string sql = $"update Orders set ShipState='已支付' where OrderId='{oid}'";
            return SqlHelper.ExecuteScalar(sql);
        }

        //清空购物车
        public static int ClearCart(string cid)
        {

            string sql = $"delete from ShoppingCart where UserName='{cid}'";
            return SqlHelper.ExecuteNonQuery(sql);
        }

    }
}
