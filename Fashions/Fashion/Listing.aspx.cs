using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fashion
{
    public partial class Listing : System.Web.UI.Page
    {
        string cookiename = null;
        public int num;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string cookiename = null;
                try
                {   
                    //
                    FormsAuthenticationTicket ticke = null;
                    string user = Request.Cookies["user"].Value;
                    ticke = FormsAuthentication.Decrypt(user);
                    cookiename = ticke.Name;
                    lblogin.Text = "欢迎您!" + cookiename;
                }
                catch (Exception)
                {
                    if (cookiename == null)
                    {
                        lblogin.Text = "还没登陆，请登录!";
                    }

                }



                //分类展示
                Repeater1.DataSource = BLL.UserBLL.CategoryList();
                Repeater1.DataBind();


                //通过登录用户来展示对应购物车数据
                Repeater3.DataSource = BLL.UserBLL.CartList(cookiename);
                Repeater3.DataBind();

                //购物车总数量
                num = BLL.UserBLL.CountNum(cookiename);



                string cid = Request.QueryString["id"];
                if (cid == null)
                {   
                    //产品展示
                    Repeater2.DataSource = BLL.UserBLL.ProductList();
                    Repeater2.DataBind();
                }
                else {
                    //展示对应购物车数据
                    Repeater2.DataSource = BLL.UserBLL.CategoryList(cid);
                    Repeater2.DataBind();
                }
               
            }
        }


        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            string cookiename = null;
            try
            {   
                //再用户添加购物车时，先判断用户有没有登录，如果没有登录则跳转至登录页面，再进行添加购物车操作
                FormsAuthenticationTicket ticke = null;
                string user = Request.Cookies["user"].Value;
                ticke = FormsAuthentication.Decrypt(user);
                cookiename = ticke.Name;
                
            }
            catch (Exception){ 

                Response.Redirect("account.aspx");

            }
            if (cookiename != null)
            {   
                //有cookie则进行添加购物车操作
                string id = e.CommandArgument.ToString();
                DataTable data = BLL.UserBLL.QueryInfo(id);
                string name = data.Rows[0]["Name"].ToString();
                string newImage = "../" + data.Rows[0]["NewImage"];
                decimal newPrice = Convert.ToDecimal(data.Rows[0]["Newprice"]);
                BLL.UserBLL.AddToCart(newImage, name, newPrice, cookiename);

                Repeater3.DataSource = BLL.UserBLL.CartList(cookiename);
                Repeater3.DataBind();

                num = BLL.UserBLL.CountNum(cookiename);
            }
        }

        protected void linksdel_Command(object sender, CommandEventArgs e)
        {  
            string cid = e.CommandArgument.ToString();
            BLL.UserBLL.DeleteCart(cid);

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