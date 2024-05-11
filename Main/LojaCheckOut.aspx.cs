using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using VesteBem.Models;
using System.IO;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.Web.Infrastructure;
using System.Web.ApplicationServices;
using Microsoft.AspNet.Identity;


namespace VesteBem.Loja
{
    public partial class LojaCheckOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = User.Identity.GetUserId();

            GetPurchasesInCart(userId);
        }

        //Funcao do botao para remover o produto 
        private void DeleteItem(object sender, EventArgs e)
        {
            LinkButton selectedLink = (LinkButton)sender;
            string link = selectedLink.ID.Replace("del", "");
            int carrinhoId = Convert.ToInt32(link);

            ModeloCarrinho modeloCarrinho = new ModeloCarrinho();
            modeloCarrinho.DeleteCarrinho(carrinhoId);

            Response.Redirect("~/LojaCheckOut.aspx");
        }

    private void GetPurchasesInCart(string userId)
        {
            var modeloCarrinho = new ModeloCarrinho();
            double subTotal = 0;
            //Coloca os produtos numa lista especifica do carrinho
            List<Carrinho> purchaseList = modeloCarrinho.GetOrdersNoCarrinho(userId);
            CreateShopTable(purchaseList, out subTotal);

            //Pega nos precos veeinculados com o produto e faz o calculo para a compra
            double vat = subTotal * 0.21;
            double totalAmount = subTotal + 15 /*+ vat*/;

            litTotal.Text = subTotal + " €";
            //litVat.Text = "€ " + vat;
            litQuantTotal.Text = totalAmount + " €";

            //Adiciona o butao paypal no checkout
            string paypal = GeneratePaypalButton(subTotal);
            litPaypal.Text = paypal;

        }

        //Cria a tablea onde serao colocados os items
        private void CreateShopTable(List<Carrinho> purchaseList, out double subTotal)
        {

            subTotal = new Double();
            ModeloProduto modeloProduto = new ModeloProduto();
            foreach (Carrinho carrinho in purchaseList)
            {
                Produto produto = modeloProduto.GetProduto(carrinho.ProdutoID);

                //Cria o ImageButton
                ImageButton btnImage = new ImageButton
                {
                    ImageUrl = string.Format("~/Images/produtos/{0}", produto.Image),
                    PostBackUrl = string.Format("~/LojaProduto.aspx?id={0}", produto.ID)
                };



                //Cria um ddl para quantidade
                //Gera uma lista com numeros de 1 a 20
                int[] quantidade = Enumerable.Range(1, 20).ToArray();
                DropDownList ddlQuantidade = new DropDownList
                {
                    DataSource = quantidade,
                    AppendDataBoundItems = true,
                    AutoPostBack = true,
                    ID = carrinho.ID.ToString()
                };

                ddlQuantidade.DataBind();
                ddlQuantidade.SelectedValue = carrinho.Quantidade.ToString();
                ddlQuantidade.SelectedIndexChanged += ddlQuantidade_SelectedIndexChanged;

                //Cria o link para remover o produto
                LinkButton lnkDelete = new LinkButton
                {
                    PostBackUrl = string.Format("~/LojaCheckOut.aspx?produtoId={0}", carrinho.ID),
                    Text = "Remover Item",
                    ID = "del" + carrinho.ID,
                    Visible = true
                    
                };

                //cria um evento OnClick para remover 
                lnkDelete.Click += DeleteItem;

                //Cria a tabela que vai conter os produtos
                //cria uma tabela HTML com 2 linhas
                Table table = new Table { CssClass = "CartTable" };
                TableRow a = new TableRow();
                TableRow b = new TableRow();

                //Cria 6 celulas apartir da linha "a"
                TableCell a1 = new TableCell { RowSpan = 2, Width = 50 };
                TableCell a2 = new TableCell
                {
                    Text = string.Format("<h4>{0}</h4><br />{1}<br/>Em Stock",
                produto.Nome, "Item No: " + produto.ID),
                    HorizontalAlign = HorizontalAlign.Left,
                    Width = 350
                };
                TableCell a3 = new TableCell { Text = "Preco da Unidade<hr/>" };
                TableCell a4 = new TableCell { Text = "Quantidade<hr/>" };
                TableCell a5 = new TableCell { Text = "Total do Item<hr/>" };
                TableCell a6 = new TableCell ();

                //Cria 5 celulas apartir da linha "b"
                TableCell b1 = new TableCell ();
                TableCell b2 = new TableCell { Text = "€ " + produto.Preco };
                TableCell b3 = new TableCell ();
                TableCell b4 = new TableCell { Text = "€ " + Math.Round(Convert.ToDecimal(carrinho.Quantidade * (produto.Preco)), 2) };
                TableCell b5 = new TableCell ();
                

                //Atribui os controlos criados as colunas
                a1.Controls.Add(btnImage);
                a6.Controls.Add(lnkDelete);
                b3.Controls.Add(ddlQuantidade);

                //adiciona celulas as linhas
                a.Cells.Add(a1);
                a.Cells.Add(a2);
                a.Cells.Add(a3);
                a.Cells.Add(a4);
                a.Cells.Add(a5);
                a.Cells.Add(a6);

                b.Cells.Add(b1);
                b.Cells.Add(b2);
                b.Cells.Add(b3);
                b.Cells.Add(b4);
                b.Cells.Add(b5);

                //adiciona linhas a tabela
                table.Rows.Add(a);
                table.Rows.Add(b);

                //adiciona a tabela ao painel(pnlCarrinho)
                pnlCarrinho.Controls.Add(table);

                //adiciona o total dos items no carrinho ao subtotal
                subTotal += Convert.ToDouble(carrinho.Quantidade * (produto.Preco));
            }

            //adiciona o carrinho do user ativo o valor especifico da sua sessao 
            Session[User.Identity.GetUserId()] = purchaseList;
        }

        

        private void ddlQuantidade_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList selectedList = (DropDownList)sender;
            int quantidade = Convert.ToInt32(selectedList.SelectedValue);
            int carrinhoId = Convert.ToInt32(selectedList.ID);

            ModeloCarrinho modeloCarrinho = new ModeloCarrinho();
            modeloCarrinho.UpdateQuantidade(carrinhoId, quantidade);

            Response.Redirect("~/Loja/LojaCheckOut.aspx");
        }


        private string GeneratePaypalButton(double subTotal)
        {
            //Set Paypal parameters
            string paypal = string.Format(
                @"<script async='async' src='https://www.paypalobjects.com/js/external/paypal-button.min.js?merchant=garageseller@gmail.com'
                data-button='buynow'
                data-name='Garage Purchases'
                data-quantity=1
                data-amount='{0}'
                data-tax='{1}'
                data-shipping='15'
                data-callback='http://localhost:50992/Pages/Success.aspx'
                data-sendback='http://localhost:50992/Pages/Success.aspx'
                data-env='sandbox'>
             </script>", subTotal, (subTotal * 0.21));

            return paypal;
        }
    }
}