using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace VesteBem
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = Context.User.Identity;

            if (user.IsAuthenticated)
            {
                litStatus.InnerText = Context.User.Identity.Name;
                
                linkLogIn.Visible = false;
                linkRegister.Visible = false;

                linkLogOut.Visible = true;
                litStatus.Visible = true;
            }
            else
            {
                linkLogIn.Visible = true;
                linkRegister.Visible = true;

                linkLogOut.Visible = false;
                litStatus.Visible = false;
            }

            //if (Context.User.IsInRole("admin"))
            //{
            //    litStatus.InnerText = Context.User.Identity.Name;
            //    linkBO.Visible = true;
            //}
            //else
            //{
            //    linkBO.Visible = false;
            //}
        }

        protected void linkLogOut_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();

            Response.Redirect("~/Home.aspx");
        }
    }
}