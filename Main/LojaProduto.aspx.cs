using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using VesteBem.Models;
using System.IO;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace VesteBem.Loja
{
    public partial class LojaProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }

        private void FillPage()
        {
            //Condicao que verifica o id so produto
            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                //Retem o ID e o converte pra inteiro
                int id = Convert.ToInt32(Request.QueryString["id"]);
                //Vai buscar a classe Produto e o codigo que permite verificar o e associa o id ao produto
                ModeloProduto modeloProduto = new ModeloProduto();
                Produto produto = modeloProduto.GetProduto(id);

                //Pega os dados do produto e adiciona-os numa label e um Image URL
                lblPreco.Text = "€ " + produto.Preco;
                lblTitulo.Text = produto.Nome;
                lblDesc.Text = produto.Descricao;
                lblNumItem.Text = id.ToString();
                imgProduto.ImageUrl = "~/Images/produtos/" + produto.Image;

                //Cria um Enumerable Range para adicionar os valores para a quantidade do produto que o cliente quer
                int[] quantidade = Enumerable.Range(1, 20).ToArray();
                ddlQuantidade.DataSource = quantidade;
                ddlQuantidade.AppendDataBoundItems = true;
                //Conecta os valores a coluna Quantidade da tabela Carrinho
                ddlQuantidade.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                string clienteID = Context.User.Identity.GetUserId();

                //Somente user podem comprar
                if (clienteID!=null)
                {

                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    int quantidade = Convert.ToInt32(ddlQuantidade.SelectedValue);

                    Carrinho carrinho = new Carrinho
                    {
                        Quantidade = quantidade,
                        ClienteID = clienteID,
                        DataCompra = DateTime.Now,
                        NoCart = true,
                        ProdutoID = id
                    };
                    ModeloCarrinho modelo = new ModeloCarrinho();
                    lblResultado.Text = modelo.InsertCarrinho(carrinho);
                
                }
                else
                {
                    lblResultado.Text = "Por favor faca LogIn para poder comprar os nossos produtos";
                }
            }
        }
    }
}