using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VesteBem.Models
{
    public class ModeloTipoRoupa
    {
        //Funcao para inserir novos Tipos de Roupa
        public string InsertTipoRoupa(TipoRoupa tipoRoupa)
        {
            try
            {
                //Chmama a BD e guarda o que lhe vai ser inserido coluna TipoRoupa
                VesteBemDBEntities db = new VesteBemDBEntities();
                db.TipoRoupa.Add(tipoRoupa);
                db.SaveChanges();
                //Retorna a mensagem de confirmacao
                return tipoRoupa.Nome + " foi inserido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string UpdateTipoRoupa(int id, TipoRoupa tipoRoupa)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();

                TipoRoupa p = db.TipoRoupa.Find(id);
                p.Nome = tipoRoupa.Nome;
                db.SaveChanges();
                return tipoRoupa.Nome + "atualizado com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string DeleteTipoRoupa(int id)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                TipoRoupa tipoRoupa = db.TipoRoupa.Find(id);

                db.TipoRoupa.Attach(tipoRoupa);
                db.TipoRoupa.Remove(tipoRoupa);

                return tipoRoupa.Nome + "removido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

    }
}