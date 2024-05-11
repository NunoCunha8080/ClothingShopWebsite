using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
using System.Web;

namespace VesteBem.Models
{
    public class ModeloProduto
    {
        //Funcao para inserir novos produtos
        public string InsertProduto(Produto produto)
        {
            try
            {
                //Chmama a BD e guarda oque lhe vai ser inserido coluna produtos
                VesteBemDBEntities db = new VesteBemDBEntities();
                db.Produto.Add(produto);
                db.SaveChanges();

                //Retorna a mensagem de confirmacao
                return produto.Nome + " foi inserido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }
        
        //Instrucao para atualizar novos produtos
        public string UpdateProduto(int id, Produto produto)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                
                //Encontra o produto selecionado atraves do seu ID
                Produto p = db.Produto.Find(id);

                //Atraves do Id disponibiliza a informacao
                p.Nome = produto.Nome;
                p.Preco = produto.Preco;
                p.TipoID = produto.TipoID;
                p.Descricao = produto.Descricao;
                p.Image = produto.Image;

                db.SaveChanges();
                return produto.Nome + "atualizado com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }
        
        //Instrucao para remover novos produtos
        public string DeleteProduto(int id)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                Produto produto = db.Produto.Find(id);

                db.Produto.Attach(produto);
                db.Produto.Remove(produto);

                return produto.Nome + "removido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public Produto GetProduto(int id)
        {
            try
            {
                using (VesteBemDBEntities db = new VesteBemDBEntities())
                {
                    Produto produto = db.Produto.Find(id);

                    return produto;
                }
            }
            catch (Exception)
            {

                return null;
            }
        }

        //Cria uma lista com todos os produtos inseridos na BD
        public List<Produto> GetAllProduto()
        {

            try
            {
                using (VesteBemDBEntities db = new VesteBemDBEntities())
                {
                    List<Produto> produtos = (from x in db.Produto select x).ToList();

                   return produtos;
               }
           }
           catch (Exception)
            {

               return null;
            }
        }
        

        public List<Produto> GetProdutosBytipo(int tipoId)
        {
            try
            {
                using (VesteBemDBEntities db = new VesteBemDBEntities())
                {
                    List<Produto> produtos = (from x in db.Produto
                                              where x.TipoID == tipoId
                                              select x).ToList();

                    return produtos;
                }
            }
            catch (Exception)
            {

                return null;
            }
        }

        public List<Produto> GetProdutosBytipo2(int tipoId)
        {
            try
            {
                using (VesteBemDBEntities db = new VesteBemDBEntities())
                {
                    List<Produto> produtos = (from x in db.Produto
                                              where x.TipoRID == tipoId
                                              select x).ToList();

                    return produtos;
                }
            }
            catch (Exception)
            {

                return null;
            }
        }
    }
}