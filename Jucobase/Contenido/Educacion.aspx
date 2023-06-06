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
                              Registro reporte de adicciones de beneficiario</h5>

                    
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
                                    <asp:TextBox ID="inputAdultoResponsable" runat="server" CssClass="form-control" ></asp:TextBox>

                                    <div class="row mt-3" id="tutoria" style="display:;">
                                       <div class="col-sm-9">
                                           <label for="tutoriaLegal" class="form-label fw-bold">¿Tiene la tutoría legal?</label>
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
                    <div class="col-xxl-4 col-xl-12 px-4">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                           <h5 class="card-title fw-bold ps-4">&nbsp
                                <i class="fa-solid fa-children fa-lg"></i>
                                &nbsp Población en general &nbsp
                               <i class="fa-solid fa-people-group fa-lg"></i>
                           </h5>

                            <div class="row mt-3">
                                    <div class="col-sm-6 ps-5">
                                        <label class="form-label fw-bold">1. ¿Sabe leer?</label>
                                         <br />

                                        <div class="form-check form-check-inline mt-2">
                                            <asp:RadioButton ID="leer1" Checked="false" GroupName="SabeLeer" runat="server" />&nbsp Sí
                                        </div>
                                        <div class="form-check form-check-inline mt-2">
                                            <asp:RadioButton ID="leer2" GroupName="SabeLeer" runat="server" />&nbsp No
                                        </div>
                                    </div>
                                   
                                    <div class="col-sm-5 ps-5">
                                        <label class="form-label fw-bold">2. ¿Sabe escribir?</label>
                                        <br />

                                        <div class="form-check form-check-inline mt-2">
                                            <asp:RadioButton ID="escribirl1" Checked="false" GroupName="SabeEscribir" runat="server" />&nbsp Sí
                                        </div>
                                        <div class="form-check form-check-inline mt-2">
                                            <asp:RadioButton ID="escribir2" GroupName="SabeEscribir" runat="server" />&nbsp No
                                        </div>
                                   </div>
                             </div>

                            <div class="row mt-3">
                                    <div class="col-sm-6 ps-5">
                                        <label class="form-label fw-bold">3. ¿Sabe operaciones básicas?</label>
                                         <br />

                                        <div class="form-check form-check-inline mt-2">
                                            <asp:RadioButton ID="operaciones1" Checked="false" GroupName="SabeOperaciones" runat="server" />&nbsp Sí
                                        </div>
                                        <div class="form-check form-check-inline mt-2">
                                            <asp:RadioButton ID="operaciones2" GroupName="SabeOperaciones" runat="server" />&nbsp No
                                        </div>
                                    </div>

                                   
                             </div>

                            <div class="row mt-3">
                                <div class="col-sm-6 ps-5">
                                        <label for="inputRol" class="form-label fw-bold">4. Último año escolar completado</label>

                                        <div class="col-sm-7">

                                            <asp:DropDownList ID="inputEscolar" AutoPostBack="false"
                                                    CssClass="form-select" runat="server">
                                                    <asp:ListItem Selected="True">Año escolar</asp:ListItem>
                                                    <asp:ListItem Value="1P">1° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="2P">2° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="3P">3° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="4P">4° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="5P">5° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="6P">6° Primaria</asp:ListItem>
                                                    <asp:ListItem Value="1S">1° Secundaria</asp:ListItem>
                                                    <asp:ListItem Value="2S">2° Secundaria</asp:ListItem>
                                                    <asp:ListItem Value="3S">3° Secundaria</asp:ListItem>
                                                    <asp:ListItem Value="1Pr">1° Preparatoria</asp:ListItem>
                                                    <asp:ListItem Value="2Pr">2° Preparatoria</asp:ListItem>
                                                    <asp:ListItem Value="3Pr">3° Preparatoria</asp:ListItem>
                                                    <asp:ListItem Value="Tec">Técnica</asp:ListItem>
                                                    <asp:ListItem Value="Lic">Licenciatura</asp:ListItem>
                                                    <asp:ListItem Value="N">Ninguno</asp:ListItem>
                                                    <asp:ListItem Value="NA">Ninguno, pero es alfabeta</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                     <br />
                                </div>

                                <div class="col-sm-5 ps-5">
                                    <label class="form-label fw-bold">4.1. ¿Rezago escolar?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="rezago1" Checked="false" GroupName="RezagoEscolar" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="rezago2" GroupName="RezagoEscolar" runat="server" />&nbsp No
                                    </div>

                                </div>

                            </div>

                            <div class="row mt-3">
                                    <div class="col-sm-6 ps-5">
                                        <label class="form-label fw-bold">5. ¿Asiste a una escuela o institución educativa?</label>
                                         <br />

                                        <div class="form-check form-check-inline mt-2">
                                            <asp:RadioButton ID="escuela1" Checked="false" GroupName="AsistirEscuela" runat="server" />&nbsp Sí
                                        </div>
                                        <div class="form-check form-check-inline mt-2">
                                            <asp:RadioButton ID="escuela2" GroupName="AsistirEscuela" runat="server" />&nbsp No
                                        </div>

                                    </div>
                                    
                                    <div class="col-sm-5 ps-5">
                                        <label class="form-label fw-bold">5.1 En caso de no asistir, ¿cuál es la razón?</label>

                                        <div class="col-sm-8">
                                            <asp:TextBox ID="razonRegazo" runat="server" CssClass="form-control" ></asp:TextBox>
                                        </div>
                                   </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-sm-6 ps-5">
                                    <label for="inputEscuela" class="form-label fw-bold">6. Nombre de escuela o institución educativa a la que asiste</label>
                                        
                                    <div class="col-sm-7">
                                        <asp:TextBox ID="inputEscuela" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                
                                <div class="col-sm-5 ps-5">
                                    <label for="inputFrecuencia" class="form-label fw-bold">6.1 Clave del centro de trabajo (CCT) de la escuela o institución educativa</label>
                                    <br />
                                    
                                    <div class="col-sm-5">
                                        <asp:TextBox ID="inputClaveE" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-sm-6 ps-5">
                                    <label for="inputEscuela" class="form-label fw-bold">7. De los 5 días hábiles a la semana asiste</label>
                                        
                                    <div class="col-sm-7">

                                        <asp:DropDownList ID="inputAsistencia" AutoPostBack="false"
                                                    CssClass="form-select" runat="server">
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

                            <div class="row mt-3">
                                <div class="col-sm-6 ps-5">
                                   <label for="inputPromedio" class="form-label fw-bold">8. Último promedio obtenido</label>
                                        
                                    <div class="col-sm-5">
                                        <asp:TextBox ID="inputPromedio" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                
                                <div class="col-sm-5 ps-5">

                                    <label for="inputPromedio" class="form-label fw-bold">8.1. El promedio es</label>
                                        
                                    <div class="col-sm-7">
                                        <asp:DropDownList ID="inputTipo" AutoPostBack="false"
                                                    CssClass="form-select" runat="server">
                                            <asp:ListItem Selected="True">Tipo de promedio</asp:ListItem>
                                            <asp:ListItem Value="1">Semestral</asp:ListItem>
                                            <asp:ListItem Value="2">Anual</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-sm-6 ps-5">
                                    <label for="inputPromedio" class="form-label fw-bold">9. Última boleta de calificación o kardex está disponible</label>
                                    <div class="col-sm-7 mt-2">
                                        <asp:FileUpload  ID="documentoBoleta" runat="server" CssClass="form-control"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-sm-6 ps-5">
                                   <label for="inputPromedio" class="form-label fw-bold">10. ¿Cuenta con algun tipo de beca por/para sus estudios?</label> 
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="beca1" Checked="false" GroupName="TenerBeca" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="beca2" GroupName="TenerBeca" runat="server" />&nbsp No
                                    </div>
                                </div>

                                
                                <div class="col-sm-5 ps-5">
                                    <label for="inputPromedio" class="form-label fw-bold">10.1. ¿Cómo se llama la beca?</label>
                                        
                                    <div class="col-sm-7">
                                        <asp:TextBox ID="nombreBeca" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-sm-6 ps-5">
                                   <label for="inputPromedio" class="form-label fw-bold">11. Además de asistir a la escuela(o no), ¿aprende algún oficio o habilidad útil para tener una vida sostenible?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="aprender1" Checked="false" GroupName="AprenderOficio" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="aprender2" GroupName="AprenderOficio" runat="server" />&nbsp No
                                    </div>
                                </div>
                            </div>

                            
                            <div class="row mt-3">
                                <div class="col-sm-6 ps-5">
                                    <label class="form-label fw-bold">12.  Observaciones</label>
                                    <br />

                                    <div class="col-sm-10">
                                        <textarea class="form-control" rows="8" cols="15"></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col ps-5 d-inline-block">
                                    <button type="submit" class="btn btn-primary">Guardar</button>
                                    <button type="submit" class="btn btn-primary ms-1">Regresar </button>
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
