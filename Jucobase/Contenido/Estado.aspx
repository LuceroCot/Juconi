<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Estado.aspx.vb" Inherits="Jucobase.Estado" %>
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

            $("#<%= inputFechaEntradaEtapa.ClientID %>").datepicker($.datepicker.regional["es"] = {
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

            $("#<%= inputFechaSalidaEtapa.ClientID %>").datepicker($.datepicker.regional["es"] = {
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
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Estado del beneficiario</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

        <form class="form-card row g-3 form-inline" runat="server">
            <section class="section dashboard">

             <!-- Customers Card -->
                 <div class="col-xxl-4 col-xl-12 px-4">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                              Registrar o actualizar estado de beneficiario</h5>

                    
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
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="responsable1" GroupName="AdultoResponsable" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="responsable2" GroupName="AdultoResponsable" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>

                                    <div class="col-md-6">
                                        <label for="tutoriaLegal" class="form-label fw-bold">¿Tiene la tutoría legal?</label>
                                        <div class="mb-3 position-relative">
                                            <label class="form-check-inline">
                                                <asp:RadioButton ID="tutoria1" GroupName="TutoriaLegal" runat="server" />
                                                <span class="form-check-label">Sí</span>
                                            </label>
                                            <label class="form-check-inline ml-2">
                                                <asp:RadioButton ID="tutoria2" GroupName="TutoriaLegal" runat="server" />
                                                <span class="form-check-label">No</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                             </div>

                              <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">¿Participó en el semestre actual?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="ciclo1" GroupName="CicloActual" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="ciclo2" GroupName="CicloActual" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">¿Participó en el mes actual?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="mes1" GroupName="MesActual" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="mes2" GroupName="MesActual" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                </div>
                              </div>

                              <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputEtapa" class="form-label fw-bold">Etapa</label>
                                    <div class="mb-3">
                                        <asp:DropDownList ID="inputEtapa" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="1e">Operación Amistad</asp:ListItem>
                                              <asp:ListItem Value="2e">Seguimiento</asp:ListItem>
                                              <asp:ListItem Value="3e">Intensiva</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputFechaEntradaEtapa" class="form-label fw-bold">Fecha de entrada a etapa</label>
                                    <div class="mb-3 position-relative">
                                      <i class="fa-regular fa-calendar position-absolute top-50 start-0 translate-middle-y"></i>
                                      <asp:TextBox ID="inputFechaEntradaEtapa" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                    </div>
                                </div>
                              </div> 

                              <div class="row mt-2 mx-3">
                                 <div class="col-md-4 me-3 ms-1">
                                     <label class="form-label fw-bold">¿Actualmente en programa?</label>
                                     <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="programActual1" GroupName="ProgramaActual" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="programActual2" GroupName="ProgramaActual" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                 </div>

                                 <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">¿Regularidad?</label>
                                     <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="regularidad1" GroupName="RegularidadGroup" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="regularidad2" GroupName="RegularidadGroup" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                </div>
                              </div>

                              <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputFechaSalidaEtapa" class="form-label fw-bold">Fecha de salida de etapa</label>
                                    <div class="mb-3 position-relative">
                                      <i class="fa-regular fa-calendar position-absolute top-50 start-0 translate-middle-y"></i>
                                      <asp:TextBox ID="inputFechaSalidaEtapa" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputRazon" class="form-label fw-bold">Razón de salida</label>
                                    <div class="mb-3">
                                        <asp:DropDownList ID="inputRazon" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="1e">Graduado</asp:ListItem>
                                              <asp:ListItem Value="2e">Canalizado a otra institución</asp:ListItem>
                                              <asp:ListItem Value="3e">Deserción</asp:ListItem>
                                              <asp:ListItem Value="4e">Baja por defunción</asp:ListItem>
                                              <asp:ListItem Value="5r">Baja (no defunción)</asp:ListItem>
                                              <asp:ListItem Value="6r">Avance significativo</asp:ListItem>
                                        </asp:DropDownList>
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
                <!-- End Customers Card -->
            </section>
        </form>
    </main>
</asp:Content>
