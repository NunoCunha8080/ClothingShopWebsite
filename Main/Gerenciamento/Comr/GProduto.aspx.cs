using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using VesteBem.Models;
using System.IO;
using System.Web.UI.WebControls;

namespace VesteBem.Gerenciamento
{
    public partial class GTipo_Produto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
                GetImages();

                if(!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    FillPage(id);
                }
            }

        }

        private void FillPage(int id)
        {
            try
            {
                var modeloProduto = new ModeloProduto();
                var produto = modeloProduto.GetProduto(id);

                txtDesc.Text = produto.Descricao;
                txtNome.Text = produto.Nome;
                txtPreco.Text = produto.Preco.ToString();

                ddlImg.SelectedValue = produto.Image;
                ddlSexo.SelectedValue = produto.TipoID.ToString();
                //ddlTipo.SelectedValue = produto.TipoRID.ToString();

            }
            catch (Exception e)
            {
                lblResultado.Text = e.ToString();
                
            }

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            ModeloProduto modeloProduto = new ModeloProduto();
            Produto produto = CreateProduto();

            lblResultado.Text = modeloProduto.InsertProduto(produto);

 
        }


        private void GetImages()
        {
            try
            {
                // Busca a localizacao das imagens
                string[] images = Directory.GetFiles(Server.MapPath("~/Images/produtos/"));

                //Pega todos os nomes do ficheiro e coloca numa arraylist
                var imageList = new List<string>();
                foreach (string image in images)
                {
                    string imageName = image.Substring(image.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                    imageList.Add(imageName);
                }

                //Torna a arrayList numa dropdownview's datasource e faz o refresh da pagina
                ddlImg.DataSource = imageList;
                ddlImg.AppendDataBoundItems = true;
                ddlImg.DataBind();
            }
            catch (Exception e)
            {

                lblResultado.Text = e.ToString();
            }
        }
        //Cria o evento do botao que envia e atualiza os dados para a BD
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            ModeloProduto modeloProduto = new ModeloProduto();
            Produto produto = UpdateProduto();


            if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                lblResultado.Text = modeloProduto.UpdateProduto(id, produto);
            }
            else
            {
                lblResultado.Text = modeloProduto.InsertProduto(produto);
            }
        }

        //Funcao que permite adicionar os dados inseridos nas ddl e textbox para as colunas da BD
        private Produto CreateProduto()
        {
            Produto produto = new Produto();

            produto.Nome = txtNome.Text;
            produto.Preco = Convert.ToDouble(txtPreco.Text);
            produto.TipoID = Convert.ToInt32(ddlSexo.SelectedValue);
            produto.TipoRID = Convert.ToInt32(ddlTipo.SelectedValue);
            produto.Descricao = txtDesc.Text;
            produto.Image = ddlImg.SelectedValue;

            return produto;

        }

        private Produto UpdateProduto()
        {
            Produto produto = new Produto();

            produto.Nome = txtNome.Text;
            produto.Preco = Convert.ToDouble(txtPreco.Text);
            produto.TipoID = Convert.ToInt32(ddlSexo.SelectedValue);
            produto.TipoRID = Convert.ToInt32(ddlTipo.SelectedValue);
            produto.Descricao = txtDesc.Text;
            produto.Image = ddlImg.SelectedValue;

            return produto;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}