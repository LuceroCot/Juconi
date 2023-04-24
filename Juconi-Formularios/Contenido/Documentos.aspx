<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Master.Master" CodeBehind="Documentos.aspx.vb" Inherits="Juconi_Formularios.Documento" %>
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

        <form class="form-card row g-3" runat="server">
            <section class="section dashboard">
                <!-- Customers Card -->
                    <div class="col-xxl-4 col-xl-12 px-4">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                              Registro reporte de documentos beneficiario</h5>

                    
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

                                <div class="row mt-3" id="perfilA" style="display:;">
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
                               <div class="col-sm-6 ps-5" ">
                                   <label class="form-label fw-bold">1. ¿Tiene acta de nacimiento?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="acta1" Checked="false" GroupName="ActaNacimiento" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="acta2" GroupName="ActaNacimiento" runat="server" />&nbsp No
                                    </div>

                                    <div class="col-sm-8 mt-2">
                                        <asp:FileUpload  ID="inputActa" runat="server" CssClass="form-control"/>
                                    </div>
                                </div>

                                <div class="col-sm-6 ps-5">
                                     <label class="form-label fw-bold">2. ¿Tiene CURP?</label>
                                     <br />

                                     <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="curp1" Checked="false" GroupName="DocumentoCurp" runat="server" />&nbsp Sí
                                     </div>

                                     <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="curp2" GroupName="DocumentoCurp" runat="server" />&nbsp No
                                     </div>

                                     <div class="col-sm-8 mt-2">
                                         <asp:FileUpload  ID="inputCurp" runat="server" CssClass="form-control"/>
                                     </div>
                                </div>
                          </div>

                          <div class="row mt-3">
                               
                                <div class="col-sm-6 ps-5">
                                   <label class="form-label fw-bold">3. ¿Tiene número de seguridad social?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="nss1" Checked="false" GroupName="DocumentoNSS" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="nss2"  GroupName="DocumentoNSS" runat="server" />&nbsp No
                                    </div>

                                    <div class="col-sm-8 mt-2">
                                         <asp:FileUpload  ID="nss" runat="server" CssClass="form-control"/>
                                    </div>

                                </div>

                                <div class="col-sm-6 ps-5">
                                    <label class="form-label fw-bold">4. ¿Tiene cartilla de salud?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="salud1" Checked="false" GroupName="CartillaSalud" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="salud2" GroupName="CartillaSalud" runat="server" />&nbsp No
                                    </div>

                                    <div class="col-sm-8 mt-2">
                                         <asp:FileUpload  ID="DocumentoCartillaSalud" runat="server" CssClass="form-control"/>
                                    </div>
                                    
                                </div>
                          </div>

                          <div class="row mt-3">
                                <div class="col-sm-6 ps-5">
                                    <label class="form-label fw-bold">5. ¿Tiene CENAPRED?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="cenapred1" Checked="false" GroupName="TieneCenapred" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="cenapred2"  GroupName="TieneCenapred" runat="server" />&nbsp No
                                    </div>

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="cenapred3"  GroupName="TieneCenapred" runat="server" />&nbsp N/A
                                    </div>

                                    <div class="col-sm-8 mt-2">
                                         <asp:FileUpload  ID="DocumentoCenapred" runat="server" CssClass="form-control"/>
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
                   
                           <div class="row mt-3">
                               <div class="col-sm-6 ps-5" ">
                                   <label class="form-label fw-bold">6. ¿Tiene INE?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="ine"  Checked="false" GroupName="DocumentoIne" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="ine2" GroupName="DocumentoIne" runat="server" />&nbsp No
                                    </div>

                                    <div class="col-sm-8 mt-2">
                                        <asp:FileUpload  ID="inputIne" runat="server" CssClass="form-control"/>
                                    </div>
                                </div>

                               <div class="col-sm-6 ps-5" ">
                                    <label class="form-label fw-bold">7. ¿Tiene licencia de conducir?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="licencia1" Checked="false" GroupName="LicenciaConducir" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="licencia2" GroupName="LicenciaConducir" runat="server" />&nbsp No
                                    </div>

                                    <div class="col-sm-8 mt-2">
                                        <asp:FileUpload  ID="inputLicencia" runat="server" CssClass="form-control"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-4">
                               <div class="col-sm-6 ps-5" ">
                                   <label class="form-label fw-bold">8. ¿Tiene RFC?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="rfc1" Checked="false" GroupName="TieneRfc" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="rfc2" GroupName="TieneRfc" runat="server" />&nbsp No
                                    </div>

                                    <div class="col-sm-8 mt-2">
                                        <asp:FileUpload  ID="DocumentoRfc" runat="server" CssClass="form-control"/>
                                    </div>
                                </div>

                               <div class="col-sm-6 ps-5" ">
                                    <label class="form-label fw-bold">9. ¿Tiene cartilla militar?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="cartillaM1" Checked="false" GroupName="CartillaMilitar" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="cartillaM2" GroupName="CartillaMilitar" runat="server" />&nbsp No
                                    </div>

                                    <div class="col-sm-8 mt-2">
                                        <asp:FileUpload  ID="DocumentoMilitar" runat="server" CssClass="form-control"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-3">
                               <div class="col-sm-6 ps-5" ">
                                   <label class="form-label fw-bold">10. ¿Tiene INAPAM?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="inapam1" Checked="false" GroupName="DocumentoInapam" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="inapam2" GroupName="DocumentoInapam" runat="server" />&nbsp No
                                    </div>

                                    <div class="col-sm-8 mt-2">
                                        <asp:FileUpload  ID="inputInapam" runat="server" CssClass="form-control"/>
                                    </div>

                               </div>
                           </div>

                           <br />
                           <div class="row mt-3">
                                <div class="col-sm-6 ps-5" ">
                                    <label class="form-label fw-bold">11. Otros documentos de identificación</label>
                                    <br />
                               
                                    <div class="col-sm-8 mt-2">
                                        <asp:FileUpload  ID="otrosDocumentos" runat="server" CssClass="form-control"/>
                                    </div>
                                </div>

                           </div>

                           <div class="row mt-4">
                                <div class="col ps-4 mx-4 d-inline-block">
                                    <button type="submit" class="btn btn-primary">Guardar información </button>
                                    <button type="submit" class="btn btn-primary ms-1">Regresar </button>
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
