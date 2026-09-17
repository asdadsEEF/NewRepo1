using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASPWebformOnpe.Controllers
{
    public class Db
    {
        SqlConnection cn = null;
        SqlCommand cmd = null;
        SqlDataAdapter adapter = null;

        public Db(string cnn)
        {
            cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings[cnn].ConnectionString
            );

            cmd = new SqlCommand("", cn);
            adapter = new SqlDataAdapter(cmd);
        }

        internal void Sentencia(string sql)
        {
            cmd.Parameters.Clear();
            cmd.CommandText = sql;
        }

        internal DataTable getDataTable()
        {
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            return dt.Rows.Count == 0 ? null : dt;
        }
    }
}