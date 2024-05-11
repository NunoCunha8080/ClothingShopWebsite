using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using VesteBem.Models;
using System.Web.UI.WebControls;

namespace VesteBem.Gerenciamento.RH
{
    public partial class GTrabalhadores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            ModeloPaises modeloPaises = new ModeloPaises();
            Paises pi = CreatePais();

            Label1.Text = modeloPaises.InsertPaises(pi);
        }
        private Paises CreatePais()
        {
            Paises p = new Paises();
            p.Nome = txtNome.Text;
            p.Nacionalidade = txtNacionalidade.Text;
            p.Capital = txtCapital.Text;
            p.Codigo = txtCod.Text;

            return p;
        }
    }
}