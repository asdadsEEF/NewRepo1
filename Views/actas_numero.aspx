<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Onpe.Master" AutoEventWireup="true" CodeBehind="actas_numero.aspx.cs" Inherits="ASPWebformOnpe.Views.actas_numero" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content
    ID="Content2"
    ContentPlaceHolderID="body"
    runat="server">

    <div class="container">

        <img src="../Contents/images/f-actas.jpg"
             width="1170"
             height="248"
             class="img-responsive mg30top" />


        <section class="menu navbar-default menu05">

            <nav class="navbar-collapse bs-navbar-collapse">

                <ul class="nav navbar-nav">

                    <li class="bt-azul">
                        <a href="index.aspx">
                            PRESIDENCIAL
                        </a>
                    </li>

                    <li class="bt-amarillo act-amarillo">
                        <a href="actas_ubigeo.aspx">
                            ACTAS
                        </a>
                    </li>

                    <li class="bt-rojo">
                        <a href="participacion.aspx">
                            PARTICIPACIÓN CIUDADANA
                        </a>
                    </li>

                </ul>

            </nav>

        </section>


        <br />
        <br />
        <br />
        <br />


        <section class="contenedor">

            <div class="row">


                <div class="col-xs-12 col-md-3">

                    <div class="menu-interna">

                        <ul>

                            <li>
                                <a href="actas_ubigeo.aspx">
                                    Actas por ubigeo
                                </a>
                            </li>

                            <li>
                                <a href="actas_numero.aspx"
                                   class="act-izq">

                                    Actas por número

                                </a>
                            </li>

                        </ul>

                    </div>

                </div>


                <div class="col-xs-12 col-md-9">

                    <div class="contenido-interna">


                        <div class="titulos col-xs-12">

                            <h3>

                                <span class="glyphicon glyphicon-circle-arrow-right"
                                      style="font-size:19px">
                                </span>

                                SEGUNDA ELECCIÓN PRESIDENCIAL 2016:
                                ACTAS POR NÚMERO

                            </h3>

                        </div>


                        <div class="col-lg-7 centered">

                            <div class="cont-curv">

                                <span class="glyphicon glyphicon-ok-circle ico-info">
                                </span>

                                &nbsp;

                                ACTUALIZADO EL 20/06/2016
                                A LAS 19:16 h

                            </div>

                        </div>


                        <div class="col-xs-12 td34up">

                            <div class="form-group">

                                <label>
                                    Número de Mesa:
                                </label>

                                <asp:TextBox
                                    ID="txtMesa"
                                    runat="server"
                                    CssClass="form-control"
                                    MaxLength="6">
                                </asp:TextBox>

                            </div>


                            <asp:Button
                                ID="btnBuscar"
                                runat="server"
                                Text="BUSCAR"
                                CssClass="btn btn-primary"
                                OnClick="btnBuscar_Click" />


                            <br />
                            <br />


                            <asp:Label
                                ID="lblMensaje"
                                runat="server">
                            </asp:Label>

                        </div>

        <asp:Panel
            ID="pnlActa"
            runat="server"
            Visible="false">

            <h3>
                Detalle del Acta
            </h3>

            <table class="table table-bordered">

                <tr>
                    <th>Mesa</th>
                    <td>
                        <asp:Label ID="lblMesa" runat="server" />
                    </td>
                </tr>

                <tr>
                    <th>Departamento</th>
                    <td>
                        <asp:Label ID="lblDepartamento" runat="server" />
                    </td>
                </tr>

                <tr>
                    <th>Provincia</th>
                    <td>
                        <asp:Label ID="lblProvincia" runat="server" />
                    </td>
                </tr>

                <tr>
                    <th>Distrito</th>
                    <td>
                        <asp:Label ID="lblDistrito" runat="server" />
                    </td>
                </tr>

                <tr>
                    <th>Local</th>
                    <td>
                        <asp:Label ID="lblLocal" runat="server" />
                    </td>
                </tr>

                <tr>
                    <th>Dirección</th>
                    <td>
                        <asp:Label ID="lblDireccion" runat="server" />
                    </td>
                </tr>

                <tr>
                    <th>Electores Hábiles</th>
                    <td>
                        <asp:Label ID="lblElectores" runat="server" />
                    </td>
                </tr>

                <tr>
                    <th>Total Votantes</th>
                    <td>
                        <asp:Label ID="lblVotantes" runat="server" />
                    </td>
                </tr>

            </table>

        </asp:Panel>

                    </div>

                </div>

            </div>

        </section>

    </div>

</asp:Content>