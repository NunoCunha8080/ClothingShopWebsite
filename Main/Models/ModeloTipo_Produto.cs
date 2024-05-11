using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
using System.Web;

namespace VesteBem.Models
{
    public class ModeloTipo_Produto
    {
        //Funcao para inserir novos Tipos de Produto(Fem/Masc) 
        public string InsertTipo_Produto(Tipo_Produto tipoProduto)
        {
            try
            {
                //Chmama a BD e guarda o que lhe vai ser inserido coluna Tipo_Produto
                VesteBemDBEntities db = new VesteBemDBEntities();
                db.Tipo_Produto.Add(tipoProduto);
                db.SaveChanges();
                
                //Retorna a mensagem de confirmacao
                return tipoProduto.Nome + "foi inserido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string UpdateTipo_Produto(int id, Tipo_Produto tipoProduto)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();

                Tipo_Produto p = db.Tipo_Produto.Find(id);
                p.Nome = tipoProduto.Nome;
                db.SaveChanges();
                return tipoProduto.Nome + "atualizado com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string DeleteTipo_Produto(int id)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                Tipo_Produto tipoProduto = db.Tipo_Produto.Find(id);

                db.Tipo_Produto.Attach(tipoProduto);
                db.Tipo_Produto.Remove(tipoProduto);

                return tipoProduto.Nome + "removido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }
    }
}