using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VesteBem.Models
{
    public class ModeloPaises
    {
        public string InsertPaises(Paises paises)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                db.Paises.Add(paises);
                db.SaveChanges();

                return paises.Nome + " inserido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string UpdatePaises(int id, Paises paises)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();

                Paises p = db.Paises.Find(id);

                p.Codigo = paises.Codigo;
                p.Nome = paises.Nome;
                p.Capital = paises.Capital;
                p.Nacionalidade = paises.Nacionalidade;

                db.SaveChanges();
                return paises.Nome + " atualizado com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string DeletePaises(int id)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                Paises paises = db.Paises.Find(id);

                db.Paises.Attach(paises);
                db.Paises.Remove(paises);

                return paises.Nome + " removido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }
    }
}