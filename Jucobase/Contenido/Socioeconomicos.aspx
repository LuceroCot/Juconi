<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Socioeconomicos.aspx.vb" Inherits="Jucobase.Socioeconomicos" %>
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
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Captura socioeconómicos de beneficiario</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Datos socioeconómicos</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

        <form class="form-card row g-3" runat="server">
            <section class="section dashboard">

                <!-- Card -->
                 <div class="col-xxl-12 col-xl-12 px-12">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                              Registro reporte socioeconómicos del beneficiario</h5>

                    
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

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">¿Actualmente trabaja?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="trabajar1" GroupName="ActualTrabaja" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="trabajar2" GroupName="ActualTrabaja" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                </div>

                               <div class="col-md-4 me-3 ms-1">
                                    <label for="inputMejora" class="form-label fw-bold">Razón por la que no trabaja</label>
                                   <div class="mb-3">
                                       <asp:TextBox ID="razonNoTrabajo" runat="server" CssClass="form-control" ></asp:TextBox>
                                   </div>                                   
                                </div> 
                            </div>
                        </div>
                      </div>
                 </div>
                <!-- End Customers Card -->

                <!-- Población en general -->
                <div class="col-xxl-12 col-xl-12 px-12">
                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                           <h5 class="card-title fw-bold ps-4">&nbsp
                               <i class="fa-solid fa-children fa-lg"></i>
                                &nbsp Población en general &nbsp
                               <i class="fa-solid fa-people-group fa-lg"></i>
                           </h5>

                           <div class="row mt-3 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label for="inputEdadComienzo" class="form-label fw-bold">1. ¿A qué edad comenzó a trabajar?</label>
                                   <div class="mb-3">
                                       <asp:TextBox ID="inputEdadComienzo" runat="server" CssClass="form-control" ></asp:TextBox>
                                   </div>
                               </div>

                               <div class="col-md-4 me-3 ms-1">
                                   <label for="numTrabajos" class="form-label fw-bold">2. Actualmente, ¿cuántos trabajos tiene?</label>
                                   <div class="mb-3">
                                       <asp:TextBox ID="numTrabajos" runat="server" CssClass="form-control" ></asp:TextBox>
                                   </div>
                               </div>
                           </div>

                           <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label for="inputDescripcionTrabajo" class="form-label fw-bold">3. Descripción del trabajo principal</label>
                                   <br />
                                   
                                   <textarea ID="inputDescripcionTrabajo" class="form-control" rows="5" cols="15"></textarea>
                                   <br />
                               </div>

                               <div class="col-md-4 me-3 ms-1">
                                   <label for="inputCategoriaTrabajoPrincipal" class="form-label fw-bold">3.1 Categoría trabajo</label>
                                   <div class="mb-3">
                                       <asp:TextBox ID="inputCategoriaTrabajoPrincipal" runat="server" CssClass="form-control" ></asp:TextBox>
                                   </div>
                               </div>
                           </div>

                           <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label for="inputUbicacionPrincipal" class="form-label fw-bold">3.2 Ubicación o lugar de trabajo</label>
                                   <div class="mb-3">
                                       <asp:TextBox ID="inputUbicacionPrincipal" runat="server" CssClass="form-control" ></asp:TextBox>
                                   </div>
                               </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">3.3 Tipo de empleo</label>
                                    <div class="mb-3">
                                        <asp:DropDownList ID="inputTipoPrincipal" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="0">Tipo de empleo</asp:ListItem>
                                              <asp:ListItem Value="1">Formal</asp:ListItem>
                                              <asp:ListItem Value="2">Informal</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>                                    
                               </div>
                           </div>

                           <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">3.4 ¿Cuenta con contrato?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="contratoPrincipal1" GroupName="TenerContratoPrincipal" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="contratoPrincipal2" GroupName="TenerContratoPrincipal" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">3.5 ¿Cuenta con prestaciones de ley?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="prestacionesPrincipal1" GroupName="PrestacionesPrincipal" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="prestacionesPrincipal2" GroupName="PrestacionesPrincipal" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                               </div>
                           </div>

                           <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">3.6 Periodicidad de renumeración</label>
                                    <div class="mb-3">
                                        <asp:DropDownList ID="periodoPrincipal" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="1">Por día</asp:ListItem>
                                              <asp:ListItem Value="2">Por semana</asp:ListItem>
                                              <asp:ListItem Value="3">Por quincena</asp:ListItem>
                                              <asp:ListItem Value="4">Por mes</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>                                    
                               </div>

                              <div class="col-md-4 me-3 ms-1">
                                   <label for="inputMontoPrincipal" class="form-label fw-bold">3.7 Monto de renumeración por periodo</label>
                                   <div class="mb-3">
                                       <div class="input-group">
                                            <asp:TextBox ID="inputMontoPrincipal" runat="server" CssClass="form-control" ></asp:TextBox>
                                            <span class="input-group-text">$MXN</span>
                                       </div>
                                   </div>
                               </div>
                           </div>

                           <div class="row mt-2 mx-3">
                              <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">4. Descripción del trabajo secundario</label>
                                    <br />

                                    <textarea ID="inputDescripcionSecundario" class="form-control" rows="5" cols="15"></textarea>
                                    <br />
                               </div>

                              <div class="col-md-4 me-3 ms-1">
                                   <label for="inputCategoriaTrabajoSecundario" class="form-label fw-bold">4.1 Categoría trabajo</label>
                                   <div class="mb-3">
                                       <asp:TextBox ID="inputCategoriaTrabajoSecundario" runat="server" CssClass="form-control" ></asp:TextBox>
                                   </div>
                               </div>
                           </div>

                           <div class="row mt-2 mx-3">
                              <div class="col-md-4 me-3 ms-1">
                                   <label for="inputUbicacionSecundario" class="form-label fw-bold">4.2 Ubicación o lugar de trabajo</label>
                                   <div class="mb-3">
                                       <asp:TextBox ID="inputUbicacionSecundario" runat="server" CssClass="form-control" ></asp:TextBox>
                                   </div>
                               </div>

                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">4.3 Tipo de empleo</label>
                                    <div class="mb-3">
                                        <asp:DropDownList ID="inputTipoSecundario" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="0">Tipo de empleo</asp:ListItem>
                                              <asp:ListItem Value="1">Formal</asp:ListItem>
                                              <asp:ListItem Value="2">Informal</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>                                    
                               </div>
                           </div>

                           <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">4.4 ¿Cuenta con contrato?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="contratoSecundario1" GroupName="TenerContratoSecundario" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="contratoSecundario2" GroupName="TenerContratoSecundario" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">4.5 ¿Cuenta con prestaciones de ley?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="prestacionesSecundario1" GroupName="PrestacionesSecundario" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="prestacionesSecundario2" GroupName="PrestacionesSecundario" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                               </div>
                           </div>

                           <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">4.6 Periodicidad de renumeración</label>
                                    <div class="mb-3">
                                        <asp:DropDownList ID="periodoSecundario" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="1">Por día</asp:ListItem>
                                              <asp:ListItem Value="2">Por semana</asp:ListItem>
                                              <asp:ListItem Value="3">Por quincena</asp:ListItem>
                                              <asp:ListItem Value="4">Por mes</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>                                    
                               </div>

                               <div class="col-md-4 me-3 ms-1">
                                   <label for="inputMontoSecundario" class="form-label fw-bold">4.7 Monto de renumeración por periodo</label>
                                   <div class="mb-3">
                                       <div class="input-group">
                                            <asp:TextBox ID="inputMontoSecundario" runat="server" CssClass="form-control" ></asp:TextBox>
                                            <span class="input-group-text">$MXN</span>
                                       </div>
                                   </div>
                               </div>
                           </div>

                           <div class="row mt-2 mx-3">
                               <div class="col-md-8 me-3 ms-1">
                                   <label class="form-label fw-bold">5. Riesgos asociados a su trabajo(s)</label>
                                   <div class="mb-3">
                                        <table>
                                           <tr>
                                               <td> <asp:CheckBox ID="riesgos1" runat="server" />&nbsp N/A &nbsp </td>     
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="riesgos2" runat="server" />&nbsp Accidentes de tráfico vehicular &nbsp </td>    
                                           </tr>
 
                                           <tr>
                                               <td> <asp:CheckBox ID="riesgos3" runat="server" />&nbsp Accidentes físicas significativas/leves &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="riesgos4" runat="server" />&nbsp Adquisición de adicciones &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="riesgos5" runat="server" />&nbsp Adquisición de problemas de salud &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="riesgos6" runat="server" />&nbsp Agresiones físicas significativas/leves &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="riesgos7" runat="server" />&nbsp Agresiones sexuales significativas/leves &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="riesgos8" runat="server" />&nbsp Patologías médicas infecciosas y no infecciosas &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="riesgos9" runat="server" />&nbsp Manejo de material peligroso &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="riesgos10" runat="server" />&nbsp Relación con agrupaciones delictivas &nbsp </td>  
                                           </tr>
                                        </table>

                                        <div class="col-md-4">
                                            <label for="otrosRiesgos" class="form-label fw-bold mt-2">Otros</label>
                                            <div class="mb-3">
                                                <asp:TextBox ID="otrosRiesgos" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                   </div>
                               </div>
                            </div>
                    
                           <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                    <label for="inputIngresoMensual" class="form-label fw-bold">6. Estimado de ingreso mensual considenrando todas las fuentes de ingreso</label>
                                    <div class="mb-3">
                                        <div class="input-group">
                                            <asp:TextBox ID="inputIngresoMensual" runat="server" CssClass="form-control" ></asp:TextBox>
                                            <span class="input-group-text">$MXN</span>
                                       </div>
                                    </div>
                                </div>
                           </div>

                        </div>
                      </div>
                </div>
                <!-- Fin Población en general -->


                <!-- Niños, niñas ya dolescentes -->
                <div class="col-xxl-12 col-xl-12 px-12">
                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                           <h5 class="card-title fw-bold ps-4">&nbsp
                              <i class="fa-solid fa-children fa-lg"></i>
                                &nbsp Niñas, niños y adolescentes </h5>

                             <div class="row mt-3 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label for="inputRazonTrabajo" class="form-label fw-bold">7. Razón de trabajo</label>
                                   <div class="mb-3">
                                       <asp:DropDownList ID="inputRazonTrabajo" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="1">Razón 1</asp:ListItem>
                                              <asp:ListItem Value="2">Razón 2</asp:ListItem>
                                              <asp:ListItem Value="3">Razón 3</asp:ListItem>
                                              <asp:ListItem Value="4">Razón 4</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                               </div>
                          
                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">8. Problemas(s) causados por trabajar</label>
                                   <div class="mb-3">

                                        <table>
                                           <tr>
                                               <td> <asp:CheckBox ID="problema1" runat="server" />&nbsp N/A &nbsp </td>     
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="problema2" runat="server" />&nbsp Rupturas familiares&nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="problema3" runat="server" />&nbsp Problemáticas psicológicas &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="problema4" runat="server" />&nbsp Descuido de la higiene personal &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="problema5" runat="server" />&nbsp Adquisición de conductas delictivas &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="problema6" runat="server" />&nbsp Riesgo o daño a la salud &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="problema7" runat="server" />&nbsp Descuido de estudios &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="problema8" runat="server" />&nbsp Abandono de la escuela &nbsp </td>
                                           </tr>
                                        </table>
        
                                        <div class="col-md-8">
                                            <label for="otrosProblemas" class="form-label fw-bold mt-2">Otros</label>
                                            <div class="mb-3">
                                                <asp:TextBox ID="otrosProblemas" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                   </div>
                               </div>
                             </div>

                             <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">9. ¿Le entrega el dinero que gana a alguien más?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="entregar1" GroupName="EntregarGanancia" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="entregar2" GroupName="EntregarGanancia" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                   <label for="inputPersona" class="form-label fw-bold">10. Persona a la que se le entrega la mayor parte del dinero que se gana</label>
                                   <div class="mb-3">
                                        <asp:DropDownList ID="inputPersona" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="1">Persona 1</asp:ListItem>
                                              <asp:ListItem Value="2">Persona 2</asp:ListItem>
                                              <asp:ListItem Value="3">Persona 3</asp:ListItem>
                                              <asp:ListItem Value="4">Persona 4</asp:ListItem>
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
                <!-- Fin Niños-->


            </section>
        </form>
    </main>
</asp:Content>
