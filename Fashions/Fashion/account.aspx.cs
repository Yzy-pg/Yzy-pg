using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
namespace Fashion
{
    public partial class account : System.Web.UI.Page
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
                    //通过存入的cookie来判断是否登录过
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

                //登录完成，右上角显示临时购物车
                Repeater3.DataSource = BLL.UserBLL.CartList(cookiename);
                Repeater3.DataBind();

                //购物车数量
                num = BLL.UserBLL.CountNum(cookiename);

                //分类展示
                Repeater1.DataSource = BLL.UserBLL.CategoryList();
                Repeater1.DataBind();

              
            }
        }
   
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //登录操作

            string name = txtName.Text.Trim();
            string pwd = txtPwd.Text.Trim();
            

           
            DataTable data = BLL.UserBLL.LoginOrAddQuery(name,pwd);
            if (data.Rows.Count > 0)
            {   

                //通过存入cookie来进行身份校验,勾选单选框为永久性cookie，下次使用该浏览器免密登录
                FormsAuthentication.RedirectFromLoginPage(name, CheckBox1.Checked);
                
            }
            else {
                if (name == "")
                {
                    Label1.Text = "请输入账号";
                }
                else if (pwd == "")
                {
                    Label1.Text = "请输入密码";
                }
                else {
                    Label1.Text = "账号或密码错误";
                }
             
            
            }
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {   

            //注册操作

            string name = txtAddName.Text.Trim();
            string pwd = txtAddPwd.Text.Trim();
         
            DataTable data = BLL.UserBLL.LoginOrAddQuery(name, pwd);
            if (data.Rows.Count > 0)
            {
                msg.Text = "该账号已被注册过!";
            }
            else
            {
                int result = BLL.UserBLL.AddUser(name, pwd);
                if (result > 0)
                {

                    if (name == "")
                    {
                        msg.Text = "账号不能为空";
                    }
                    else if (pwd == "")
                    {
                        msg.Text = "密码不能为空";
                    }
                    else {
                        msg.Text = "注册成功";
                    }
                  
                }
            }
        }

        protected void linksdel_Command(object sender, CommandEventArgs e)
        {
                //登录完成展示对应用户的右上角临时数据，进行修改操作    

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