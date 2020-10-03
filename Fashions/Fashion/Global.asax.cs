using Alipay.EasySDK.Factory;
using Alipay.EasySDK.Kernel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Fashion
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Factory.SetOptions(GetConfig());
        }
        static private Config GetConfig()
        {
            return new Config()
            {
                Protocol = "https",
                GatewayHost = "openapi.alipaydev.com",
                SignType = "RSA2",

                AppId = "2021000118641969",

                // 为避免私钥随源码泄露，推荐从文件中读取私钥字符串而不是写入源码中
                MerchantPrivateKey = "MIIEowIBAAKCAQEAg9Wbladw3Vj2qZT7Uu8Hj7uL7bDMbnPmp9991esCVZmwp4/piYfB2K3Inthhz2JPoHyVe4M7CtS7t8FllrydlEWiHgY9Sw4UfYRlPBX9qJAGUisNZF3+6TzxhWFtgC+OVx7J0gQsZzAPPmQMsuNH13vztBsOVpHWTCrTNMfUYPBYC5cOmklNvetoBxiggLffLF6ovw5bEQa5tYofxJUuFxQ8LvNgqn+dCEYbSfpAeT1QSpl3g0ZvyR2WeJtaT/dXkrg9euwFIjw+VC3pU5NpaY2yecFep00j2iIkbq15JkEYKwy88vFz5FQV9jY8TzC9DrRM3fWzIaoJKcR0XFHxNwIDAQABAoIBAA0VXeN0Qpc1BQW/a1HHtxBkpHZqXV940SNH4s0gDZNBNW7rsVmcx3ghhw98mfhi4VQkCRHA7FMe2aJa5yIWhez5HCWuqNaSByaNxR45cHsSEA6Hh0S2r12mVrHOAXf/QDkVLSJSl7WF531hoIEAXVjdTEpLhRjCUGoutdc/HayhCAAQpB16N/5WfjR+qYnBmZHfo4WEgmsMWfNi+IQF0cjqWWW4Q2GALMTOvwnTZ6ZfI4PL7efC4w70DwFlvW8oqP6ufTXmDe0kj7YCvua/gxeEtOoq7eo9f3ikdCYULls7cY9Mm8gPFdy38GekP0zxdEmMX1vOnNyAFAS7LKxP04ECgYEA693CS/+icRKKO6ZC4jLyVEkl4lAIDRKix8CNWZdgpg2U+7yikqSGgORkKgf9GtTPu6TvlL8uewNP2CdfThK2XVPK6fn/qVPN9vjydt3uGEgjs19kG4/3d0F/MssrjeEpoet8cfu8DuiPgooq8tlHUG74lGbt/s6eLs2TUmn+92kCgYEAjxaBJs+eJRIXT9erT8NqGHLCy+YMmte1TZkpphkeQtAGj3rAi4N4tKmRz4ryEWt7XHt9vDR5xhj3tAa8QFEqnWGVoq5z7DY+ilNDcNOLG/QULH2PAqbJe9zPyJqtg2Gs18ENfrzXpCAQ5Axzjg7qUg47NmlBTTwuJ6HQF+P6L58CgYEA5PahvWrLwt4PiHYOaUyxhvZ3Kykrl50mnagizvyvGqMGpBTq8FV8KDUNsuuMXPaHLY2f8RJhyZJeeONHlh9+HjzQNq+z6ijrQLtLi+5GShYFagPIxyTLQl43XxRxFEqmQoO5i2CmnwZNAZiktpgLrV38OvtsPzVNwvtW7uLsWjkCgYBX46va6gYqoQ0epst8R/zgHYWXdqvhZIPhsSWK97zFrz+IXA7u4wd+ePWuNJtxpcJ1UQkvVFBEJMvpkYWKQBDb8LfX4C4mNj99+ZzgLaAxwF+v4EO6jjYOVdhvUMspexKOx+8BHP+buXKGkTtdU74MPt+SEV7iEQgMofDO6+Kd4wKBgAbcmUt/etPHP7NM0IrnIVHD0dAh9RaMWGXAfiR6Hc+AEcdTMuGjj11aXAm/fOZOlYNYJeg5mmbenOGdzZoh6sJQYTH/88Uu6zQ2uCZkt3E7+qSpDdhFrAi+REf19NbTlzUdY9CwXmBd+Chu0w9pOE2WAyznTSzGPVW3qpMq02Ex",

                //MerchantCertPath = "<-- 请填写您的应用公钥证书文件路径，例如：/foo/appCertPublicKey_2019051064521003.crt -->",
                //AlipayCertPath = "<-- 请填写您的支付宝公钥证书文件路径，例如：/foo/alipayCertPublicKey_RSA2.crt -->",
                //AlipayRootCertPath = "<-- 请填写您的支付宝根证书文件路径，例如：/foo/alipayRootCert.crt -->",

                // 如果采用非证书模式，则无需赋值上面的三个证书路径，改为赋值如下的支付宝公钥字符串即可
                AlipayPublicKey ="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhWBQOnWO / JIVNsxJVEewmtSMQUhL4o7F1hUx7RyKKAqqEyVIHZ8pdAMCqe6fBDeg5g4ekIyvruSvtj8uFNR2MaOtHKrDeWlXfIL865cFyPdq4j9bdvolXQKtYFaXDm5xmX4uSntmreeUalNzWSQ2gQfb5i7tmNRhNaor5mrTmhXxlzQJdGkMVwVMotAobCVKFrHhH4uTSVR68d + fIju18qVB9BUmQzGqi / QlOyYOkjTv2WXTOfzYVc7QofBmJzeRkxxkCB8diQ6Z1p3OjNhpJP6O8babcujqvBPxVX6n0TPLC / tBci5SS1tZIJfBUZ + dIYTv3BGPHO2cIt9SBUHc + QIDAQAB",
             

                //可设置异步通知接收服务地址（可选）
                //NotifyUrl = "<-- 请填写您的支付类接口异步通知接收服务地址，例如：https://www.test.com/callback -->",

                //可设置AES密钥，调用AES加解密相关接口时需要（可选）
                //EncryptKey = "<-- 请填写您的AES密钥，例如：aa4BtZ4tspm2wnXLb1ThQA== -->"
            };
        }
        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}