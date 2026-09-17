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
    public partial class actas_ubigeo : System.Web.UI.Page
    {
        OnpeController controller = new OnpeController();

        private int PaginaActual
        {
            get
            {
                if (ViewState["PaginaActual"] == null)
                {
                    return 0;
                }

                return Convert.ToInt32(
                    ViewState["PaginaActual"]
                );
            }

            set
            {
                ViewState["PaginaActual"] = value;
            }
        }


        private int LocalActual
        {
            get
            {
                if (ViewState["LocalActual"] == null)
                {
                    return 0;
                }

                return Convert.ToInt32(
                    ViewState["LocalActual"]
                );
            }

            set
            {
                ViewState["LocalActual"] = value;
            }
        }

        private void cargarMesas()
        {
            if (LocalActual == 0)
            {
                return;
            }

            DataTable dt =
                controller.getMesas(LocalActual);


            if (dt == null || dt.Rows.Count == 0)
            {
                dlMesas.DataSource = null;
                dlMesas.DataBind();

                lblPagina.Text =
                    "No existen mesas";

                btnAnterior.Enabled = false;
                btnSiguiente.Enabled = false;

                return;
            }


            PagedDataSource paginacion =
                new PagedDataSource();

            paginacion.DataSource =
                dt.DefaultView;

            paginacion.AllowPaging = true;

            
            paginacion.PageSize = 18;

            paginacion.CurrentPageIndex =
                PaginaActual;


            dlMesas.DataSource =
                paginacion;

            dlMesas.DataBind();


            lblPagina.Text =
                "Página " +
                (PaginaActual + 1) +
                " de " +
                paginacion.PageCount;


            btnAnterior.Enabled =
                !paginacion.IsFirstPage;

            btnSiguiente.Enabled =
                !paginacion.IsLastPage;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDepartamentos();
            }
        }

        private void cargarDepartamentos()
        {
            ddlDepartamento.DataSource =
                controller.getDepartamentosList();

            ddlDepartamento.DataTextField =
                "Detalle";

            ddlDepartamento.DataValueField =
                "idDepartamento";

            ddlDepartamento.DataBind();

            ddlDepartamento.Items.Insert(
                0,
                new System.Web.UI.WebControls.ListItem(
                    "-- Seleccione --",
                    "0"
                )
            );
        }


        protected void ddlDepartamento_SelectedIndexChanged(
    object sender,
    EventArgs e)
        {
            ddlProvincia.Items.Clear();
            ddlDistrito.Items.Clear();
            ddlLocal.Items.Clear();

            pnlActa.Visible = false;

            if (ddlDepartamento.SelectedValue != "0")
            {
                int idDepartamento =
                    Convert.ToInt32(
                        ddlDepartamento.SelectedValue
                    );

                ddlProvincia.DataSource =
                    controller.getProvinciasList(
                        idDepartamento
                    );

                ddlProvincia.DataTextField =
                    "Detalle";

                ddlProvincia.DataValueField =
                    "idProvincia";

                ddlProvincia.DataBind();

                ddlProvincia.Items.Insert(
                    0,
                    new ListItem(
                        "-- Seleccione --",
                        "0"
                    )
                );
            }
        }


        protected void ddlProvincia_SelectedIndexChanged(
            object sender,
            EventArgs e)
        {
            ddlDistrito.Items.Clear();
            ddlLocal.Items.Clear();
    
            pnlActa.Visible = false;

            if (ddlProvincia.SelectedValue != "0")
            {
                int idProvincia =
                    Convert.ToInt32(
                        ddlProvincia.SelectedValue
                    );


                ddlDistrito.DataSource =
    controller.getDistritosList(
        idProvincia
    );

                ddlDistrito.DataTextField =
                    "Detalle";

                ddlDistrito.DataValueField =
                    "idDistrito";

                ddlDistrito.DataBind();

                ddlDistrito.Items.Insert(
                    0,
                    new System.Web.UI.WebControls.ListItem(
                        "-- Seleccione --",
                        "0"
                    )
                );
            }
        }

        protected void dlMesas_ItemCommand(
    object source,
    DataListCommandEventArgs e)
        {
            if (e.CommandName == "VerMesa")
            {
                string mesa =
                    e.CommandArgument.ToString();

                cargarDetalleActa(mesa);
            }
        }

        protected void ddlDistrito_SelectedIndexChanged(
            object sender,
            EventArgs e)
        {
            ddlLocal.Items.Clear();
            

            pnlActa.Visible = false;

            if (ddlDistrito.SelectedValue != "0")
            {
                int idDistrito =
                    Convert.ToInt32(
                        ddlDistrito.SelectedValue
                    );

                DataTable dt =
                    controller.getLocales(
                        idDistrito
                    );

                ddlLocal.DataSource =
    controller.getLocalesList(
        idDistrito
    );

                ddlLocal.DataTextField =
                    "RazonSocial";

                ddlLocal.DataValueField =
                    "idLocalVotacion";

                ddlLocal.DataBind();

                ddlLocal.Items.Insert(
                    0,
                    new System.Web.UI.WebControls.ListItem(
                        "-- Seleccione --",
                        "0"
                    )
                );
            }
        }


        protected void ddlLocal_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlActa.Visible = false;

            PaginaActual = 0;

            if (ddlLocal.SelectedValue != "0")
            {
                LocalActual =
                    Convert.ToInt32(
                        ddlLocal.SelectedValue
                    );

                cargarMesas();
            }
            else
            {
                LocalActual = 0;

                dlMesas.DataSource = null;
                dlMesas.DataBind();

                lblPagina.Text = "";
            }
        }

        protected void btnAnterior_Click(object sender, EventArgs e)
        {
            if (PaginaActual > 0)
            {
                PaginaActual--;

                cargarMesas();
            }
        }

        protected void btnSiguiente_Click(object sender,EventArgs e)
        {
            PaginaActual++;

            cargarMesas();
        }

        private void cargarDetalleActa(string mesa)
        {
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


                lblCopia.Text =
                    fila["nCopia"]
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


                lblP1.Text =
                    fila["P1"]
                    .ToString();


                lblP2.Text =
                    fila["P2"]
                    .ToString();


                lblBlancos.Text =
                    fila["VotosBlancos"]
                    .ToString();


                lblNulos.Text =
                    fila["VotosNulos"]
                    .ToString();


                lblImpugnados.Text =
                    fila["VotosImpugnados"]
                    .ToString();


                int estado =
                    Convert.ToInt32(
                        fila["idEstadoActa"]
                    );


                if (estado == 1)
                {
                    lblEstado.Text =
                        "ACTA ELECTORAL NORMAL";
                }
                else if (estado == 2)
                {
                    lblEstado.Text =
                        "ACTA ELECTORAL RESUELTA";
                }
                else
                {
                    lblEstado.Text =
                        "SIN ESTADO";
                }


                pnlActa.Visible = true;
            }
            else
            {
                pnlActa.Visible = false;
            }
        }
    }
}