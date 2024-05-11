using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using VesteBem.Models;
using VesteBem.Gerenciamento;
using System.Web.UI.WebControls;

namespace VesteBem.Gerenciamento.Admin
{
    public partial class GFornProd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            ModeloFornProduto modeloFornProduto = new ModeloFornProduto();
            FornProduto fp = CreateTipoFornProduto();

            lblResultado.Text = modeloFornProduto.InsertFornProduto(fp);
        }

        private FornProduto CreateTipoFornProduto()
        {
            FornProduto p = new FornProduto();
            p.Nome = txtNome.Text;

            return p;
        }

    }
}