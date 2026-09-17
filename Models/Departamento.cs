using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ASPWebformOnpe.Models
{
    public class Departamento
    {
        public int idDepartamento { get; set; }
        public string Detalle { get; set; }

        public Departamento(DataRow dr)
        {
            idDepartamento =
                int.Parse(dr["idDepartamento"].ToString());

            Detalle =
                dr["Detalle"].ToString().Trim();
        }
    }
}