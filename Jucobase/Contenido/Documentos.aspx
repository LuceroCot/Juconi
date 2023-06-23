<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Documentos.aspx.vb" Inherits="Jucobase.Documentos" %>
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
          <h1>Captura documentos de beneficiario</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

        <form class="form-card row g-3 form-inline" runat="server">
            <section class="section dashboard">
                 <!-- Card -->
                 <div class="col-xxl-4 col-xl-12 px-4">
                    <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                              Registro reporte de documentos de beneficiario</h5>

                    
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
                <!-- End Card -->

                <!-- Población en general -->
                 <div class="col-xxl-4 col-xl-12 px-4">
                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                           <h5 class="card-title fw-bold ps-4">&nbsp
                              <i class="fa-solid fa-children fa-lg"></i>
                                &nbsp Población en general &nbsp  
                              <i class="fa-solid fa-people-group fa-lg"></i>
                           </h5>

                           <div class="row mt-3 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">1. ¿Tiene acta de nacimiento?</label>
                                   <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="acta1" GroupName="ActaNacimiento" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="acta2" GroupName="ActaNacimiento" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                   </div>

                                   <div class="col-md-12">
                                        <div class="mb-3">
                                           <asp:FileUpload  ID="inputActa" runat="server" CssClass="form-control"/>
                                        </div>
                                   </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                     <label class="form-label fw-bold">2. ¿Tiene CURP?</label>
                                     <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="curp1" GroupName="DocumentoCurp" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="curp2" GroupName="DocumentoCurp" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                     </div>

                                     <div class="col-md-12">
                                        <div class="mb-3">
                                            <asp:FileUpload  ID="inputCurp" runat="server" CssClass="form-control"/>
                                        </div>
                                     </div>
                                </div>                
                           </div>

                           <div class="row mt-3 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">3. ¿Tiene número de seguridad social?</label>
                                   <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="nss1" GroupName="DocumentoNSS" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="nss2" GroupName="DocumentoNSS" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                   </div>
                                    
                                   <div class="col-md-12">
                                        <div class="mb-3">
                                            <asp:FileUpload  ID="nss" runat="server" CssClass="form-control"/>
                                        </div>
                                   </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">4. ¿Tiene cartilla de salud?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="salud1" GroupName="CartillaSalud" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="salud2" GroupName="CartillaSalud" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <asp:FileUpload  ID="DocumentoCartillaSalud" runat="server" CssClass="form-control"/>
                                        </div>
                                    </div>
                                    
                                </div>
                          </div>

                           <div class="row mt-3 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">5. ¿Tiene CENAPRED?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="cenapred1" GroupName="TieneCenapred" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="cenapred2" GroupName="TieneCenapred" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="cenapred3" GroupName="TieneCenapred" runat="server" />
                                             <span class="form-check-label">N/A</span>
                                        </label>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <asp:FileUpload  ID="DocumentoCenapred" runat="server" CssClass="form-control"/>
                                        </div>
                                    </div>
                                </div>
                           </div>
                        </div>
                     </div>
                 </div>

                <!-- Adultos-->
                <div class="col-xxl-4 col-xl-12 px-4">
                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                            <h5 class="card-title fw-bold ps-4">&nbsp
                                <i class="fa-solid fa-people-group fa-lg"></i>
                                &nbsp Adultos </h5>
                   
                           <div class="row mt-3 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">6. ¿Tiene INE?</label>
                                   <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="ine1" GroupName="DocumentoIne" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="ine2" GroupName="DocumentoIne" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                   </div>

                                   <div class="col-md-12">
                                        <div class="mb-3">
                                            <asp:FileUpload  ID="inputIne" runat="server" CssClass="form-control"/>
                                        </div>
                                   </div>
                                </div>

                                <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">7. ¿Tiene licencia de conducir?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="licencia1" GroupName="LicenciaConducir" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="licencia2" GroupName="LicenciaConducir" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <asp:FileUpload  ID="inputLicencia" runat="server" CssClass="form-control"/>
                                        </div>
                                    </div>
                                </div>
                           </div>

                           <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">8. ¿Tiene RFC?</label>
                                   <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="rfc1" GroupName="TieneRfc" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="rfc2" GroupName="TieneRfc" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                   </div>

                                  <div class="col-md-12">
                                        <div class="mb-3">
                                            <asp:FileUpload  ID="DocumentoRfc" runat="server" CssClass="form-control"/>
                                        </div>
                                   </div>
                                </div>

                               <div class="col-md-4 me-3 ms-1">
                                    <label class="form-label fw-bold">9. ¿Tiene cartilla militar?</label>
                                    <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="cartillaMilitar1" GroupName="CartillaMilitar" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="cartillaMilitar2" GroupName="CartillaMilitar" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <asp:FileUpload  ID="DocumentoMilitar" runat="server" CssClass="form-control"/>
                                        </div>
                                    </div>
                                </div>
                           </div>

                           <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">10. ¿Tiene INAPAM?</label>
                                   <div class="mb-3 position-relative">
                                        <label class="form-check-inline">
                                            <asp:RadioButton ID="inapam1" GroupName="DocumentoInapam" runat="server" />
                                             <span class="form-check-label">Sí</span>
                                        </label>
                                        <label class="form-check-inline ml-2">
                                             <asp:RadioButton ID="inapam2" GroupName="DocumentoInapam" runat="server" />
                                             <span class="form-check-label">No</span>
                                        </label>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <asp:FileUpload  ID="inputInapam" runat="server" CssClass="form-control"/>
                                        </div>
                                    </div>
                               </div>
                            </div>

                           <div class="row mt-2 mx-3">
                                <div class="col-md-4 me-3 ms-1">
                                    <label for="otrosDocumentos" class="form-label fw-bold">11. Otros documentos de identificación</label>
                                    <div class="mb-3">
                                        <asp:FileUpload  ID="otrosDocumentos" runat="server" CssClass="form-control"/>
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
