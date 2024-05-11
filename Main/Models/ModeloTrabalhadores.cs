using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
using System.Web;

namespace VesteBem.Models
{
    public class ModeloTrabalhadores
    {

        public string InsertTrabalhadores(Trabalhadores trabalhador)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                db.Trabalhadores.Add(trabalhador);
                db.SaveChanges();

                return trabalhador.PrimeiroNome+trabalhador.SegundoNome + " foi inserido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string UpdateTrabalhadores(int id, Trabalhadores trabalhador)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();

                Trabalhadores p = db.Trabalhadores.Find(id);

                p.PrimeiroNome = trabalhador.PrimeiroNome;
                p.SegundoNome = trabalhador.SegundoNome;
                p.DepartamentoID = trabalhador.DepartamentoID;
                p.Email = trabalhador.Email;
                p.Tel = trabalhador.Tel;
                p.MoradaID = trabalhador.MoradaID;
                p.PaisID = trabalhador.PaisID;

                db.SaveChanges();
                return trabalhador.PrimeiroNome + trabalhador.SegundoNome + " foi atualizado com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string DeleteTrabalhadores(int id)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                Trabalhadores trabalhador = db.Trabalhadores.Find(id);

                db.Trabalhadores.Attach(trabalhador);
                db.Trabalhadores.Remove(trabalhador);

                return trabalhador.PrimeiroNome + trabalhador.SegundoNome + " foi removido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

    }
}