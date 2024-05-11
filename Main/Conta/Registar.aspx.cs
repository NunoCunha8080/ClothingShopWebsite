using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VesteBem.Models;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace VesteBem.Conta
{
    public partial class Registar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Default UserStore constructor usa a conexao default string named: DefaultConnection
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

            // Configura a conexao defaut para a conexao da base de dados da VesteBem

            userStore.Context.Database.Connection.ConnectionString =
                System.Configuration.ConfigurationManager.
                ConnectionStrings["VesteBemDBConnectionString"].ConnectionString;
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            IdentityUser user = new IdentityUser();
            // Cria um novo user na base de dados

            user.UserName = txtUserName.Text;
            if (txtPassword.Text==txtConfirPassword.Text)
            {
                try
                {
                    IdentityResult result = manager.Create(user, txtPassword.Text);
                    if (result.Succeeded)
                    {

                        UserInfo info = new UserInfo()
                        {
                            Morada = txtMorada.Text,
                            PrimeiroNome = txtPrimNome.Text,
                            UltimoNome = txtSegNome.Text,
                            CodPostal = Convert.ToDouble(txtCodPostal.Text),
                            GUID=user.Id
                        };

                        ModeloUserInfo modeloUser = new ModeloUserInfo();
                        modeloUser.InsertUserInfo(info);



                        //Guarda na BD
                        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

                        //Faz log in do novo user por cookies
                        var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                        //faz log in e redireciona para a home page
                        authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties(), userIdentity);
                        Response.Redirect("~/Home.aspx");

                    }
                    else
                    {
                        litStatus.Text = result.Errors.FirstOrDefault();
                    }
                }
                catch (Exception ex)
                {

                    litStatus.Text = ex.ToString();
                }
            }
            else
            {
                litStatus.Text = "As passwords devem ser iguais";
            }
        }
    }
}