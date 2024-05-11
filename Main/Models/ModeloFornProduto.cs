using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VesteBem.Models
{
    public class ModeloFornProduto
    {
        public string InsertFornProduto(FornProduto fornProduto)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                db.FornProduto.Add(fornProduto);
                db.SaveChanges();

                return fornProduto.Nome + " foi inserido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string UpdateFornProduto(int id, FornProduto fornProduto)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();

                FornProduto p = db.FornProduto.Find(id);
                p.Nome = fornProduto.Nome;
                db.SaveChanges();
                return fornProduto.Nome + " atualizado com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string DeleteFornProduto(int id)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                FornProduto fornProduto = db.FornProduto.Find(id);

                db.FornProduto.Attach(fornProduto);
                db.FornProduto.Remove(fornProduto);

                return fornProduto.Nome + " removido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }
    }
}