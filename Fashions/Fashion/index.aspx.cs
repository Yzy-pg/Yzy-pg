using Alipay.EasySDK.Factory;
using Alipay.EasySDK.Kernel.Util;
using Alipay.EasySDK.Payment.Common.Models;
using Org.BouncyCastle.Asn1.Ocsp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fashion
{
    public partial class index : System.Web.UI.Page
    {
        string cookiename = null;
        public int num;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                string cookiename = null;
                try
                {
                    //通过存储的账户名cookie，来取出对应的账户名
                    //存进的cookie经过加密是一段字符串，需要进行解密,再取
                    FormsAuthenticationTicket ticke = null;
                    string user = Request.Cookies["user"].Value;
                    ticke = FormsAuthentication.Decrypt(user);
                    cookiename = ticke.Name;
                    lblogin.Text = "欢迎您!"+ cookiename;
                }
                catch(Exception) { 
                if (cookiename == null)
                {
                    lblogin.Text = "还没登陆，请登录!";
                }
              
                }

                //分类展示
                Repeater1.DataSource = BLL.UserBLL.CategoryList();
                Repeater1.DataBind();

                //产品列表展示
                Repeater2.DataSource = BLL.UserBLL.ProductList();
                Repeater2.DataBind();

                //右上角临时购物车展示
                Repeater3.DataSource = BLL.UserBLL.CartList(cookiename);
                Repeater3.DataBind();


                //统计购物车有多少条购物记录
                num = BLL.UserBLL.CountNum(cookiename);
                
                //支付完成通过传过来的out_trade_no参数来判断是否支付成功
                if (Request.QueryString["out_trade_no"] !=null) 
                {   
                    //通过调用支付宝的API来进行校验查询返回结果
                    AlipayTradeQueryResponse response = Factory.Payment.Common().Query(Request.QueryString["out_trade_no"]);
                    if (ResponseChecker.Success(response)) 
                    {
                        if (response.TradeStatus.Equals("TRADE_SUCCESS")) {
                            //支付成功清空购物车
                            BLL.UserBLL.UpdateState(response.OutTradeNo);


                        }
                    }
                }

            }

        }

        protected void linksdel_Command(object sender, CommandEventArgs e)
        {   

            //删除购物车中某一条购物记录
            string cid = e.CommandArgument.ToString();
            BLL.UserBLL.DeleteCart(cid);

            //解密，根据存入的cookie账户名来进行展示对应的购物车数据，如果修改了购物车中的数据，相应数据会展示修改后的数据
            FormsAuthenticationTicket ticke = null;
            string user = Request.Cookies["user"].Value;
            ticke = FormsAuthentication.Decrypt(user);
            cookiename = ticke.Name;

            Repeater3.DataSource = BLL.UserBLL.CartList(cookiename);
            Repeater3.DataBind();

            num = BLL.UserBLL.CountNum(cookiename);
        }
    }
}