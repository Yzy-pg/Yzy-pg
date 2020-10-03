using Alipay.EasySDK.Factory;
using Alipay.EasySDK.Payment.Page.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fashion.Admin
{
    public partial class cart : System.Web.UI.Page
    {
        string cookiename = null;
        public int num;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                FormsAuthenticationTicket ticke1 = null;
                string user1 = Request.Cookies["user"].Value;
                ticke1 = FormsAuthentication.Decrypt(user1);
                cookiename = ticke1.Name;
                lblogin.Text = "欢迎您!" + cookiename;
            }
            catch (Exception)
            {
                if (cookiename == null)
                {
                    lblogin.Text = "还没登陆，请登录!";
                }

            }
            if (!IsPostBack)
            {

               

                Repeater1.DataSource = BLL.UserBLL.CategoryList();
                Repeater1.DataBind();


                FormsAuthenticationTicket ticke = null;
                string user = Request.Cookies["user"].Value;
                ticke = FormsAuthentication.Decrypt(user);
                cookiename = ticke.Name;
                Repeater2.DataSource = BLL.UserBLL.CartList(cookiename);
                Repeater2.DataBind();

                Repeater3.DataSource = BLL.UserBLL.CartList(cookiename);
                Repeater3.DataBind();

                 num=  BLL.UserBLL.CountNum(cookiename);
                
            }

        }

        protected void LinkButton3_Command(object sender, CommandEventArgs e)
        {   
            //临时购物车操作
            string cid = e.CommandArgument.ToString();
            BLL.UserBLL.DeleteCart(cid);

            FormsAuthenticationTicket ticke = null;
            string user = Request.Cookies["user"].Value;
            ticke = FormsAuthentication.Decrypt(user);
            cookiename = ticke.Name;

            Repeater2.DataSource = BLL.UserBLL.CartList(cookiename);
            Repeater2.DataBind();

            Repeater3.DataSource = BLL.UserBLL.CartList(cookiename);
            Repeater3.DataBind();

            num = BLL.UserBLL.CountNum(cookiename);
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            //购物车商品数量增加操作
             
            LinkButton linkButton = (LinkButton)sender;
            string cid = e.CommandArgument.ToString();
            RepeaterItem ri = (RepeaterItem)linkButton.NamingContainer;
            int num = Convert.ToInt32(((TextBox)ri.FindControl("txtAmount")).Text.Trim());
            decimal total = Convert.ToDecimal(((Label)ri.FindControl("Label2")).Text) * num;
            BLL.UserBLL.UpdateCart(num, total, cid);


            FormsAuthenticationTicket ticke = null;
            string user = Request.Cookies["user"].Value;
            ticke = FormsAuthentication.Decrypt(user);
            cookiename = ticke.Name;
            Repeater2.DataSource = BLL.UserBLL.CartList(cookiename);
            Repeater2.DataBind();

        }


        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            //购物车商品数量减少操作
            LinkButton linkButton = (LinkButton)sender;
            string cid = e.CommandArgument.ToString();
            RepeaterItem ri = (RepeaterItem)linkButton.NamingContainer;
            int num =Convert.ToInt32(((TextBox)ri.FindControl("txtAmount")).Text.Trim());
            decimal total = Convert.ToDecimal(((Label)ri.FindControl("Label2")).Text)*num;
            BLL.UserBLL.UpdateCart(num, total, cid);



            FormsAuthenticationTicket ticke = null;
            string user = Request.Cookies["user"].Value;
            ticke = FormsAuthentication.Decrypt(user);
            cookiename = ticke.Name;
            Repeater2.DataSource = BLL.UserBLL.CartList(cookiename);
            Repeater2.DataBind();
        }

        protected void LinkButton3_Command1(object sender, CommandEventArgs e)
        {   
            //大购物车删除操作

            string cid = e.CommandArgument.ToString();
            BLL.UserBLL.DeleteCart(cid);

            FormsAuthenticationTicket ticke = null;
            string user = Request.Cookies["user"].Value;
            ticke = FormsAuthentication.Decrypt(user);
            cookiename = ticke.Name;
            Repeater2.DataSource = BLL.UserBLL.CartList(cookiename);
            Repeater2.DataBind();
            Repeater3.DataSource = BLL.UserBLL.CartList(cookiename);
            Repeater3.DataBind();

            num = BLL.UserBLL.CountNum(cookiename);
        }



        protected void LinkButton4_Command(object sender, CommandEventArgs e)
        {
            //购物车购买操作
            //先查询该用户里的所有购物车数据
            DataTable dataTable = BLL.UserBLL.SelectCart(cookiename);
            //运费加小计=总价，遍历查询出来的所有数据，进行累加求和
            decimal TotalPrice = 7;
            for (int i=0;i< dataTable.Rows.Count;i++) 
            {
                TotalPrice+=Convert.ToDecimal(dataTable.Rows[i]["Total"]);
            }
            //通过登录存储的cookie的账户名来取出对应账户的账户ID，对支付宝中的参数进行对接
            DataTable dt= BLL.UserBLL.SelectUserId(cookiename);
            int uid=Convert.ToInt32(dt.Rows[0]["UserId"]);
            //提交时同时添加一条订单记录
            BLL.UserBLL.AddOrder(uid,TotalPrice);
            //清空购物车操作
            BLL.UserBLL.ClearCart(cookiename);

            //查出该订单记录的订单ID,传入支付宝使用
            string orderId= BLL.UserBLL.SelectOrderId().ToString();


            AlipayTradePagePayResponse response = Factory.Payment.Page()
                .Pay("鞋子", orderId, TotalPrice.ToString(), "http://localhost:49807/Index.aspx");
            Response.Write(response.Body);
            //AlipayTradePagePayResponse response = Factory.Payment.Page()
            //   .Pay("鞋子", orderId, TotalPrice.ToString(), "http://upupup.site/Index.aspx");
            //Response.Write(response.Body);


        }


        //protected void LinkButton3_Click(object sender, EventArgs e)
        //{
        //    LinkButton linkButton = (LinkButton)sender;
        //    linkButton.CommandArgument.ToString();

        //}

    }
}