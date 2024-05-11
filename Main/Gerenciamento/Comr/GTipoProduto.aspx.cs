using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VesteBem.Gerenciamento;
using System.Web.UI;
using VesteBem.Models;
using System.Web.UI.WebControls;

namespace VesteBem.Gerenciamento
{
    public partial class GTipoProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Evento do botao, vai executar a funcao pedida
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //Chama a classe do Tipo_Produto
            ModeloTipo_Produto model = new ModeloTipo_Produto();
            //Executa a funcao pedida
            Tipo_Produto pt = CreateTipoProduto();

            //Mostra contida na classe atraves de uma label vazia 
            lblResultado.Text = model.InsertTipo_Produto(pt);
        }

        //Funcao que vai chamar na classe Tipo_Produto a funcao que cria um novo produto 
        private Tipo_Produto CreateTipoProduto()
        {
            Tipo_Produto p = new Tipo_Produto();
            //Insere na coluna Nome do Tipo_Produto o nome inserido na textbox
            p.Nome = txtNome.Text;

            //retorna o valor inserido para que ele possa ser utilizado
            return p;
        }



        protected void btnEnviarTR_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}