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

    <main id="main" class="main" style="min-width:600px;">
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
                <div class="row justify-content-center">
                    <div class="col-xl-12">
                        <div class="card overflow-auto">
                            <div class="card-body mt-3">
                              <h5 class="card-title fw-bold ps-3">&nbsp Captura de Mapa de 4 Cuadrantes </h5>

                                <div class="row d-inline-flex ps-3 mt-3">
                                    <div class="col">
                                        <label for="inputNru" class="form-label fw-bold">NRU</label>
                                         <asp:TextBox ID="inputNru" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col">
                                        <br />
                                        <button type="submit" class="btn btn-primary mt-2"> 
                                            <i class="fa fa-search" aria-hidden="true"></i>
                                                Buscar
                                        </button>
                                    </div>  
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputNombre" class="form-label fw-bold">Nombre</label>
                                        <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputClave" class="form-label fw-bold">Clave de familia</label>
                                        <asp:TextBox ID="inputClave" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputApellidoPaterno" class="form-label fw-bold">Apellido Paterno</label>
                                        <asp:TextBox ID="inputApellidoPaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputFamilia" class="form-label fw-bold">Familia</label>
                                        <asp:TextBox ID="inputFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputApellidoMaterno" class="form-label fw-bold">Apellido Materno</label>
                                        <asp:TextBox ID="inputApellidoMaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                     </div>
                                     <div class="col-sm-2 ps-4 mt-3">
                                        <label for="inputEdad" class="form-label fw-bold">Edad</label>
                                        <asp:TextBox ID="inputEdad" runat="server" CssClass="form-control" ></asp:TextBox>
                                     </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 ps-4 input-date mt-3">
                                        <label for="inputFechaReporte" class="form-label fw-bold">Fecha de reporte</label>
                                        <i class="fa-regular fa-calendar"></i>
                                        <asp:TextBox ID="inputFechaReporte" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                   <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputPrograma" class="form-label fw-bold">Programa</label>
                                        <asp:TextBox ID="inputPrograma" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputTerapeuta" class="form-label fw-bold">Terapeuta</label>
                                        <asp:TextBox ID="inputTerapeuta" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3" id="perfilAtencionFamiliar" style="display: ;">
                                   <div class="col-sm-4 ps-4">
                                        <label for="inputAtencionFamiliar" class="form-label fw-bold">Modelo de Atención Familiar</label>
                                        <asp:DropDownList ID="inputAtencionFamiliar" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="1a">Atención familiar E-T</asp:ListItem>
                                              <asp:ListItem Value="2a">Atención Familiar Híbrida</asp:ListItem>
                                              <asp:ListItem Value="3a">Acompañamiento Breve</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-4">
                                        <label for="localAmbienteJuconi" class="form-label fw-bold">Localidad de Ambiente JUCONI</label>
                                        <asp:TextBox ID="localAmbienteJuconi" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputRolFamilia" class="form-label fw-bold">Rol en la familia</label>
                                        <asp:TextBox ID="inputRolFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputAultoResponsable" class="form-label fw-bold">¿Es adulto responsable?</label>
                                        <asp:TextBox ID="inputAdultoResponsable" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <div class="row mt-3" id="tutoria" style="display:;">
                                            <div class="col-sm-9">
                                                <label for="tutoriaLegal" class="form-label fw-bold">¿Tiene la tutoría legal?</label>
                                                <asp:TextBox ID="tutoriaLegal" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <br /><br />

                                <!-- Tabla -->
                                <div class="dataTable-wrapper fixed-columns">
                                  <div class="dataTable-container">
                                      <table style="width: 100%; table-layout:fixed";>
                                        <thead>
                                          <tr class="text-center">
                                              <th class="px-2" style="width: 10.3%;">&nbsp</th>
                                              <th class="px-2" style="width: 8%;">Familia</th>
                                              <th class="px-2" style="width: 8%;">Parientes</th>
                                              <th class="px-2" style="width: 8%;">Escuela</th>
                                              <th class="px-2" style="width: 8%;">Amigos/Vecinos</th>
                                              <th class="px-2" style="width: 8%;">Total</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="px-3"><p class="fw-bold">Número de individuos en cada dominio </p></td>
                                                <td class="px-2"><asp:TextBox ID="individuos1" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="individuos2" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="individuos3" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>                                                  
                                                <td class="px-2"><asp:TextBox ID="individuos4" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="TotalIndividuos" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td class="px-3"><p class="fw-bold"> Cercanía </p></td>
                                                <td class="px-2"><asp:TextBox ID="cercania1" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="cercania2" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="cercania3" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="cercania4" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="TotalCercania" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td class="px-3"><p class="fw-bold">Insastifacción </p></td>
                                                <td class="px-2"><asp:TextBox ID="insatisfaccion1" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="insatisfaccion2" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="insatisfaccion3" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="insatisfaccion4" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="TotalInsatisfaccion" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td class="px-3"><p class="fw-bold">Relaciones infelices </p></td>
                                                <td class="px-2"><asp:TextBox ID="relaciones1" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="relaciones2" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="relaciones3" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>                                                 
                                                <td class="px-2"><asp:TextBox ID="relaciones4" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>
                                                <td class="px-2"><asp:TextBox ID="TotalRelaciones" CssClass="form-control"  runat="server">0</asp:TextBox></td>
                                            </tr>
                                        </tbody>
                                      </table>
                                  </div>
                                </div>

                                <br /><br />

                                <div class="row mt-3">
                                    <div class="col ps-4 d-inline-block">
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                        <button type="submit" class="btn btn-primary ms-3">Nuevo</button>
                                        <button type="reset" class="btn btn-primary ms-3">Cancelar </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Card -->
            </section>
        </form>
    </main>
</asp:Content>