using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using VesteBem.Models;
using System.IO;
using System.Web.UI.WebControls;
using System.Text;
using System.Collections;

namespace VesteBem.Loja
{
    public partial class LojaHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }

        private void FillPage()
        {
            ModeloProduto modeloProduto = new ModeloProduto();
            List<Produto> produtos = modeloProduto.GetAllProduto();

            if (produtos != null)
            {
                foreach (Produto produto in produtos)
                {
                    Panel produtoPanel = new Panel();
                    ImageButton imageButton = new ImageButton();
                    Label lblNome = new Label();
                    Label lblPreco = new Label();

                    imageButton.ImageUrl = "~/Images/produtos/" + produto.Image;
                    imageButton.CssClass = "product-Image";
                    imageButton.PostBackUrl = "~/Loja/LojaProduto.aspx?id=" + produto.ID;

                    lblNome.Text = produto.Nome;
                    lblNome.CssClass = "product-Name";

                    lblPreco.Text = "€ " + produto.Preco;
                    lblPreco.CssClass = "product-Name";

                    produtoPanel.Controls.Add(imageButton);
                    produtoPanel.Controls.Add(new Literal { Text = "<br/>" });
                    produtoPanel.Controls.Add(lblNome);
                    produtoPanel.Controls.Add(new Literal { Text = "<br/>" });
                    produtoPanel.Controls.Add(lblPreco);

                    pnlProdutos.Controls.Add(produtoPanel);
                }
            }
            else
            {
                pnlProdutos.Controls.Add(new Literal { Text = "Nao foram encontrados produtos" });
            }
        }

        private void FillPage2()
        {
            ModeloProduto modeloProduto = new ModeloProduto();
            List<Produto> produtos = modeloProduto.GetProdutosBytipo(ddlSexo.SelectedIndex);

            if (produtos != null)
            {
                foreach (Produto produto in produtos)
                {
                    Panel produtoPanel = new Panel();
                    ImageButton imageButton = new ImageButton();
                    Label lblNome = new Label();
                    Label lblPreco = new Label();

                    imageButton.ImageUrl = "~/Images/produtos/" + produto.Image;
                    imageButton.CssClass = "product-Image";
                    imageButton.PostBackUrl = "~/Loja/LojaProduto.aspx?id=" + produto.ID;

                    lblNome.Text = produto.Nome;
                    lblNome.CssClass = "product-Name";

                    lblPreco.Text = "€ " + produto.Preco;
                    lblPreco.CssClass = "product-Name";

                    produtoPanel.Controls.Add(imageButton);
                    produtoPanel.Controls.Add(new Literal { Text = "<br/>" });
                    produtoPanel.Controls.Add(lblNome);
                    produtoPanel.Controls.Add(new Literal { Text = "<br/>" });
                    produtoPanel.Controls.Add(lblPreco);

                    pnlProdutos.Controls.Add(produtoPanel);
                }
            }
            else
            {
                pnlProdutos.Controls.Add(new Literal { Text = "Nao foram encontrados produtos" });
            }
        }

        protected void ddlSexo_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillPage2();
        }

        protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillPage2();
        }
    }
}