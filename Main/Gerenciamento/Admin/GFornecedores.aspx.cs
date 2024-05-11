using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using VesteBem.Models;
using System.Web.UI.WebControls;

namespace VesteBem.Gerenciamento.Admin
{
    public partial class GFornecedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            ModeloFornecedores modeloFornecedores = new ModeloFornecedores();
            ModeloMorada modeloMorada = new ModeloMorada();

            Morada morada = CreateMorada();
            Fornecedores fornecedores = CreateFornecedor();

            lblResultado.Text = modeloFornecedores.InsertFornecedores(fornecedores);
            modeloMorada.InsertMorada(morada);

            

        }

        private Fornecedores CreateFornecedor()
        {
            Fornecedores fornecedores = new Fornecedores();
            Morada morada = new Morada();
            fornecedores.Nome = txtNome.Text;
            fornecedores.TipoID = Convert.ToInt32(ddlTipo.SelectedValue);
            fornecedores.PaisID = Convert.ToInt32(ddlPais.SelectedValue);
            fornecedores.Email = txtEmail.Text;
            fornecedores.Tel = txtTel.Text;
            fornecedores.MoradaID = Convert.ToInt32( txtId.Text );

            return fornecedores;
        }
        private Morada CreateMorada()
        {
            Morada morada = new Morada();

            morada.PaisID = Convert.ToInt32(ddlPais.SelectedValue);
            morada.Cidade = txtCidade.Text;
            morada.Rua = txtRua.Text;
            morada.Numero = txtNr.Text;
            morada.ID = Convert.ToInt32(txtId.Text);


            return morada;
        }
    }
}