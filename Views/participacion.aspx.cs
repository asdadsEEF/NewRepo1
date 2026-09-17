using ASPWebformOnpe.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWebformOnpe.Views
{
    public partial class participacion :
        System.Web.UI.Page
    {
        OnpeController controller =
            new OnpeController();


        protected void Page_Load(
            object sender,
            EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarResumen();
                cargarParticipacion();
            }
        }


        private void cargarResumen()
        {
            DataTable dt =
                controller.getTotalVotos();


            if (dt != null &&
                dt.Rows.Count > 0)
            {
                DataRow fila =
                    dt.Rows[0];


                lblTotalAsistentes.Text =
                    Convert.ToInt32(
                        fila["Total Asistentes"]
                    ).ToString("N0");


                lblPorcentajeAsistentes.Text =
                    fila["% Total Asistentes"]
                    .ToString();


                lblTotalAusentes.Text =
                    Convert.ToInt32(
                        fila["Total Ausentes"]
                    ).ToString("N0");


                lblPorcentajeAusentes.Text =
                    fila["% Total Ausentes"]
                    .ToString();


                lblElectoresHabiles.Text =
                    Convert.ToInt32(
                        fila["Electores H�biles"]
                    ).ToString("N0");
            }
        }

        private void cargarParticipacion()
        {
            gvParticipacion.DataSource =
    controller.getParticipacionList();

            gvParticipacion.DataBind();
        }
    }
}