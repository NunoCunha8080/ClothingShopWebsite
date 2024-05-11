using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using VesteBem.Models;
using System.IO;
using System.Web.UI.WebControls;

namespace VesteBem.Gerenciamento.Comr
{
    public partial class GTipoRoupa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Evento do botao, vai executar a funcao pedida
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //Chama a classe do TipoRoupa
            ModeloTipoRoupa modeloTipoRoupa = new ModeloTipoRoupa();
            //Executa a funcao pedida
            TipoRoupa tr = CreateTipoRoupa();

            lblResultado.Text = modeloTipoRoupa.InsertTipoRoupa(tr);
        }
        
        //Funcao que vai chamar na classe Tipo_Produto a funcao que cria um novo tipo de roupa
        private TipoRoupa CreateTipoRoupa()
        {
            TipoRoupa p = new TipoRoupa();
            //Insere na coluna TipoID o valor selecionado na DropDownList
            p.TipoID = Convert.ToInt32(ddlSexo.SelectedValue);
            //Coloca o nome do tipo de roupa coluna nome da tabela TipoRoupa
            p.Nome = txtRoupa.Text;

            return p;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}