<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Mapa4Cuadrantes.aspx.vb" Inherits="Jucobase.Mapa4Cuadrantes" %>
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
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Mapa de 4 cuadrantes</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

        <form class="form-card row g-3 form-inline" runat="server">
            <section class="section dashboard">
                <!-- Customers Card -->
                    <div class="row justify-content-center">
                        <div class="col-xl-12">
                            <div class="card overflow-auto">
                                <div class="card-body mt-3">
                                    <h5 class="card-title fw-bold ps-4">&nbsp
                                        Captura de Mapa de 4 Cuadrantes </h5>

                                    <div class="row d-inline-flex mt-3 mx-3">
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

                                    <div class="row mt-3 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                          <label for="inputNombre" class="form-label fw-bold">Nombre</label>
                                          <div class="mb-3">
                                            <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                          </div>
                                        </div>
                                        <div class="col-md-4 me-3 ms-1">
                                          <label for="inputClave" class="form-label fw-bold">Clave de familia</label>
                                          <div class="mb-3">
                                            <asp:TextBox ID="inputClave" runat="server" CssClass="form-control"></asp:TextBox>
                                          </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputApellidoPaterno" class="form-label fw-bold">Apellido Paterno</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputApellidoPaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputFamilia" class="form-label fw-bold">Familia</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputApellidoMaterno" class="form-label fw-bold">Apellido Materno</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputApellidoMaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputEdad" class="form-label fw-bold">Edad</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputEdad" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputFechaReporte" class="form-label fw-bold">Fecha de reporte</label>
                                            <div class="mb-3 position-relative">
                                              <i class="fa-regular fa-calendar position-absolute top-50 start-0 translate-middle-y"></i>
                                              <asp:TextBox ID="inputFechaReporte" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputPrograma" class="form-label fw-bold">Programa</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputPrograma" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputTerapeuta" class="form-label fw-bold">Terapeuta</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputTerapeuta" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3" id="perfilAtencionFamiliar">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputAtencionFamiliar" class="form-label fw-bold">Modelo de Atención Familiar</label>
                                            <div class="mb-3">
                                                <asp:DropDownList ID="inputAtencionFamiliar" AutoPostBack="false"
                                                                CssClass="form-select" runat="server">
                                                    <asp:ListItem Selected="True" Value="1a">Atención familiar E-T</asp:ListItem>
                                                    <asp:ListItem Value="2a">Atención Familiar Híbrida</asp:ListItem>
                                                    <asp:ListItem Value="3a">Acompañamiento Breve</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="localAmbienteJuconi" class="form-label fw-bold">Localidad de Ambiente JUCONI</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="localAmbienteJuconi" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputRolFamilia" class="form-label fw-bold">Rol en la familia</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputRolFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                               
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputAultoResponsable" class="form-label fw-bold">¿Es adulto responsable?</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputAdultoResponsable" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>

                                            <div class="col-md-6">
                                               <label for="tutoriaLegal" class="form-label fw-bold">¿Tiene la tutoría legal?</label>
                                               <div class="mb-3">
                                                 <asp:TextBox ID="tutoriaLegal" runat="server" CssClass="form-control" ></asp:TextBox>
                                               </div>
                                            </div>
                                        </div>
                                    </div>


                                    <!-- Tabla -->

                                    <div class="mt-3 mx-3">
                                        <div class="row mt-4 table-responsive justify-content-center" style="width: 100%">
                                             <div class="col-sm-10">
                                                  <table class="table table-sm table-borderless">
                                                    <thead>
                                                      <tr class="text-center">
                                                          <th >&nbsp</th>
                                                          <th>Familia</th>
                                                          <th >Parientes</th>
                                                          <th >Escuela</th>
                                                          <th >Amigos/Vecinos</th>
                                                          <th >Total</th>
                                                      </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td ><p class="fw-bold">Número de individuos en cada dominio </p></td>
                                                            <td ><asp:TextBox ID="individuos1" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="individuos2" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="individuos3" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>                                                  
                                                            <td ><asp:TextBox ID="individuos4" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" runat="server">0</asp:TextBox></td>
                                                            <td "><asp:TextBox ID="TotalIndividuos" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td ><p class="fw-bold"> Cercanía </p></td>
                                                            <td ><asp:TextBox ID="cercania1" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="cercania2" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="cercania3" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="cercania4" CssClass="form-control" onchange ="sumaCercania()" oper-cercania="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="TotalCercania" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td ><p class="fw-bold">Insastifacción </p></td>
                                                            <td ><asp:TextBox ID="insatisfaccion1" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="insatisfaccion2" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="insatisfaccion3" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="insatisfaccion4" CssClass="form-control" onchange ="sumaInsatisfaccion()" oper-insatisfaccion="true" runat="server">0</asp:TextBox></td>
                                                            <td><asp:TextBox ID="TotalInsatisfaccion" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td><p class="fw-bold">Relaciones infelices </p></td>
                                                            <td ><asp:TextBox ID="relaciones1" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="relaciones2" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="relaciones3" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>                                                 
                                                            <td ><asp:TextBox ID="relaciones4" CssClass="form-control" onchange ="sumaRelacion()" oper-relacion="true" runat="server">0</asp:TextBox></td>
                                                            <td ><asp:TextBox ID="TotalRelaciones" CssClass="form-control"  runat="server">0</asp:TextBox></td>
                                                        </tr>
                                                    </tbody>
                                                  </table>
                                             </div>
                                         </div>
                                    </div>

                                    <div class="row align-items-center mt-2 mx-3 ps-2">
                                        <div class="col-md-5 d-flex align-items-center">
                                              <button type="submit" class="btn btn-primary me-2 mt-3">
                                                <i class="fa-solid fa-floppy-disk" aria-hidden="true"></i> Guardar
                                              </button>
                                              <button type="submit" class="btn btn-primary mt-3">
                                                <i class="fa-solid fa-backward-fast" aria-hidden="true"></i> Regresar
                                              </button>
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