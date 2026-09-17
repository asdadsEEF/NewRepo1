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
    public partial class actas_numero : System.Web.UI.Page
    {
        OnpeController controller = new OnpeController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(
            object sender,
            EventArgs e)
        {
            string mesa =
                txtMesa.Text.Trim();


            if (mesa == "")
            {
                lblMensaje.Text =
                    "Ingrese un número de mesa.";

                pnlActa.Visible = false;

                return;
            }


            DataTable dt =
                controller.getActa(mesa);


            if (dt != null &&
                dt.Rows.Count > 0)
            {
                DataRow fila =
                    dt.Rows[0];


                lblMesa.Text =
                    fila["idGrupoVotacion"]
                    .ToString();

                lblDepartamento.Text =
                    fila["Departamento"]
                    .ToString();

                lblProvincia.Text =
                    fila["Provincia"]
                    .ToString();

                lblDistrito.Text =
                    fila["Distrito"]
                    .ToString();

                lblLocal.Text =
                    fila["RazonSocial"]
                    .ToString();

                lblDireccion.Text =
                    fila["Direccion"]
                    .ToString();

                lblElectores.Text =
                    fila["ElectoresHabiles"]
                    .ToString();

                lblVotantes.Text =
                    fila["TotalVotantes"]
                    .ToString();


                lblMensaje.Text = "";

                pnlActa.Visible = true;
            }
            else
            {
                lblMensaje.Text =
                    "No se encontró el acta.";

                pnlActa.Visible = false;
            }
        }
    }
}