using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using VesteBem.Models;
using System.Web.UI.WebControls;

namespace VesteBem.Gerenciamento.RH
{
    public partial class GTrabalhadores1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            ModeloTrabalhadores modeloTrabalhadores = new ModeloTrabalhadores();
            ModeloMorada modeloMorada = new ModeloMorada();

            Morada morada = CreateMorada();
            Trabalhadores trabalhadores = CreateTrabalhador();

            lblResultado.Text = modeloTrabalhadores.InsertTrabalhadores(trabalhadores);
            modeloMorada.InsertMorada(morada);
        }

        private Trabalhadores CreateTrabalhador()
        {
            Trabalhadores p = new Trabalhadores();
            p.PrimeiroNome = txtPrimNome.Text;
            p.SegundoNome = txtSegNome.Text;
            p.DepartamentoID = Convert.ToInt32(ddlDep.SelectedValue);
            p.PaisID = Convert.ToInt32(ddlPais.SelectedValue);
            p.Email = txtEmail.Text;
            p.Tel = txtTel.Text;
            p.MoradaID = Convert.ToInt32(txtId.Text);
            p.DataNascimento = Convert.ToDateTime(Calendar1.SelectedDate.ToString());

            return p;

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