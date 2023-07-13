<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Demograficos.aspx.vb" Inherits="Jucobase.Demograficos" %>
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
          <h1>Captura demográficos de beneficiario</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Datos demográficos</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

         <form class="form-card row g-3 form-inline" runat="server">
            <section class="section dashboard">
               
                 <!-- Card -->
                 <div class="col-xxl-12 col-xl-12 px-12">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                               Registro reporte demográficos de beneficiario</h5>

                    
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
                                   <label for="inputLenguaIndigena" class="form-label fw-bold">1. Lengua indígena</label>
                                   <div class="mb-3">
                                        <asp:DropDownList ID="inputLenguaIndigena" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="1L">Lengua 1</asp:ListItem>
                                              <asp:ListItem Value="2L">Lengua 2</asp:ListItem>
                                              <asp:ListItem Value="3L">Lengua 3</asp:ListItem>
                                        </asp:DropDownList>
                                   </div>
                               </div>
                           </div>

                           <div class="row mt-2 mx-3">
                               <div class="col-md-4 me-3 ms-1">
                                  <label class="form-label fw-bold">2. Lugar de nacimiento</label>
                                  <div class="mb-3">
                                       <asp:DropDownList ID="inputPaisNacimiento" AutoPostBack="false"
                                                CssClass="form-select mt-2" runat="server">
                                              <asp:ListItem Selected="True" Value="1P">País 1</asp:ListItem>
                                              <asp:ListItem Value="2P">País 2</asp:ListItem>
                                              <asp:ListItem Value="3P">País 3</asp:ListItem>
                                       </asp:DropDownList>
                                       <asp:DropDownList ID="inputEstadoNacimiento" AutoPostBack="false"
                                                CssClass="form-select mt-2" runat="server">
                                              <asp:ListItem Selected="True" Value="1E">Estado 1</asp:ListItem>
                                              <asp:ListItem Value="2E">Estado 2</asp:ListItem>
                                              <asp:ListItem Value="3E">Estado 3</asp:ListItem>
                                       </asp:DropDownList>
                                       <asp:DropDownList ID="inputMunicipioNacimiento" AutoPostBack="false"
                                                CssClass="form-select mt-2" runat="server">
                                              <asp:ListItem Selected="True" Value="1M">Municipio 1</asp:ListItem>
                                              <asp:ListItem Value="2M">Municipio 2</asp:ListItem>
                                              <asp:ListItem Value="3M">Municipio 3</asp:ListItem>
                                       </asp:DropDownList>

                                       <asp:TextBox ID="inputLocalidadNacimiento" runat="server" CssClass="form-control mt-2" placeholder="Localidad"></asp:TextBox>
                                       <p class="mt-2"><small class="form-text text-success">Campos obligatorios</small></p>
                                   </div>
                               </div>

                               <div class="col-md-4 me-3 ms-1">
                                   <label class="form-label fw-bold">3. Residencia actual</label>
                                    <div class="mb-3">
                                       <asp:DropDownList ID="inputPaisActual" AutoPostBack="false"
                                                CssClass="form-select mt-2" runat="server">
                                              <asp:ListItem Selected="True" Value="1PA">País 1</asp:ListItem>
                                              <asp:ListItem Value="2PA">País 2</asp:ListItem>
                                              <asp:ListItem Value="3PA">País 3</asp:ListItem>
                                       </asp:DropDownList>
                                       <asp:DropDownList ID="inputEstadoActual" AutoPostBack="false"
                                                CssClass="form-select mt-2" runat="server">
                                              <asp:ListItem Selected="True" Value="1EA">Estado 1</asp:ListItem>
                                              <asp:ListItem Value="2EA">Estado 2</asp:ListItem>
                                              <asp:ListItem Value="3EA">Estado 3</asp:ListItem>
                                       </asp:DropDownList>
                                       <asp:DropDownList ID="inputMunicipioActual" AutoPostBack="false"
                                                CssClass="form-select mt-2" runat="server">
                                              <asp:ListItem Selected="True" Value="1MA">Municipio 1</asp:ListItem>
                                              <asp:ListItem Value="2MA">Municipio 2</asp:ListItem>
                                              <asp:ListItem Value="3MA">Municipio 3</asp:ListItem>
                                       </asp:DropDownList>

                                       <asp:TextBox ID="inputCalleNumActual" runat="server" CssClass="form-control mt-2" placeholder="Calle y Número"></asp:TextBox>
                                       <asp:TextBox ID="inputCodigoPostalActual" runat="server" CssClass="form-control mt-2" placeholder="Código Postal"></asp:TextBox>

                                       <asp:DropDownList ID="inputColoniaActual" AutoPostBack="false"
                                                CssClass="form-select mt-2" runat="server">
                                              <asp:ListItem Selected="True" Value="1CA">Colonia 1</asp:ListItem>
                                              <asp:ListItem Value="2CA">Colonia 2</asp:ListItem>
                                              <asp:ListItem Value="3CA">Colonia 3</asp:ListItem>
                                       </asp:DropDownList>

                                       <asp:DropDownList ID="inputTipoResidencia" AutoPostBack="false"
                                                CssClass="form-select mt-2" runat="server">
                                              <asp:ListItem Selected="True" Value="0R">Tipo de residencia</asp:ListItem>
                                              <asp:ListItem Value="1R">Casa de jóvenes</asp:ListItem>
                                              <asp:ListItem Value="2R">Casa familiar - propia</asp:ListItem>
                                              <asp:ListItem Value="3R">Casa familiar - renta</asp:ListItem>
                                              <asp:ListItem Value="4R">Vida independiente</asp:ListItem>
                                              <asp:ListItem Value="5R">Calle</asp:ListItem>
                                              <asp:ListItem Value="6R">Otra institución</asp:ListItem>
                                              <asp:ListItem Value="7R">Desconocido</asp:ListItem>
                                        </asp:DropDownList>

                                       <p class="mt-2"><small class="form-text text-success">Campos obligatorios</small></p>
                                   </div>
                               </div>
                           </div>
                       </div>
                    </div>
                
                </div>
                <!-- Fin población en general -->


                <!-- Niños, niñas y adolescentes -->
                <div class="col-xxl-12 col-xl-12 px-12">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                           <h5 class="card-title fw-bold ps-4">&nbsp
                                <i class="fa-solid fa-children fa-lg"></i>
                                &nbsp Niños, niñas y adolescentes </h5>

                              <div class="row mt-3 mx-3">
                                    <div class="col-md-4 me-3 ms-1">
                                       <label for="inputRazonCalle" class="form-label fw-bold">4. Razón de situación de calle</label>
                                       <div class="mb-3">
                                            <asp:DropDownList ID="inputRazonCalle" AutoPostBack="false"
                                                CssClass="form-select mt-2" runat="server">
                                                <asp:ListItem Selected="True" Value="1RC">Razón 1</asp:ListItem>
                                                <asp:ListItem Value="2RC">Razón 2</asp:ListItem>
                                                <asp:ListItem Value="3RC">Razón 3</asp:ListItem>
                                            </asp:DropDownList>
                                       </div>
                                   </div>
                              </div>

                              <div class="row mt-2 mx-3">
                                    <div class="col-md-4 me-3 ms-1">
                                       <label for="inputDelitos" class="form-label fw-bold">5. ¿Ha cometido algún delito?</label>
                                        <div class="mb-3 position-relative">
                                            <label class="form-check-inline">
                                                <asp:RadioButton ID="cometerDelito1" GroupName="CometerDelito" runat="server" />
                                                 <span class="form-check-label">Sí</span>
                                            </label>
                                            <label class="form-check-inline ml-2">
                                                 <asp:RadioButton ID="cometerDelito2" GroupName="CometerDelito" runat="server" />
                                                 <span class="form-check-label">No</span>
                                            </label>
                                         </div>
                                    </div>

                                    <div class="col-md-4 me-3 ms-1">
                                       <label for="inputDelitos" class="form-label fw-bold">5.1. Tipo de delito</label>
                                       <div class="mb-3">
                                           <table>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito1" runat="server" />&nbsp Robo en general &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito2" runat="server" />&nbsp Daño en propiedad ajena &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito3" runat="server" />&nbsp Faltas a la moral &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito4" runat="server" />&nbsp Consumo de drogas &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito5" runat="server" />&nbsp Agresiones físicas a terceros &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito6" runat="server" />&nbsp Complicidad en delito &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito7" runat="server" />&nbsp Producción de drogas &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito8" runat="server" />&nbsp Extorsión &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito9" runat="server" />&nbsp Secuestro &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito10" runat="server" />&nbsp Acoso sexual &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito11" runat="server" />&nbsp Abuso sexual &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito12" runat="server" />&nbsp Violación &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito13" runat="server" />&nbsp Intento de homicidio &nbsp </td>
                                               </tr>
                                               <tr class="d-flex">
                                                   <td> <asp:CheckBox ID="delito14" runat="server" />&nbsp Homicidio &nbsp </td>
                                               </tr>
                                           </table>

                                           <div class="col-md-6">
                                               <label for="inputOtroDelito" class="form-label fw-bold mt-2">Otro</label>
                                               <div class="mb-3">
                                                   <asp:TextBox ID="inputOtroDelito" runat="server" CssClass="form-control"></asp:TextBox>

                                               </div>
                                           </div>
                                       </div>
                                   </div>
                              </div>

                              <div class="row mt-2 mx-3">
                                   <div class="col-md-4 me-3 ms-1">
                                       <label for="inputRazonDelito" class="form-label fw-bold">6. Razón de delitos</label>
                                       <div class="mb-3">
                                            <textarea id="inputRazonDelito" class="form-control" rows="4" cols="15"></textarea>
                                        </div>
                                   </div>
                              </div>

                              <div class="row mt-2 mx-3">
                                   <div class="col-md-4 me-3 ms-1">
                                       <label for="inputNoches" class="form-label fw-bold">7. Noches fuera de su residencia actual sin permiso</label>
                                       <div class="mb-3">
                                           <asp:DropDownList ID="inputNoches" AutoPostBack="false"
                                                CssClass="form-select mt-2" runat="server">
                                                <asp:ListItem Selected="True" Value="1N">1</asp:ListItem>
                                                <asp:ListItem Value="2N">2</asp:ListItem>
                                                <asp:ListItem Value="3N">3</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                   </div>
                              </div>
                         </div>
                      </div>
                </div>
                <!-- Fin -->



                <!-- Final-->
                <div class="col-xxl-12 col-xl-12 px-12">
                  <div class="card info-card customers-card">
                    <div class="card-body mt-3">

                         <div class="mt-3 mx-3">
                            <div class="row mt-4 table-responsive justify-content-center" style="width: 100%">
                                <label class="form-label fw-bold">8. Actividades en una semana representativa (Número de horas)</label>
                                <div class="col-sm-8">
                                    <table class="table table-sm table-bordered text-center align-middle" style="border: double">
                                       <thead>
                                           <tr style="background-color:#3777EC;" class="text-white">
                                               <th scope="col"></th>
                                               <th scope="col">Lunes</th>
                                               <th scope="col">Martes</th>
                                               <th scope="col">Miércoles</th>
                                               <th scope="col">Jueves</th>
                                               <th scope="col">Viernes</th>
                                               <th scope="col">Sábado</th>
                                               <th scope="col">Domingo</th>
                                           </tr>
                                       </thead>

                                       <tbody>
                                           <tr>
                                               <td scope="row">Estudio</td>
                                               <td><asp:TextBox ID="TextBox1" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox2" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox3" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox4" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox5" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox6" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox7" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                           </tr>
                                           <tr>
                                               <td scope="row">Juego</td>
                                               <td><asp:TextBox ID="TextBox8" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox9" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox10" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox11" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox12" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox13" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox14" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                           </tr>
                                           <tr>
                                               <td scope="row">Trabajo (día)</td>
                                               <td><asp:TextBox ID="TextBox15" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox16" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox17" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox18" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox19" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox20" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox21" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                           </tr>
                                           <tr>
                                               <td scope="row">Trabajo (noche)</td>
                                               <td><asp:TextBox ID="TextBox22" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox23" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox24" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox25" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox26" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox27" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                               <td><asp:TextBox ID="TextBox28" CssClass="form-control text-center" runat="server"></asp:TextBox></td>
                                           </tr>
                                           <tr style="background-color:#3777EC;">
                                               <td colspan="8" class="text-white">Ingrese horas en números</td>
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
                <!----------------->
            </section>
        </form>
    </main>
</asp:Content>