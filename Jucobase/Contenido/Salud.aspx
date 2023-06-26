<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Salud.aspx.vb" Inherits="Jucobase.Salud" %>
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
          <h1>Captura salud de beneficiario</h1>
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
                              Registro reporte de salud de beneficiario</h5>

                    
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
                                    <label class="form-label fw-bold">Llenado del formato</label>
                                    <div class="mb-3">
                                        <asp:DropDownList ID="inputLlenadoFormato" AutoPostBack="false"
                                                        CssClass="form-select" runat="server">
                                            <asp:ListItem Selected="True" Value="1">Terapeuta familiar</asp:ListItem>
                                            <asp:ListItem Value="2">Médico JUCONI</asp:ListItem>
                                            <asp:ListItem Value="3">Otro</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputOtroFormato" class="form-label fw-bold">Otro</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="inputOtroFormato" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">¿Es beneficiario de un sistema de salud?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="beneficiario1" GroupName="BeneficiarioSalud" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="beneficiario2" GroupName="BeneficiarioSalud" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputSistema" class="form-label fw-bold">¿De qué tipo?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="tipoSistema1" GroupName="SistemaSalud" runat="server" />
                                             <span class="form-check-label">Público</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="tipoSistema2" GroupName="SistemaSalud" runat="server" />
                                             <span class="form-check-label">Privado</span>
                                        </label>
                                    </div>
                                </div>
                            </div>                          
                        </div>
                      </div>
                 </div>
                <!-- End Customers Card -->

                <!-- Examen físico -->
                 <div class="col-xxl-4 col-xl-12 px-4">
                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                           <h5 class="card-title fw-bold ps-4">&nbsp
                               <i class="fa-sharp fa-solid fa-stethoscope fa-lg"></i>
                               &nbsp Examen físico</h5>

                            <div class="row mt-3 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputTipo" class="form-label fw-bold">1. Tipo de sangre</label>
                                    <div class="mb-3">
                                        <asp:DropDownList ID="inputTipo" AutoPostBack="false"
                                                    CssClass="form-select" runat="server">
                                            <asp:ListItem Selected="True">Tipo de sangre</asp:ListItem>
                                            <asp:ListItem Value="1">A+</asp:ListItem>
                                            <asp:ListItem Value="2">A-</asp:ListItem>
                                            <asp:ListItem Value="3">B+</asp:ListItem>
                                            <asp:ListItem Value="4">B-</asp:ListItem>
                                            <asp:ListItem Value="5">AB+</asp:ListItem>
                                            <asp:ListItem Value="6">AB-</asp:ListItem>
                                            <asp:ListItem Value="7">O+</asp:ListItem>
                                            <asp:ListItem Value="8">O-</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                               
                                <div class="col-md-4 me-3 ms-1">
                                    <label></label>
                                    <div class="col-sm-12 mt-2">
                                        <div class="mb-3">
                                            <asp:FileUpload  ID="archivoTipoDeSangre" runat="server" CssClass="form-control"/>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputRes" class="form-label fw-bold">2. Estatura (cm)</label>
                                    <div class="mb-3"> 
                                        <asp:TextBox ID="inputEstatura" runat="server" CssClass="form-control" ></asp:TextBox>   
                                    </div>

                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputPeso" class="form-label fw-bold">3. Peso (kg)</label>
                                    <div class="mb-3">
                                       <asp:TextBox ID="inputPeso" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputImc" class="form-label fw-bold">4. Índice de masa corporal (IMC)</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="inputImc" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                               <div class="col-md-4 me-3 ms-1">
                                    <label for="inputPulso" class="form-label fw-bold">5. Frecuencia cardica (lpm)</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="inputPulso" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputPresion" class="form-label fw-bold">6. Presión arterial (s/d)</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="inputPresion" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputTemperatura" class="form-label fw-bold">7. Temperatura</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="inputTemperatura" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                   <label for="inputOximetria" class="form-label fw-bold">8. Oximetría (% oxígeno)</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="inputOximetria" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputGlicemia" class="form-label fw-bold">9. Glicemia(ml/dl)</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="inputGlicemia" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>
                     </div>
                </div>
                <!------------------->

                <!-- Vacunación -->
                 <div class="col-xxl-4 col-xl-12 px-4">
                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                           <h5 class="card-title fw-bold ps-4">&nbsp
                               <i class="fas fa-syringe fa-lg"></i>
                                &nbsp Vacunación </h5>

                            <div class="row mt-3 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">10. ¿Ha recibido vacunas?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="recibido1" GroupName="RecibirVacunas" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="recibido2" GroupName="RecibirVacunas" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="recibido3" GroupName="RecibirVacunas" runat="server" />
                                             <span class="form-check-label">No sabe</span>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                               <div class="col-md-9 me-3 ms-1">
                                   <label class="form-label fw-bold">10.1. Vacunas recibidas</label>
                                   <div class="mb-3">
                                       <table>
                                           <tr>
                                               <td> <asp:CheckBox ID="pentavalente1" runat="server" />&nbsp Pentavalente acelular (1ra dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="pentavalente2" runat="server" />&nbsp Pentavalente acelular (2da dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="pentavalente3" runat="server" />&nbsp Pentavalente acelular (3ra dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="pentavalente4" runat="server" />&nbsp Pentavalente acelular (4ta dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="influenza1" runat="server" />&nbsp Influenza (1ra dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="influenza2" runat="server" />&nbsp Influenza (2da dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="hepatitis1" runat="server" />&nbsp Hepatitis B (1ra dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="hepatitis2" runat="server" />&nbsp Hepatitis B (2da dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="hepatitis3" runat="server" />&nbsp Hepatitis B (3ra dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="rotavirus1" runat="server" />&nbsp Rotavirus (1ra dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="rotavirus2" runat="server" />&nbsp Rotavirus (2da dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="rotavirus3" runat="server" />&nbsp Rotavirus (3ra dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="srp1" runat="server" />&nbsp SRP (1ra dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="srp2" runat="server" />&nbsp SRP (2da dosis) &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="bcg" runat="server" />&nbsp BCG &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="dpt" runat="server" />&nbsp DPT &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="covid" runat="server" />&nbsp COVID-19 &nbsp </td>
                                           </tr>
                                       </table>
                                    </div>
                               </div>
                            </div>
                        
                            <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">11. ¿Esquema de vacunación completo en relación con la edad?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="completo1" GroupName="EsquemaCompleto" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="completo2" GroupName="EsquemaCompleto" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">12. ¿Presentó reacciones adversas a vacunas?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="reacciones1" GroupName="ReaccionesAdversas" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="reacciones2" GroupName="ReaccionesAdversas" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>                     
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputDescripcionReacciones" class="form-label fw-bold">12.1 Describa las reacciones </label>
                                    <div class="mb-3">
                                        <textarea id="inputDescripcionReacciones" class="form-control" rows="5" cols="10"></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                 <div class="col-md-4 me-3 ms-1">
                                   <label for="inputTipo" class="form-label fw-bold">13. ¿Tiene cartilla de vacunación?</label>
                                   <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="cartilla1" GroupName="CartillaVacunacion" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="cartilla2" GroupName="CartillaVacunacion" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                   </div>  
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label></label>
                                    <div class="col-sm-12 mt-2">
                                        <div class="mb-3">
                                            <asp:FileUpload  ID="documentoCartilla" runat="server" CssClass="form-control"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
                </div>
                <!---------------->

                <!-- Nutrición -->
                <div class="col-xxl-4 col-xl-12 px-4">
                     <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                              <i class="fa-solid fa-utensils fa-lg"></i>
                              &nbsp Nutrición</h5>

                            <div class="row mt-3 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">14. Estado nutricional</label>
                                   <div class="mb-3">
                                        <asp:DropDownList ID="inputEstado" AutoPostBack="false"
                                                    CssClass="form-select" runat="server">
                                            <asp:ListItem Selected="True">Estado</asp:ListItem>
                                            <asp:ListItem Value="e1">Saludable</asp:ListItem>
                                            <asp:ListItem Value="e2">Desnutrición en 1er grado</asp:ListItem>
                                            <asp:ListItem Value="e3">Desnutrición en 2do grado</asp:ListItem>
                                            <asp:ListItem Value="e4">Sobrepeso (1er grado)</asp:ListItem>
                                            <asp:ListItem Value="e5">Obesidad (2do grado)</asp:ListItem>
                                            <asp:ListItem Value="e6">Obesidad mórbida</asp:ListItem>
                                        </asp:DropDownList>
                                   </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">15. Número de comidas diarias en promedio</label>
                                   <div class="mb-3">                 
                                        <asp:TextBox ID="inputComidas" runat="server" CssClass="form-control" ></asp:TextBox>
                                   </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">16. Grupo alimenticio consumido en mayor medida</label>
                                   <div class="mb-3">
                                       <asp:DropDownList ID="inputMayor" AutoPostBack="false"
                                                    CssClass="form-select" runat="server">
                                           <asp:ListItem Selected="True">Grupo</asp:ListItem>
                                           <asp:ListItem Value="g1">Leches y derivados</asp:ListItem>
                                           <asp:ListItem Value="g2">Acompañamiento breve</asp:ListItem>
                                           <asp:ListItem Value="g3">Carnes, pescados y huevos</asp:ListItem>
                                           <asp:ListItem Value="g4">Patatas, legumbres y frutos secos</asp:ListItem>
                                           <asp:ListItem Value="g5">Frutas</asp:ListItem>
                                           <asp:ListItem Value="g6">Cereales, azúcar y dulces</asp:ListItem>
                                           <asp:ListItem Value="g7">Grasas, aceites y mantequilla</asp:ListItem>
                                       </asp:DropDownList>
                                   </div>
                               </div>

                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">17. Grupo alimenticio consumido en menor medida</label>
                                    <div class="mb-3">
                                        <asp:DropDownList ID="inputMenor" AutoPostBack="false"
                                                    CssClass="form-select" runat="server">
                                           <asp:ListItem Selected="True">Grupo</asp:ListItem>
                                           <asp:ListItem Value="g1">Leches y derivados</asp:ListItem>
                                           <asp:ListItem Value="g2">Acompañamiento breve</asp:ListItem>
                                           <asp:ListItem Value="g3">Carnes, pescados y huevos</asp:ListItem>
                                           <asp:ListItem Value="g4">Patatas, legumbres y frutos secos</asp:ListItem>
                                           <asp:ListItem Value="g5">Frutas</asp:ListItem>
                                           <asp:ListItem Value="g6">Cereales, azúcar y dulces</asp:ListItem>
                                           <asp:ListItem Value="g7">Grasas, aceites y mantequilla</asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">18. ¿Recibe suplementos?</label>
                                   <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="suplementos1" GroupName="RecibeSuplementos" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="suplementos2" GroupName="RecibeSuplementos" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                               </div>

                               <div class="col-md-5 me-3 ms-1">
                                    <label class="form-label fw-bold">18.1. ¿Cuáles suplementos?</label>
                                    <div class="mb-3">
                                       <table>
                                           <tr>
                                               <td> <asp:CheckBox ID="suplemento1" runat="server" />&nbsp Proteína &nbsp </td>
                                               <td> <asp:CheckBox ID="suplemento2" runat="server" />&nbsp Carbohidratos &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="suplemento3" runat="server" />&nbsp Vitaminas &nbsp </td>
                                               <td> <asp:CheckBox ID="suplemento4" runat="server" />&nbsp Aminoácidos &nbsp </td>

                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="suplemento5" runat="server" />&nbsp Creatina &nbsp </td>
                                               <td> <asp:CheckBox ID="suplemento6" runat="server" />&nbsp Complejo B &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td><asp:CheckBox ID="suplemento7" runat="server" />&nbsp Arginina &nbsp </td>
                                               <td><asp:CheckBox ID="suplemento8" runat="server" />&nbsp Cartílago de tiburón &nbsp </td>
                                           </tr>
                                       </table>
                                    </div>

                                    <div class="col-md-6">
                                       <label for="inputOtroSuplemento" class="form-label fw-bold mt-2">Otros</label>
                                       <div class="mb-3">
                                           <asp:TextBox ID="inputOtroSuplemento" runat="server" CssClass="form-control" ></asp:TextBox>   
                                        </div>
                                    </div>
                               </div>
                            </div>
                        </div>
                     </div>
                </div>


                <!-- Enfermedades-->
                <div class="col-xxl-4 col-xl-12 px-4">
                      <div class="card info-card customers-card">
                        <div class="card-body">
                         <br />
                          <h5 class="card-title fw-bold ps-4">&nbsp
                             <i class="fa-sharp fa-solid fa-bed-pulse fa-lg"></i>
                              &nbsp Enfermedades y procedimientos médicos</h5>

                             <div class="row mt-3 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">19. Antecedentes familiares crónicos</label>
                                   <div class="mb-3">
                                       <table>
                                           <tr>
                                               <td> <asp:CheckBox ID="antecedentes1" runat="server" />&nbsp Diabetes &nbsp </td>
                                               <td> <asp:CheckBox ID="antecedentes2" runat="server" />&nbsp ACV &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="antecedentes3" runat="server" />&nbsp Asma &nbsp </td>
                                               <td> <asp:CheckBox ID="antecedentes4" runat="server" />&nbsp Cardiopatía &nbsp </td>

                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="antecedentes5" runat="server" />&nbsp Alergias &nbsp </td>
                                               <td> <asp:CheckBox ID="antecedentes6" runat="server" />&nbsp EPOC &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td><asp:CheckBox ID="antecedentes7" runat="server" />&nbsp Hipertensión &nbsp </td>
                                           </tr>
                                       </table>
                                   </div>

                                   <div class="col-md-8">
                                       <label for="inputOtroAntecedente" class="form-label fw-bold mt-2">Otros</label>
                                       <div class="mb-3">
                                           <asp:TextBox ID="inputOtroAntecedente" runat="server" CssClass="form-control" ></asp:TextBox>   
                                      </div>
                                   </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">20. Enfermedades crónicas actuales</label>
                                   <div class="mb-3">
                                       <table>
                                           <tr>
                                               <td> <asp:CheckBox ID="actual1" runat="server" />&nbsp Diabetes &nbsp </td>
                                               <td> <asp:CheckBox ID="actual2" runat="server" />&nbsp ACV &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="actual3" runat="server" />&nbsp Asma &nbsp </td>
                                               <td> <asp:CheckBox ID="actual4" runat="server" />&nbsp Cardiopatía &nbsp </td>

                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="actual5" runat="server" />&nbsp Alergias &nbsp </td>
                                               <td> <asp:CheckBox ID="actual6" runat="server" />&nbsp EPOC &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td><asp:CheckBox ID="actual7" runat="server" />&nbsp Hipertensión &nbsp </td>
                                           </tr>
                                       </table>
                                    </div>

                                   <div class="col-md-8">
                                       <label for="inputOtraEnfermedad" class="form-label fw-bold mt-2">Otros</label>
                                       <div class="mb-3">
                                           <asp:TextBox ID="inputOtraEnfermedad" runat="server" CssClass="form-control" ></asp:TextBox>   
                                      </div>
                                   </div>
                               </div>
                            </div>

                            <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label for="inputAlergias" class="form-label fw-bold">20.1  Alergias (especifique)</label>
                                   <div class="mb-3 ">
                                      <textarea id="inputAlergias" class="form-control" rows="4" cols="15"></textarea>
                                   </div>
                               </div>
                            </div>

                            <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">21. ¿Requiere medicación para enfermedad crónica?</label>
                                   <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="medicacion1" GroupName="RequiereMedicacion" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="medicacion2" GroupName="RequiereMedicacion" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                   </div>
                               </div>

                               <div class="col-md-4 me-3 ms-1">
                                    <label for="medicacionEnfermedad" class="form-label fw-bold">21.1 ¿Cuál o cuáles son las medicaciones?</label>
                                    <div class="mb-3 ">
                                        <textarea id="medicacionEnfermedad" class="form-control" rows="4" cols="15"></textarea>
                                    </div>
                               </div>
                            </div>

                            <div class="row mt-2 mx-3">
                               <div class="col-md-8 me-3 ms-1">
                                   <label class="form-label fw-bold">22. Enfermedades infecciosas durante los últimos 6 meses</label>
                                   <div class="mb-3 ">
                                       <table>
                                           <tr>
                                               <td> <asp:CheckBox ID="infeccioso1" runat="server" />&nbsp Salmonela &nbsp &nbsp </td>
                                               <td> <asp:CheckBox ID="infeccioso2" runat="server" />&nbsp Bronquitis &nbsp &nbsp </td>
                                               <td> <asp:CheckBox ID="infeccioso3" runat="server" /> &nbsp Neumonía &nbsp &nbsp </td>                                       
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="infeccioso4" runat="server" />&nbsp Vómito &nbsp &nbsp </td>
                                               <td> <asp:CheckBox ID="infeccioso5" runat="server" />&nbsp Diarrea &nbsp &nbsp </td>
                                               <td> <asp:CheckBox ID="infeccioso6" runat="server" />&nbsp Laringuitis &nbsp &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="infeccioso7" runat="server" />&nbsp Faringuitis &nbsp &nbsp </td>
                                               <td> <asp:CheckBox ID="infeccioso8" runat="server" />&nbsp Tuberculosis &nbsp &nbsp </td>
                                               <td> <asp:CheckBox ID="infeccioso9" runat="server" />&nbsp Salmonelosis &nbsp &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="infeccioso10" runat="server" />&nbsp Resfriado común &nbsp &nbsp </td>
                                               <td> <asp:CheckBox ID="infeccioso11" runat="server" />&nbsp Gripe &nbsp &nbsp </td>
                                               <td> <asp:CheckBox ID="infeccioso12" runat="server" />&nbsp Tifoidea &nbsp &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="infeccioso13" runat="server" />&nbsp Artritis &nbsp &nbsp </td>
                                               <td> <asp:CheckBox ID="infeccioso14" runat="server" />&nbsp Gastritis &nbsp &nbsp </td>   
                                               <td> <asp:CheckBox ID="infeccioso15" runat="server" />&nbsp Influenza &nbsp &nbsp </td>                   
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="infeccioso16" runat="server" />&nbsp Taquicardia &nbsp &nbsp </td>
                                               <td> <asp:CheckBox ID="infeccioso17" runat="server" />&nbsp Tos &nbsp &nbsp </td>
                                               <td> <asp:CheckBox ID="infeccioso18" runat="server" />&nbsp Fiebre &nbsp &nbsp </td>
                                           </tr>
                                       </table>
                                   </div>

                                   <div class="col-md-4">
                                       <label for="otrasEnfermedadesInfecciosas" class="form-label fw-bold mt-2">Otros</label>
                                       <div class="mb-3">
                                           <asp:TextBox ID="otrasEnfermedadesInfecciosas" runat="server" CssClass="form-control" ></asp:TextBox>   
                                       </div>
                                   </div>
                               </div>
                            </div>

                            <div class="row mt-2 mx-3">
                               <div class="col-md-6 me-3 ms-1">
                                   <label class="form-label fw-bold">23. En los últimos 6 meses, ¿fue llevado al médico en caso de enfermedad/accidente?</label>
                                   <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="llevar1" GroupName="LLevadoMedico" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="llevar2" GroupName="LLevadoMedico" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                   </div>
                               </div>

                               <div class="col-md-8 me-3 ms-1">
                                   <label class="form-label fw-bold">23.1 Razón por la cual no recibió atención médica</label>
                                   <div class="mb-3">
                                       <table>
                                           <tr>
                                               <td> <asp:CheckBox ID="razon1" runat="server" />&nbsp La clínica estaba muy lejos </td>           
                                           </tr>
                                           <tr>                          
                                               <td> <asp:CheckBox ID="razon2" runat="server" />&nbsp No tenía tiempo para ir </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="razon3" runat="server" />&nbsp Tenía que trabajar </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="razon4" runat="server" />&nbsp No tuvo dinero para ir al médico </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="razon5" runat="server" />&nbsp Estaba cuidando de otra persona </td>
                                           </tr>
                                       </table>
                                    </div>

                                    <div class="col-md-4">
                                        <label for="otrasRazonesNoAtencionMedica" class="form-label fw-bold mt-2">Otros</label>
                                        <div class="mb-3">
                                           <asp:TextBox ID="otrasRazonesNoAtencionMedica" runat="server" CssClass="form-control" ></asp:TextBox>   
                                        </div>
                                    </div>
                               </div>           
                            </div>
 
                            <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                  <label class="form-label fw-bold">24. En los últimos 6 meses, ¿fue llevado a un centro de salud para atención preventiva?</label>
                                  <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="atencion1" GroupName="LLevadoPreventiva" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="atencion2" GroupName="LLevadoPreventiva" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                  </div>
                               </div>

                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">24.1 ¿A que centro de salud fue llevado?</label>
                                   <div class="mb-3">
                                       <asp:DropDownList ID="inputCentroDeSalud" AutoPostBack="false"
                                                    CssClass="form-select" runat="server">
                                           <asp:ListItem Selected="True">Opción</asp:ListItem>
                                           <asp:ListItem Value="s1">IMSS</asp:ListItem>
                                           <asp:ListItem Value="s2">ISSSTE</asp:ListItem>
                                           <asp:ListItem Value="s3">ISSSTEP</asp:ListItem>
                                           <asp:ListItem Value="s4">Médico de farmacia</asp:ListItem>
                                           <asp:ListItem Value="s5">Centro de Salud</asp:ListItem>
                                           <asp:ListItem Value="s6">Médico JUCONI</asp:ListItem>
                                           <asp:ListItem Value="s7">Médico particular</asp:ListItem>
                                       </asp:DropDownList>
                                   </div>
                               </div>
                            </div>
 
                            <div class="row mt-2 mx-3">
                                <div class="col-md-8 me-3 ms-1">
                                   <label class="form-label fw-bold">24.2 ¿Que tipo de atención preventiva recibió?</label>
                                   <div class="mb-3">
                                        <table>
                                           <tr>
                                               <td> <asp:CheckBox ID="preventiva1" runat="server" />&nbsp Vacunación &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="preventiva2" runat="server" />&nbsp Revisión dental &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="preventiva3" runat="server" />&nbsp Revisión cardiaca &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="preventiva4" runat="server" />&nbsp Revisión pre-parto &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="preventiva5" runat="server" />&nbsp Revisión de estado general &nbsp </td>
                                       </table>
                                   </div>

                                   <div class="col-md-4">
                                        <label for="otrasPreventivas" class="form-label fw-bold mt-2">Otros</label>
                                        <div class="mb-3">
                                            <asp:TextBox ID="otrasPreventivas" runat="server" CssClass="form-control" ></asp:TextBox>
                                       </div>
                                   </div>
                               </div>
                            </div>
                       
                            <div class="row mt-2 mx-3">
                                <div class="col-md-8 me-3 ms-1">
                                   <label class="form-label fw-bold">25.  Accidentes en el hogar en los últimos 6 meses</label>
                                    <div class="mb-3">
                                        <table>
                                           <tr>
                                               <td> <asp:CheckBox ID="accidente1" runat="server" />&nbsp N/A &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="accidente2" runat="server" />&nbsp Caída &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="accidente3" runat="server" />&nbsp Quemadura &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="accidente4" runat="server" />&nbsp Cortadura &nbsp </td>                              
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="accidente5" runat="server" />&nbsp Consumo accidental de sustancia &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="accidente6" runat="server" />&nbsp Lesiones craneoencefálicas &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="accidente7" runat="server" />&nbsp Síndrome de muerte súbita &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="accidente8" runat="server" />&nbsp Caídas y golpes con fracturas, luxaciones o esginces &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="acidente9" runat="server" />&nbsp Envenenamiento &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="accidente10" runat="server" />&nbsp Asfixia &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="accidente11" runat="server" />&nbsp Ahogamiento &nbsp </td>
                                           </tr>
                                           <tr>
                                               <td> <asp:CheckBox ID="accidente12" runat="server" />&nbsp Atropellamiento &nbsp </td>
                                           </tr>
                                       </table>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="otrosAccidentes" class="form-label fw-bold mt-2">Otros</label>
                                        <div class="mb-3">
                                            <asp:TextBox ID="otrosAccidentes" runat="server" CssClass="form-control" ></asp:TextBox>
                                       </div>
                                    </div>
                                </div>
                            </div>
                
                            <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label for="inputObservacionesGenerales" class="form-label fw-bold">26.  Observaciones</label>
                                   <div class="mb-3 ">
                                      <textarea id="inputObservacionesGenerales" class="form-control" rows="4" cols="15"></textarea>
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
                <!----------------->

            </section>
        </form>
    </main>
</asp:Content>
