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

        <form class="form-card row g-3" runat="server">
            <section class="section dashboard">

             <!-- Customers Card -->
                 <div class="col-xxl-4 col-xl-12 px-4">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                              Registrar o actualizar estado de beneficiario</h5>

                    
                            <div class="row d-inline-flex mt-3 ps-3 ms-2">
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
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputNombre" class="form-label fw-bold">Nombre</label>
                                    <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                                
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputClave" class="form-label fw-bold">Clave de familia</label>
                                    <asp:TextBox ID="inputClave" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputApellidoPaterno" class="form-label fw-bold">Apellido Paterno</label>
                                    <asp:TextBox ID="inputApellidoPaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputFamilia" class="form-label fw-bold">Familia</label>
                                    <asp:TextBox ID="inputFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputApellidoMaterno" class="form-label fw-bold">Apellido Materno</label>
                                    <asp:TextBox ID="inputApellidoMaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                                <div class="col-sm-2 ps-5 mt-3">
                                    <label for="inputEdad" class="form-label fw-bold">Edad</label>
                                    <asp:TextBox ID="inputEdad" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 input-date mt-3">
                                    <label for="inputFechaReporte" class="form-label fw-bold">Fecha de reporte</label>
                                    <i class="fa-regular fa-calendar"></i>
                                    <asp:TextBox ID="inputFechaReporte" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputPrograma" class="form-label fw-bold">Programa</label>
                                    <asp:TextBox ID="inputPrograma" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>

                                <div class="col-sm-4 ps-5 mt-3">
                                     <label for="inputTerapeuta" class="form-label fw-bold">Terapeuta</label>
                                     <asp:TextBox ID="inputTerapeuta" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row mt-3" id="perfilAtencionFamiliar" style="display: ;">
                                <div class="col-sm-4 ps-5">
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
                                <div class="col-sm-4 ps-5">
                                    <label for="localAmbienteJuconi" class="form-label fw-bold">Localidad de Ambiente JUCONI</label>
                                    <asp:TextBox ID="localAmbienteJuconi" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputRolFamilia" class="form-label fw-bold">Rol en la familia</label>
                                    <asp:TextBox ID="inputRolFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                               
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputAultoResponsable" class="form-label fw-bold">¿Es adulto responsable?</label>
                                    <br />
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="RadioButton1" Checked="false" GroupName="AdultoResponsable" runat="server"/>&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="RadioButton2" GroupName="AdultoResponsable" runat="server" />&nbsp No
                                    </div>

                                    <!-- Por ahora no mostrado -->
                                    <div class="row mt-3" id="tutoria" style="display:;">
                                       <div class="col-sm-9">
                                            <label for="tutoriaLegal" class="form-label fw-bold">¿Tiene la tutoría legal?</label>
                                            <br />
  
                                            <div class="form-check form-check-inline mt-2">
                                                <asp:RadioButton ID="RadioButton3" Checked="false" GroupName="TutoriaLegal" runat="server" />&nbsp Sí
                                            </div>
                                            <div class="form-check form-check-inline mt-2">
                                                <asp:RadioButton ID="RadioButton4" GroupName="TutoriaLegal" runat="server" />&nbsp No
                                            </div>
                                       </div>
                                    </div>
                                </div>
                            </div>
               
                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label class="form-label fw-bold">¿Participó en el semestre actual?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="ciclo1" Checked="false" GroupName="CicloActual" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="ciclo2" GroupName="CicloActual" runat="server" />&nbsp No
                                    </div>
                                </div>

                                <div class="col-sm-4 ps-5 mt-3">
                                    <label class="form-label fw-bold">¿Participó en el mes actual?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="mes1" Checked="false" GroupName="MesActual" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="mes2" GroupName="MesActual" runat="server" />&nbsp No
                                    </div>
                                </div>
                           </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputEtapa" class="form-label fw-bold">Etapa</label>

                                    <asp:DropDownList ID="inputEtapa" AutoPostBack="false"
                                            CssClass="form-select" runat="server">
                                          <asp:ListItem Selected="True" Value="1e">Operación Amistad</asp:ListItem>
                                          <asp:ListItem Value="2e">Seguimiento</asp:ListItem>
                                          <asp:ListItem Value="3e">Intensiva</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="col-sm-4 ps-5 mt-3 input-date">
                                    <label for="inputFechaEntradaEtapa" class="form-label fw-bold">Fecha de entrada a etapa</label>
                                    <i class="fa-regular fa-calendar"></i>
                                    <asp:TextBox ID="inputFechaEntradaEtapa" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                </div>
                            </div> 


                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label class="form-label fw-bold">¿Actualmente en programa?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="programActual1" Checked="false" GroupName="ProgramaActual" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="programActual2"  GroupName="ProgramaActual" runat="server" />&nbsp No
                                    </div>
                                </div>


                                <div class="col-sm-4 ps-5 mt-3">
                                    <label class="form-label fw-bold">¿Regularidad?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="regularidad1" Checked="false" GroupName="Regularidad" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="regularidad2" GroupName="Regularidad" runat="server" />&nbsp No
                                    </div>
                                </div>
                            </div>


                            <div class="row" id="Salida">
                                <div class="col-sm-4 ps-5 mt-3 input-date">
                                    <label for="inputFechaSalidaEtapa" class="form-label fw-bold">Fecha de salida de etapa</label>
                                    <i class="fa-regular fa-calendar"></i>
                                    <asp:TextBox ID="inputFechaSalidaEtapa" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                </div>

                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputRazon" class="form-label fw-bold">Razón de salida</label>

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

                            <br /><br />

                            <div class="row">
                                <div class="col ps-5 d-inline-block">
                                    <button type="submit" class="btn btn-primary">Guardar </button>
                                    <button type="submit" class="btn btn-primary ms-1">Regresar </button>
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
