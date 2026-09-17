using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ASPWebformOnpe.Models
{
    public class Acta
    {
        public string Departamento { get; set; }
        public string Provincia { get; set; }
        public string Distrito { get; set; }

        public string RazonSocial { get; set; }
        public string Direccion { get; set; }

        public string idGrupoVotacion { get; set; }
        public string nCopia { get; set; }

        public int idEstadoActa { get; set; }

        public int ElectoresHabiles { get; set; }
        public int TotalVotantes { get; set; }

        public int P1 { get; set; }
        public int P2 { get; set; }

        public int VotosBlancos { get; set; }
        public int VotosNulos { get; set; }
        public int VotosImpugnados { get; set; }


        public Acta(DataRow dr)
        {
            Departamento =
                dr["Departamento"].ToString().Trim();

            Provincia =
                dr["Provincia"].ToString().Trim();

            Distrito =
                dr["Distrito"].ToString().Trim();

            RazonSocial =
                dr["RazonSocial"].ToString().Trim();

            Direccion =
                dr["Direccion"].ToString().Trim();

            idGrupoVotacion =
                dr["idGrupoVotacion"].ToString().Trim();

            nCopia =
                dr["nCopia"].ToString().Trim();

            idEstadoActa =
                int.Parse(dr["idEstadoActa"].ToString());

            ElectoresHabiles =
                int.Parse(dr["ElectoresHabiles"].ToString());

            TotalVotantes =
                int.Parse(dr["TotalVotantes"].ToString());

            P1 =
                int.Parse(dr["P1"].ToString());

            P2 =
                int.Parse(dr["P2"].ToString());

            VotosBlancos =
                int.Parse(dr["VotosBlancos"].ToString());

            VotosNulos =
                int.Parse(dr["VotosNulos"].ToString());

            VotosImpugnados =
                int.Parse(dr["VotosImpugnados"].ToString());
        }
    }
}