using System;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Owin;

[assembly: OwinStartup(typeof(VesteBem.App_Start.Startup1))]

namespace VesteBem.App_Start
{
    public class Startup1
    {
        public void Configuration(IAppBuilder app)
        {

            app.UseCookieAuthentication(new Microsoft.Owin.Security.Cookies.CookieAuthenticationOptions {
            
            AuthenticationType= DefaultAuthenticationTypes.ApplicationCookie,
            LoginPath=new PathString("/Conta/LogIn.aspx")
            });
               
        
        }
    }
}
