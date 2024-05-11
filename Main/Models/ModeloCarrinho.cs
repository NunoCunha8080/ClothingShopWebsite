using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
using System.Web;

namespace VesteBem.Models
{
    public class ModeloCarrinho
    {
        public string InsertCarrinho(Carrinho carrinho)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                db.Carrinho.Add(carrinho);
                db.SaveChanges();

                return carrinho.DataCompra + "foi inserido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string UpdateCarrinho(int id, Carrinho carrinho)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();

                Carrinho p = db.Carrinho.Find(id);

                p.DataCompra = carrinho.DataCompra;
                p.ClienteID = carrinho.ClienteID;
                p.Quantidade = carrinho.Quantidade;
                p.NoCart = carrinho.NoCart;
                p.ProdutoID = carrinho.ProdutoID;
                //p.Tamanho = carrinho.Tamanho;

                db.SaveChanges();
                return carrinho.DataCompra + "atualizado com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string DeleteCarrinho(int id)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                Carrinho carrinho = db.Carrinho.Find(id);

                db.Carrinho.Attach(carrinho);
                db.Carrinho.Remove(carrinho);
                db.SaveChanges();

                return carrinho.DataCompra + "removido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public List<Carrinho> GetOrdersNoCarrinho(string userId)
        {
            VesteBemDBEntities db = new VesteBemDBEntities();
           
            List<Carrinho> pedidos = (from x in db.Carrinho 
                                      where x.ClienteID == userId
                                      && x.NoCart
                                            orderby x.DataCompra
                                            select x).ToList();
            return pedidos;
        }

        public int GetQuantidadedeOrders(string userId)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                int quantidade = (from x in db.Carrinho
                                  where x.ClienteID == userId
                                  && x.NoCart
                                  select x.Quantidade).Sum();

                return quantidade;

            }
            catch 
            {

                return 0;
            }
        }
        //Atualiza a quantidade
        public void UpdateQuantidade (int id, int quantidade)
        {
            VesteBemDBEntities db = new VesteBemDBEntities();
            Carrinho carrinho = db.Carrinho.Find(id);

            carrinho.Quantidade = quantidade;

            db.SaveChanges();
        }

        public void MarkOrdersAsPaid(List<Carrinho> carrinhos)
        {
            VesteBemDBEntities db = new VesteBemDBEntities();

            if (carrinhos != null)
            {
                foreach (Carrinho carrinho in carrinhos)
                {
                    Carrinho velhoCarrinho = db.Carrinho.Find(carrinho.ID);
                    velhoCarrinho.DataCompra = DateTime.Now;
                    velhoCarrinho.NoCart = false;
                }

                db.SaveChanges();
            }
        }


    }
}