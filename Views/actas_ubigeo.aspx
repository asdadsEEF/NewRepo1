<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Onpe.Master" AutoEventWireup="true" CodeBehind="actas_ubigeo.aspx.cs" Inherits="ASPWebformOnpe.Views.actas_ubigeo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content
    ID="Content2"
    ContentPlaceHolderID="body"
    runat="server">

    <div class="container">

        <!-- BANNER ACTAS -->
        <img src="../Contents/images/f-actas.jpg"
             width="1170"
             height="248"
             class="img-responsive mg30top" />


        <!-- MENU PRINCIPAL -->
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


                <!-- MENU IZQUIERDO -->
                <div class="col-xs-12 col-md-3">

                    <div class="menu-interna">

                        <ul>

                            <li>
                                <a href="actas_ubigeo.aspx"
                                   class="act-izq">
                                    Actas por ubigeo
                                </a>
                            </li>

                            <li>
                                <a href="actas_numero.aspx">
                                    Actas por número
                                </a>
                            </li>

                        </ul>

                    </div>

                </div>


                <!-- CONTENIDO -->
                <div class="col-xs-12 col-md-9">

                    <div class="contenido-interna">


                        <!-- TITULO -->
                        <div class="titulos col-xs-12">

                            <div class="col-xs-11">

                                <h3>

                                    <span class="glyphicon glyphicon-circle-arrow-right"
                                          aria-hidden="true"
                                          style="font-size:19px">
                                    </span>

                                    SEGUNDA ELECCIÓN PRESIDENCIAL 2016:
                                    ACTAS POR UBIGEO

                                </h3>

                            </div>

                        </div>


                        <!-- ACTUALIZADO -->
                        <div class="col-lg-7 centered">

                            <div class="col-xs-12 col-md-12 col-lg-12 cont-curv">

                                <div class="col-xs-3 col-md-1">

                                    <span class="glyphicon glyphicon-ok-circle ico-info"
                                          aria-hidden="true">
                                    </span>

                                </div>

                                <div class="col-xs-9 col-md-11">

                                    <ul>

                                        <li>
                                            ACTUALIZADO EL 20/06/2016
                                            A LAS 19:16 h
                                        </li>

                                    </ul>

                                </div>

                            </div>

                        </div>


                        <!-- COMBOS -->
                        <div class="col-xs-12 td34up">

                            <div class="row">


                                <!-- AMBITO -->
                                <div class="col-md-3">

                                    <label class="control-label">
                                        Ámbito:
                                    </label>

                                    <div class="form-group">

                                        <asp:DropDownList
                                            ID="ddlAmbito"
                                            runat="server"
                                            CssClass="form-control">

                                            <asp:ListItem
                                                Text="PERÚ"
                                                Value="P">
                                            </asp:ListItem>

                                            <asp:ListItem
                                                Text="EXTRANJERO"
                                                Value="E">
                                            </asp:ListItem>

                                        </asp:DropDownList>

                                    </div>

                                </div>


                                <!-- DEPARTAMENTO -->
                                <div class="col-md-3">

                                    <label class="control-label">
                                        Departamento:
                                    </label>

                                    <div class="form-group">

                                        <asp:DropDownList
                                            ID="ddlDepartamento"
                                            runat="server"
                                            CssClass="form-control"
                                            AutoPostBack="true"
                                            OnSelectedIndexChanged="ddlDepartamento_SelectedIndexChanged">
                                        </asp:DropDownList>

                                    </div>

                                </div>


                                <!-- PROVINCIA -->
                                <div class="col-md-3">

                                    <label class="control-label">
                                        Provincia:
                                    </label>

                                    <div class="form-group">

                                        <asp:DropDownList
                                            ID="ddlProvincia"
                                            runat="server"
                                            CssClass="form-control"
                                            AutoPostBack="true"
                                            OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged">
                                        </asp:DropDownList>

                                    </div>

                                </div>


                                <!-- DISTRITO -->
                                <div class="col-md-3">

                                    <label class="control-label">
                                        Distrito:
                                    </label>

                                    <div class="form-group">

                                        <asp:DropDownList
                                            ID="ddlDistrito"
                                            runat="server"
                                            CssClass="form-control"
                                            AutoPostBack="true"
                                            OnSelectedIndexChanged="ddlDistrito_SelectedIndexChanged">
                                        </asp:DropDownList>

                                    </div>

                                </div>

                            </div>


                            <div class="row">


                                <!-- LOCAL -->
                                <div class="col-md-6">

                                    <label class="control-label">
                                        Local de votación:
                                    </label>

                                    <div class="form-group">

                                        <asp:DropDownList
                                            ID="ddlLocal"
                                            runat="server"
                                            CssClass="form-control"
                                            AutoPostBack="true"
                                            OnSelectedIndexChanged="ddlLocal_SelectedIndexChanged">
                                        </asp:DropDownList>

                                    </div>

                                </div>


                                <!-- MESA -->
                                <div class="col-md-6">

                                    <!-- LISTADO DE MESAS -->
<div class="col-xs-12 ptop20">

    <p class="subtitle">
        LISTADO DE MESAS
    </p>

    <div class="table-responsive">

        <asp:DataList
            ID="dlMesas"
            runat="server"
            RepeatColumns="6"
            RepeatDirection="Horizontal"
            CssClass="table"
            OnItemCommand="dlMesas_ItemCommand">

            <ItemTemplate>

                <asp:LinkButton
                    ID="btnMesa"
                    runat="server"
                    CssClass="btn btn-default"
                    CommandName="VerMesa"
                    CommandArgument='<%# Eval("idGrupoVotacion") %>'>

                    <%# Eval("idGrupoVotacion") %>

                </asp:LinkButton>

            </ItemTemplate>

        </asp:DataList>

    </div>


    <!-- PAGINACION -->
    <div class="text-center">

        <asp:Button
            ID="btnAnterior"
            runat="server"
            Text="« ANTERIOR"
            CssClass="btn btn-default"
            OnClick="btnAnterior_Click" />

        &nbsp;

        <asp:Label
            ID="lblPagina"
            runat="server"
            Font-Bold="true">
        </asp:Label>

        &nbsp;

        <asp:Button
            ID="btnSiguiente"
            runat="server"
            Text="SIGUIENTE »"
            CssClass="btn btn-default"
            OnClick="btnSiguiente_Click" />

    </div>

</div>

                                </div>


                            </div>

                        </div>


                        <!-- LEYENDA -->
                        <div class="col-xs-12 cont-recto">

                            <div class="col-md-4">

                                <img src="../Contents/images/procesacon.jpg" />

                                Procesada con imagen

                            </div>

                            <div class="col-md-4">

                                <img src="../Contents/images/procesasin.jpg" />

                                Procesada sin imagen

                            </div>

                            <div class="col-md-4">

                                <img src="../Contents/images/sinprocesa.jpg" />

                                Sin procesar

                            </div>

                        </div>


                        <!-- DETALLE ACTA -->
                        <asp:Panel
                            ID="pnlActa"
                            runat="server"
                            Visible="false">


                            <div class="col-xs-12 ptop20">

                                <p class="subtitle">
                                    INFORMACIÓN DE LA MESA
                                </p>

                            </div>


                            <div class="col-xs-12">

                                <table class="table table-bordered">

                                    <tr>
                                        <th>Mesa N°</th>

                                        <td>
                                            <asp:Label
                                                ID="lblMesa"
                                                runat="server" />
                                        </td>

                                        <th>N° Copia</th>

                                        <td>
                                            <asp:Label
                                                ID="lblCopia"
                                                runat="server" />
                                        </td>
                                    </tr>


                                    <tr>
                                        <th>Departamento</th>

                                        <td>
                                            <asp:Label
                                                ID="lblDepartamento"
                                                runat="server" />
                                        </td>

                                        <th>Provincia</th>

                                        <td>
                                            <asp:Label
                                                ID="lblProvincia"
                                                runat="server" />
                                        </td>
                                    </tr>


                                    <tr>
                                        <th>Distrito</th>

                                        <td>
                                            <asp:Label
                                                ID="lblDistrito"
                                                runat="server" />
                                        </td>

                                        <th>Local</th>

                                        <td>
                                            <asp:Label
                                                ID="lblLocal"
                                                runat="server" />
                                        </td>
                                    </tr>


                                    <tr>
                                        <th>Dirección</th>

                                        <td colspan="3">
                                            <asp:Label
                                                ID="lblDireccion"
                                                runat="server" />
                                        </td>
                                    </tr>


                                    <tr>
                                        <th>Electores Hábiles</th>

                                        <td>
                                            <asp:Label
                                                ID="lblElectores"
                                                runat="server" />
                                        </td>

                                        <th>Total Votantes</th>

                                        <td>
                                            <asp:Label
                                                ID="lblVotantes"
                                                runat="server" />
                                        </td>
                                    </tr>


                                    <tr>
                                        <th>Estado del Acta</th>

                                        <td colspan="3">

                                            <asp:Label
                                                ID="lblEstado"
                                                runat="server" />

                                        </td>

                                    </tr>

                                </table>

                            </div>


                            <!-- RESULTADOS -->
                            <div class="col-xs-12">

                                <p class="subtitle">
                                    RESULTADOS DE LA MESA
                                </p>


                                <table class="table table-bordered">

                                    <thead>

                                        <tr>

                                            <th>
                                                ORGANIZACIÓN POLÍTICA
                                            </th>

                                            <th>
                                                TOTAL DE VOTOS
                                            </th>

                                        </tr>

                                    </thead>


                                    <tbody>

                                        <tr>

                                            <td>

                                                <img src="../Contents/images/pkk.jpg"
                                                     style="height:40px;" />

                                                PERUANOS POR EL KAMBIO

                                            </td>

                                            <td>

                                                <asp:Label
                                                    ID="lblP1"
                                                    runat="server" />

                                            </td>

                                        </tr>


                                        <tr>

                                            <td>

                                                <img src="../Contents/images/keyko.jpg"
                                                     style="height:40px;" />

                                                FUERZA POPULAR

                                            </td>

                                            <td>

                                                <asp:Label
                                                    ID="lblP2"
                                                    runat="server" />

                                            </td>

                                        </tr>


                                        <tr>

                                            <td>
                                                VOTOS EN BLANCO
                                            </td>

                                            <td>

                                                <asp:Label
                                                    ID="lblBlancos"
                                                    runat="server" />

                                            </td>

                                        </tr>


                                        <tr>

                                            <td>
                                                VOTOS NULOS
                                            </td>

                                            <td>

                                                <asp:Label
                                                    ID="lblNulos"
                                                    runat="server" />

                                            </td>

                                        </tr>


                                        <tr>

                                            <td>
                                                VOTOS IMPUGNADOS
                                            </td>

                                            <td>

                                                <asp:Label
                                                    ID="lblImpugnados"
                                                    runat="server" />

                                            </td>

                                        </tr>

                                    </tbody>

                                </table>

                            </div>


                        </asp:Panel>


                    </div>

                </div>

            </div>

        </section>

    </div>

</asp:Content>