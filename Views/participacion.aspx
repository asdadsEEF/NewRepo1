<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Onpe.Master" AutoEventWireup="true" CodeBehind="participacion.aspx.cs" Inherits="ASPWebformOnpe.Views.participacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content
    ID="Content2"
    ContentPlaceHolderID="body"
    runat="server">


    <div class="container">


        <img src="../Contents/images/f-participacion.jpg"
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

                    <li class="bt-amarillo">
                        <a href="actas_ubigeo.aspx">
                            ACTAS
                        </a>
                    </li>

                    <li class="bt-rojo act-rojo">

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

                                <a href="participacion.aspx"
                                   class="act-izq">

                                    TOTAL

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
                                PARTICIPACIÓN CIUDADANA

                            </h3>

                        </div>


                        <div class="col-xs-12">

                            <p class="subtitle">
                                ACTAS CONTABILIZADAS
                            </p>

                            <div class="col-xs-12 ptop20">

    <div class="row">

        
        <div class="col-md-4">

            <div class="panel panel-default text-center">

                <div class="panel-heading">
                    <strong>ELECTORES HÁBILES</strong>
                </div>

                <div class="panel-body">

                    <h2>
                        <asp:Label
                            ID="lblElectoresHabiles"
                            runat="server">
                        </asp:Label>
                    </h2>

                </div>

            </div>

        </div>


        
        <div class="col-md-4">

            <div class="panel panel-default text-center">

                <div class="panel-heading">
                    <strong>PARTICIPACIÓN</strong>
                </div>

                <div class="panel-body">

                    <h2>
                        <asp:Label
                            ID="lblTotalAsistentes"
                            runat="server">
                        </asp:Label>
                    </h2>

                    <h3>
                        <asp:Label
                            ID="lblPorcentajeAsistentes"
                            runat="server">
                        </asp:Label>
                    </h3>

                </div>

            </div>

        </div>


       
        <div class="col-md-4">

            <div class="panel panel-default text-center">

                <div class="panel-heading">
                    <strong>AUSENTISMO</strong>
                </div>

                <div class="panel-body">

                    <h2>
                        <asp:Label
                            ID="lblTotalAusentes"
                            runat="server">
                        </asp:Label>
                    </h2>

                    <h3>
                        <asp:Label
                            ID="lblPorcentajeAusentes"
                            runat="server">
                        </asp:Label>
                    </h3>

                </div>

            </div>

        </div>

    </div>

</div>

                            <div class="col-lg-7 centered">

                                <div class="col-xs-12 cont-curv">

                                    <span class="glyphicon glyphicon-ok-circle ico-info">
                                    </span>

                                    &nbsp;

                                    ACTUALIZADO EL 20/06/2016
                                    A LAS 19:16 h

                                </div>

                            </div>

                        </div>


                        <div class="col-xs-12 ptop20">

                            <asp:GridView
                                ID="gvParticipacion"
                                runat="server"
                                AutoGenerateColumns="false"
                                CssClass="table table-bordered table-striped">

                                <Columns>


                                    <asp:BoundField
                                        DataField="DPD"
                                        HeaderText="DEPARTAMENTO" />


                                    <asp:BoundField
                                        DataField="TV"
                                        HeaderText="TOTAL ASISTENTES" />


                                    <asp:BoundField
                                        DataField="PTV"
                                        HeaderText="% TOTAL ASISTENTES" />


                                    <asp:BoundField
                                        DataField="TA"
                                        HeaderText="TOTAL AUSENTES" />


                                    <asp:BoundField
                                        DataField="PTA"
                                        HeaderText="% TOTAL AUSENTES" />


                                    <asp:BoundField
                                        DataField="EH"
                                        HeaderText="ELECTORES HÁBILES" />


                                </Columns>

                            </asp:GridView>

                        </div>


                    </div>

                </div>

            </div>

        </section>

    </div>

</asp:Content>