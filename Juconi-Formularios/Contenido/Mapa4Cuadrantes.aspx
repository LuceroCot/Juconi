<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Master.Master" CodeBehind="Mapa4Cuadrantes.aspx.vb" Inherits="Juconi_Formularios.Mapa4Cuadrantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%= inputFechaReporte.ClientID %>").datepicker($.datepicker.regional["es"] = {
                changeMonth: true,
                changeYear: true,
                yearRange: '-100:+0',
                viewMode: 'years',
                monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
                        'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago',
                                      'Sep', 'Oct', 'Nov', 'Dic'],
                dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes',
                               'Sábado'],
                dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Juv', 'Vie', 'Sáb'],
                dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá']
            });
        });  

        function sumaIndividuos() {

            var valores = document.querySelectorAll('[oper-individuos=true]');
            var total = 0;

            valores.forEach(function (celda) {

                if (!(celda.value)) {
                    celda.value = 0;
                }

                total += parseFloat(celda.value);

            });

            $("#<%= TotalIndividuos.ClientID %>").val(total);
        }

        function sumaCercania() {

            var valores = document.querySelectorAll('[oper-cercania=true]');
            var total = 0;

            valores.forEach(function (celda) {

                if (!(celda.value)) {
                    celda.value = 0;
                }

                total += parseFloat(celda.value);

            });

            $("#<%= TotalCercania.ClientID %>").val(total);
        }

        function sumaInsatisfaccion() {

            var valores = document.querySelectorAll('[oper-insatisfaccion=true]');
            var total = 0;

            valores.forEach(function (celda) {

                if (!(celda.value)) {
                    celda.value = 0;
                }

                total += parseFloat(celda.value);

            });

            $("#<%= TotalInsatisfaccion.ClientID %>").val(total);
        }

        function sumaRelacion() {

            var valores = document.querySelectorAll('[oper-relacion=true]');
            var total = 0;

            valores.forEach(function (celda) {

                if (!(celda.value)) {
                    celda.value = 0;
                }

                total += parseFloat(celda.value);

            });

            $("#<%= TotalRelaciones.ClientID %>").val(total);
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Mapa de 4 Cuadrantes </h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

        <form class="form-card row g-3" runat="server">
            <section class="section dashboard">
                <!-- Card -->
                    <div class="col-xxl-4 col-xl-12 px-4">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                                Captura de Mapa de 4 Cuadrantes </h5>

                    
                                <div class="row mt-3">
                                  <div class="col-sm-4 ps-5">
                                      <label for="inputNru" class="form-label fw-bold">NRU</label>
                                      <asp:TextBox ID="inputNru" runat="server" CssClass="form-control" ></asp:TextBox>
                                  </div>
                                  <div class="col-md-4 mt-4 pt-2">
                                      <button type="submit" class="btn btn-primary">
                                          <i class="fa fa-search" aria-hidden="true"></i>
                                          Buscar</button>
                                  </div>

                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="inputNombre" class="form-label fw-bold">Nombre</label>
                                        <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="inputClave" class="form-label fw-bold">Clave de familia</label>
                                        <asp:TextBox ID="inputClave" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="inputAp" class="form-label fw-bold">Apellido Paterno</label>
                                        <asp:TextBox ID="inputAp" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="inputFam" class="form-label fw-bold">Familia</label>
                                        <asp:TextBox ID="inputFam" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="inputAm" class="form-label fw-bold">Apellido Materno</label>
                                        <asp:TextBox ID="inputAm" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <label for="inputEdad" class="form-label fw-bold">Edad</label>
                                        <asp:TextBox ID="inputEdad" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
   
                                    <div class="col-sm-4 ps-5 input-date">
                                        <label for="inputFechaReporte" class="form-label fw-bold">Fecha de reporte</label>
                                        <i class="fa-regular fa-calendar"></i>
                                        <asp:TextBox ID="inputFechaReporte" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                    </div>
                                </div>


                                <div class="row mt-3">
                                   <div class="col-sm-4 ps-5">
                                        <label for="inputPrograma" class="form-label fw-bold">Programa</label>
                                        <asp:TextBox ID="inputPrograma" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="col-sm-4">
                                        <label for="inputTera" class="form-label fw-bold">Terapeuta</label>
                                        <asp:TextBox ID="inputTera" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3" id="perfilA" style="display: ;">
                                   <div class="col-sm-4 ps-5">
                                        <label for="inputAtt" class="form-label fw-bold">Modelo de Atención Familiar</label>
                                        <asp:DropDownList ID="inputAtt" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="1a">Atención familiar E-T</asp:ListItem>
                                              <asp:ListItem Value="2a">Atención Familiar Híbrida</asp:ListItem>
                                              <asp:ListItem Value="3a">Acompañamiento Breve</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="inputPrograma" class="form-label fw-bold">Localidad de Ambiente JUCONI</label>
                                        <asp:TextBox ID="localAmbienteJuconi" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="inputRol" class="form-label fw-bold">Rol en la familia</label>
                                        <asp:TextBox ID="inputRol" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="inputResponsable" class="form-label fw-bold">¿Es adulto responsable?</label>
                                        <asp:TextBox ID="inputResponsable" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <div class="row mt-3" id="tutoria" style="display:;">
                                            <div class="col-sm-9">
                                                <label class="form-label fw-bold">¿Tiene la tutoría legal?</label>
                                                <asp:TextBox ID="tutoriaLegal" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <br />
                                <br />
                                <br />
                                <br />

                                <div class="row mt-3">
                                    <div class="col-sm-12 ps-5">

                                        <table style="width: 100%; table-layout:fixed">

                                            <thead>
                                            <!-- Encabezados de tabla -->
                                                <tr class="fw-bold">
                                                    <td class="px-3"></td>
                                                    <td class="px-3">Familia</td>
                                                    <td class="px-3">Parientes</td>
                                                    <td class="px-3">Escuela</td>
                                                    <td class="px-3">Amigos/Vecinos</td>
                                                    <td class="px-3">Total</td>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <!-- Fila Individuos -->
                                                <tr>
                                                    <td class="fw-bold px-3"># de individuos en cada dominio</td>
                                                    <td class="px-3"><asp:TextBox ID="individuos1" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="individuos2" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="individuos3" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>                                                  
                                                    <td class="px-3"><asp:TextBox ID="individuos4" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="TotalIndividuos" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                </tr>

                                                <!-- Fila Cercanía -->
                                                <tr>
                                                    <td class="fw-bold px-3" style="line-height: 3em"> Cercanía </td>
                                                    <td class="px-3"><asp:TextBox ID="cercania1" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="cercania2" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="cercania3" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="cercania4" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="TotalCercania" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                </tr>

                                                <!-- Fila Insatisfacción -->
                                                <tr>
                                                    <td class="fw-bold px-3">Insastifacción</td>
                                                    <td class="px-3"><asp:TextBox ID="insatisfaccion1" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="insatisfaccion2" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="insatisfaccion3" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="insatisfaccion4" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="TotalInsatisfaccion" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                 </tr>

                                                <!-- Fila Relaciones infelices -->
                                                <tr>
                                                    <td class="fw-bold px-3">Relaciones infelices</td>
                                                    <td class="px-3"><asp:TextBox ID="relaciones1" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="relaciones2" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="relaciones3" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>                                                 
                                                    <td class="px-3"><asp:TextBox ID="relaciones4" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>
                                                    <td class="px-3"><asp:TextBox ID="TotalRelaciones" CssClass="form-control"  runat="server">0</asp:TextBox></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                           
                                    </div>
                                </div>

                                <br />
                                <br />

                                <div class="row mt-3">
                                    <div class="col ps-5 d-inline-block">
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                        <button type="submit" class="btn btn-primary ms-1">Regresar </button>
                                    </div>
                                </div>

                                <br />
                                <br />
                        </div>
                      </div>
                    </div>
                <!-- End Card -->
            </section>
        </form>
    </main>
</asp:Content>
