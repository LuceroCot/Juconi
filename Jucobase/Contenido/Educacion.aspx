<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Educacion.aspx.vb" Inherits="Jucobase.Educacion" %>
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
          <h1>Captura educación de beneficiario</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Datos de educación</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

        <form class="form-card row g-3 form-inline" runat="server">
            <section class="section dashboard">
                    <!-- Customers Card -->
                    <div class="col-xxl-12 col-xl-12 px-12">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                              Registro reporte de educación de beneficiario</h5>

                    
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
                                     <label class="form-label fw-bold">1. ¿Sabe leer?</label>
                                     <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="leer1" GroupName="SabeLeer" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="leer2" GroupName="SabeLeer" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                     </div>
                                </div>
                                <div class="col-md-4 me-3 ms-1">
                                     <label class="form-label fw-bold">2. ¿Sabe escribir?</label>
                                     <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="escribirl1" GroupName="SabeEscribir" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="escribirl2" GroupName="SabeEscribir" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                     </div>
                                </div>
                           </div>

                           <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                     <label class="form-label fw-bold">3. ¿Sabe operaciones básicas?</label>
                                     <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="operaciones1" GroupName="SabeOperaciones" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="operaciones2" GroupName="SabeOperaciones" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                     </div>
                                </div>
                           </div>

                           <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputEscolar" class="form-label fw-bold">4. Último año escolar completado</label>
                                    <div class="mb-3">
                                            <asp:DropDownList ID="inputEscolar" AutoPostBack="false"
                                                    CssClass="form-select" runat="server">
                                                    <asp:ListItem Selected="True">Año escolar</asp:ListItem>
                                                    <asp:ListItem Value="1Pre">1° Preescolar</asp:ListItem>
                                                    <asp:ListItem Value="2Pre">2° Preescolar</asp:ListItem>
                                                    <asp:ListItem Value="3Pre">3° Preescolar</asp:ListItem>
                                                    <asp:ListItem Value="1Prim">1° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="2Prim">2° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="3Prim">3° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="4Prim">4° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="5Prim">5° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="6Prim">6° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="1Sec">1° Secundaria</asp:ListItem>
                                                    <asp:ListItem Value="2Sec">2° Secundaria</asp:ListItem>
                                                    <asp:ListItem Value="3Sec">3° Secundaria</asp:ListItem>
                                                    <asp:ListItem Value="1Prep">1° Preparatoria</asp:ListItem>
                                                    <asp:ListItem Value="2Prep">2° Preparatoria</asp:ListItem>
                                                    <asp:ListItem Value="3Prep">3° Preparatoria</asp:ListItem>
                                                    <asp:ListItem Value="Tec">Técnica</asp:ListItem>
                                                    <asp:ListItem Value="Lic">Licenciatura</asp:ListItem>
                                                    <asp:ListItem Value="N">Ninguno</asp:ListItem>
                                                    <asp:ListItem Value="NA">Ninguno, pero es alfabeta</asp:ListItem>
                                            </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">4.1. ¿Rezago escolar?</label>
                                     <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="rezago1" GroupName="RezagoEscolar" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="rezago2" GroupName="RezagoEscolar" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                               </div>
                           </div>

                           <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">5. ¿Asiste a una escuela o institución educativa?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="escuela1" GroupName="AsistirEscuela" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="escuela2" GroupName="AsistirEscuela" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                 </div>
                                    
                                 <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">5.1 En caso de no asistir, ¿cuál es la razón?</label>
                                    <div class="mb-3">
                                         <asp:DropDownList ID="razonRegazo" AutoPostBack="false"
                                                    CssClass="form-select" runat="server">
                                           <asp:ListItem Value="1r" Selected="True">Razón 1</asp:ListItem>
                                           <asp:ListItem Value="2r">Razón 2</asp:ListItem>
                                           <asp:ListItem Value="3r">Razón 3</asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                 </div>
                            </div>

                           <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputEscuela" class="form-label fw-bold">6. Nombre de escuela o institución educativa a la que asiste</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="inputEscuela" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputFrecuencia" class="form-label fw-bold">6.1 Clave del centro de trabajo (CCT) de la escuela o institución educativa</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="inputClaveE" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>
                           </div>

                           <div class="row mt-2 mx-3">
                                 <div class="col-md-4 me-3 ms-1">
                                    <label for="inputEscuela" class="form-label fw-bold">7. De los 5 días hábiles a la semana asiste</label>
                                    <div class="mb-3">
                                        <asp:DropDownList ID="inputAsistencia" AutoPostBack="false" CssClass="form-select" runat="server">
                                            <asp:ListItem Selected="True" Value="1">0/5</asp:ListItem>
                                            <asp:ListItem Value="2">1/5</asp:ListItem>
                                            <asp:ListItem Value="3">2/5</asp:ListItem>
                                            <asp:ListItem Value="4">3/5</asp:ListItem>
                                            <asp:ListItem Value="5">4/5</asp:ListItem>
                                            <asp:ListItem Value="6">5/5</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                           </div>

                           <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputPromedio" class="form-label fw-bold">8. Último promedio obtenido</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="inputPromedio" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>
                                
                               <div class="col-md-4 me-3 ms-1">
                                   <label for="inputPromedio" class="form-label fw-bold">8.1. El promedio es</label>
                                   <div class="mb-3">
                                        <asp:DropDownList ID="inputTipo" AutoPostBack="false" CssClass="form-select" runat="server">
                                            <asp:ListItem Selected="True">Tipo de promedio</asp:ListItem>
                                            <asp:ListItem Value="1">Semestral</asp:ListItem>
                                            <asp:ListItem Value="2">Anual</asp:ListItem>
                                        </asp:DropDownList>
                                   </div>
                                </div>
                            </div>

                           <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputPromedio" class="form-label fw-bold">8.2 Última boleta de calificación o kardex está disponible</label>
                                    <div class="mb-3">
                                        <asp:FileUpload  ID="documentoBoleta" runat="server" CssClass="form-control"/>
                                    </div>
                                </div>
                           </div>

                           <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                   <label for="inputPromedio" class="form-label fw-bold">9. ¿Cuenta con algun tipo de beca por/para sus estudios?</label> 
                                   <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="beca1" GroupName="TenerBeca" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="beca2" GroupName="TenerBeca" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>
                                </div>

                                
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="inputPromedio" class="form-label fw-bold">9.1. ¿Cómo se llama la beca?</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="nombreBeca" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>
                           </div>

                           <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                   <label for="inputPromedio" class="form-label fw-bold">10. Además de asistir a la escuela(o no), ¿aprende algún oficio o habilidad útil para tener una vida sostenible?</label>
                                   <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="aprender1" GroupName="AprenderOficio" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="aprender2" GroupName="AprenderOficio" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                   </div>
                                </div>
                            </div>

                           <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">11.  Observaciones</label>
                                    <div class="mb-3">
                                        <textarea id="inputObservaciones" class="form-control" rows="8" cols="15"></textarea>
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

            <!-- Fin Población en general-->
            </section>
        </form>
    </main>
</asp:Content>
