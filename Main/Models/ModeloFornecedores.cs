using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VesteBem.Models
{
    public class ModeloFornecedores
    {
        public string InsertFornecedores(Fornecedores fornecedor)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                db.Fornecedores.Add(fornecedor);
                db.SaveChanges();

                return fornecedor.Nome + " foi inserido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string UpdateFornecedores(int id, Fornecedores fornecedor)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();

                Fornecedores p = db.Fornecedores.Find(id);

                p.Nome = fornecedor.Nome;
                p.TipoID = fornecedor.TipoID;
                p.Email = fornecedor.Email;
                p.Tel = fornecedor.Tel;
                p.MoradaID = fornecedor.MoradaID;
                p.PaisID = fornecedor.PaisID;

                db.SaveChanges();
                return fornecedor.Nome + " foi atualizado com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string DeleteFornecedores(int id)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                Fornecedores fornecedor = db.Fornecedores.Find(id);

                db.Fornecedores.Attach(fornecedor);
                db.Fornecedores.Remove(fornecedor);

                return fornecedor.Nome + " removido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }
    }
}