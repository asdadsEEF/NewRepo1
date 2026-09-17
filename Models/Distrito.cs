using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ASPWebformOnpe.Models
{
    public class Distrito
    {
        public int idDistrito { get; set; }
        public string Detalle { get; set; }

        public Distrito(DataRow dr)
        {
            idDistrito =
                int.Parse(dr["idDistrito"].ToString());

            Detalle =
                dr["Detalle"].ToString().Trim();
        }
    }
}