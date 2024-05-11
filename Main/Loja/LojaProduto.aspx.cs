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
            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                ModeloProduto modeloProduto = new ModeloProduto();
                Produto produto = modeloProduto.GetProduto(id);

                lblPreco.Text = "€ " + produto.Preco;
                lblTitulo.Text = produto.Nome;
                lblDesc.Text = produto.Descricao;
                lblNumItem.Text = id.ToString();
                imgProduto.ImageUrl = "~/Images/produtos/" + produto.Image;

                int[] quantidade = Enumerable.Range(1, 20).ToArray();
                ddlQuantidade.DataSource = quantidade;
                ddlQuantidade.AppendDataBoundItems = true;
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