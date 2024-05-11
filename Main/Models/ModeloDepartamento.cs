using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VesteBem.Models
{
    public class ModeloDepartamento
    {
        public string InsertDepartamento(Departamentos departamento)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                db.Departamentos.Add(departamento);
                db.SaveChanges();

                return departamento.Nome + " foi inserido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string UpdateDepartamento(int id, Departamentos departamento)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();

                Departamentos p = db.Departamentos.Find(id);
                p.Nome = departamento.Nome;
                db.SaveChanges();
                return departamento.Nome + " atualizado com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }

        public string DeleteDepartamento(int id)
        {
            try
            {
                VesteBemDBEntities db = new VesteBemDBEntities();
                Departamentos departamento = db.Departamentos.Find(id);

                db.Departamentos.Attach(departamento);
                db.Departamentos.Remove(departamento);

                return departamento.Nome + " removido com sucesso";
            }
            catch (Exception e)
            {

                return "Error" + e;
            }

        }
    }
}