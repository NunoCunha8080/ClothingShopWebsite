using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VesteBem.Models
{
    public class ModeloMorada
    {
        public string InsertMorada(Morada morada)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                db.Morada.Add(morada);
                db.SaveChanges();

                return morada.Rua + ", "+ morada.Cidade+ " inserida com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string UpdateMorada(int id, Morada morada)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();

                Morada p = db.Morada.Find(id);

                p.Cidade = morada.Cidade;
                p.Rua = morada.Rua;
                p.Numero = morada.Numero;
                p.PaisID = morada.PaisID;

                db.SaveChanges();
                return morada.Rua + ", " + morada.Cidade + " atualizada com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string DeleteMorada(int id)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                Morada morada = db.Morada.Find(id);

                db.Morada.Attach(morada);
                db.Morada.Remove(morada);

                return morada.Rua + ", " + morada.Cidade + " removida com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }
    }
}