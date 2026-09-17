using ASPWebformOnpe.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ASPWebformOnpe.Controllers
{
    public class OnpeController
    {
        Db db = new Db("cnOnpe");

        internal DataTable getDepartamentos()
        {
            db.Sentencia("usp_getDepartamentos");
            return db.getDataTable();
        }


        internal DataTable getProvincias(int idDepartamento)
        {
            db.Sentencia(
                "usp_getProvincias " + idDepartamento
            );

            return db.getDataTable();
        }


        internal DataTable getDistritos(int idProvincia)
        {
            db.Sentencia(
                "usp_getDistritos " + idProvincia
            );

            return db.getDataTable();
        }


        internal DataTable getLocales(int idDistrito)
        {
            db.Sentencia(
                "usp_getLocalesVotacion " + idDistrito
            );

            return db.getDataTable();
        }


        internal DataTable getMesas(int idLocal)
        {
            db.Sentencia(
                "usp_getGruposVotacion " + idLocal
            );

            return db.getDataTable();
        }


        internal DataTable getActa(string idGrupoVotacion)
        {
            db.Sentencia(
                "usp_getGrupoVotacion '" + idGrupoVotacion + "'"
            );

            return db.getDataTable();
        }

        internal DataTable getParticipacion()
        {
            db.Sentencia("usp_getVotos 1,25");

            return db.getDataTable();
        }

        internal DataTable getTotalVotos()
        {
            db.Sentencia("SELECT * FROM vTotalVotos");

            return db.getDataTable();
        }

        internal object getDepartamentosList()
        {
            db.Sentencia("usp_getDepartamentos");

            DataTable dt = db.getDataTable();

            if (dt == null)
                return null;


            List<Departamento> departamentos =
                new List<Departamento>();


            foreach (DataRow dr in dt.Rows)
            {
                departamentos.Add(
                    new Departamento(dr)
                );
            }


            return departamentos;
        }

        internal object getProvinciasList(
    int idDepartamento)
        {
            db.Sentencia(
                "usp_getProvincias " +
                idDepartamento
            );

            DataTable dt = db.getDataTable();

            if (dt == null)
                return null;


            List<Provincia> provincias =
                new List<Provincia>();


            foreach (DataRow dr in dt.Rows)
            {
                provincias.Add(
                    new Provincia(dr)
                );
            }


            return provincias;
        }

        internal object getLocalesList(
    int idDistrito)
        {
            db.Sentencia(
                "usp_getLocalesVotacion " +
                idDistrito
            );

            DataTable dt = db.getDataTable();

            if (dt == null)
                return null;


            List<LocalVotacion> locales =
                new List<LocalVotacion>();


            foreach (DataRow dr in dt.Rows)
            {
                locales.Add(
                    new LocalVotacion(dr)
                );
            }


            return locales;
        }

        internal object getMesasList(
    int idLocal)
        {
            db.Sentencia(
                "usp_getGruposVotacion " +
                idLocal
            );

            DataTable dt = db.getDataTable();

            if (dt == null)
                return null;


            List<Mesa> mesas =
                new List<Mesa>();


            foreach (DataRow dr in dt.Rows)
            {
                mesas.Add(
                    new Mesa(dr)
                );
            }


            return mesas;
        }

        internal object getActaModel(
    string idGrupoVotacion)
        {
            db.Sentencia(
                "usp_getGrupoVotacion '" +
                idGrupoVotacion +
                "'"
            );

            DataTable dt = db.getDataTable();

            if (dt == null)
                return null;


            List<Acta> actas =
                new List<Acta>();


            foreach (DataRow dr in dt.Rows)
            {
                actas.Add(
                    new Acta(dr)
                );
            }


            return actas;
        }

        internal object getParticipacionList()
        {
            db.Sentencia(
                "usp_getVotos 1,25"
            );

            DataTable dt = db.getDataTable();

            if (dt == null)
                return null;


            List<Participacion> participacion =
                new List<Participacion>();


            foreach (DataRow dr in dt.Rows)
            {
                participacion.Add(
                    new Participacion(dr)
                );
            }


            return participacion;
        }

        internal object getDistritosList(
    int idProvincia)
        {
            db.Sentencia(
                "usp_getDistritos " +
                idProvincia
            );

            DataTable dt = db.getDataTable();

            if (dt == null)
                return null;


            List<Distrito> distritos =
                new List<Distrito>();


            foreach (DataRow dr in dt.Rows)
            {
                distritos.Add(
                    new Distrito(dr)
                );
            }


            return distritos;
        }

    }
}