using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using VesteBem.Models;
using System.Web.UI.WebControls;

namespace VesteBem.Gerenciamento.Direcao
{
    public partial class GDepartamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            ModeloDepartamento modeloDepartamento = new ModeloDepartamento();
            Departamentos dp = CreateDepartamentos();

            lblResultado.Text = modeloDepartamento.InsertDepartamento(dp);
        }

        private Departamentos CreateDepartamentos()
        {
            Departamentos p = new Departamentos();
            p.Nome = TextBox1.Text;
            return p;
        }
    }
}