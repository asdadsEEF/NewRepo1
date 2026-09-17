using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ASPWebformOnpe.Models
{
    public class LocalVotacion
    {
        public int idLocalVotacion { get; set; }
        public string RazonSocial { get; set; }

        public LocalVotacion(DataRow dr)
        {
            idLocalVotacion =
                int.Parse(dr["idLocalVotacion"].ToString());

            RazonSocial =
                dr["RazonSocial"].ToString().Trim();
        }
    }
}