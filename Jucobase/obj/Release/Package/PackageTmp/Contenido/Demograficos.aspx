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
                               Registro reporte demográficos de beneficiario</h5>

                    
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
                                   <label for="inputLeng" class="form-label fw-bold">1. Lengua indígena</label>
                                   <div class="col-sm-8">
                                        <asp:TextBox ID="inputLeng" runat="server" CssClass="form-control" ></asp:TextBox>
                                   </div>

                                   <p class="mt-2"><small class="form-text text-success">Este campo es obligatorio</small></p>
                               </div>
                           </div>

                           <div class="row mt-3">
                               <div class="col-sm-6 ps-5">
                                   <label class="form-label fw-bold">2. Lugar de nacimiento</label>

                                   <div class="col-sm-8">
                                       <asp:TextBox ID="inputPaisNacimiento" runat="server" CssClass="form-control mt-2" placeholder="País" ></asp:TextBox>
                                       <asp:TextBox ID="inputEstadoNacimiento" runat="server" CssClass="form-control mt-2" placeholder="Estado" ></asp:TextBox>
                                       <asp:TextBox ID="inputMunicipioNacimiento" runat="server" CssClass="form-control mt-2" placeholder="Municipio"></asp:TextBox>
                                       <asp:TextBox ID="inputLocalidadNacimiento" runat="server" CssClass="form-control mt-2" placeholder="Localidad"></asp:TextBox>
                                   </div>

                                   <p class="mt-2"><small class="form-text text-success">Campos obligatorios</small></p>
                               </div>

                               <div class="col-sm-6 ps-5">
                                   <label class="form-label fw-bold">3. Residencia actual</label>
                                   <div class="col-sm-8">
                                       <asp:TextBox ID="inputPaisActual" runat="server" CssClass="form-control mt-2" placeholder="País" ></asp:TextBox>
                                       <asp:TextBox ID="inputEstadoActual" runat="server" CssClass="form-control mt-2" placeholder="Estado" ></asp:TextBox>
                                       <asp:TextBox ID="inputMunicipioActual" runat="server" CssClass="form-control mt-2" placeholder="Municipio"></asp:TextBox>
                                       <asp:TextBox ID="inputCalleNumActual" runat="server" CssClass="form-control mt-2" placeholder="Calle y Número"></asp:TextBox>
                                       <asp:TextBox ID="inputCodigoPostalActual" runat="server" CssClass="form-control mt-2" placeholder="Código Postal"></asp:TextBox>
                                       <asp:TextBox ID="inputColoniaActua" runat="server" CssClass="form-control mt-2" placeholder="Colonia"></asp:TextBox>

                                       <asp:DropDownList ID="inputTipoResidencia" AutoPostBack="false"
                                                CssClass="form-select mt-2" runat="server">
                                              <asp:ListItem Selected="True" Value="0t">Tipo de residencia</asp:ListItem>
                                              <asp:ListItem Value="1t">Casa de jóvenes</asp:ListItem>
                                              <asp:ListItem Value="2t">Casa familiar - propia</asp:ListItem>
                                              <asp:ListItem Value="3t">Casa familiar - renta</asp:ListItem>
                                              <asp:ListItem Value="4t">Vida independiente</asp:ListItem>
                                              <asp:ListItem Value="5t">Calle</asp:ListItem>
                                              <asp:ListItem Value="6t">Otra institución</asp:ListItem>
                                              <asp:ListItem Value="7t">Desconocido</asp:ListItem>
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
                <div class="col-xxl-4 col-xl-12 px-4">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                           <h5 class="card-title fw-bold ps-4">&nbsp
                                <i class="fa-solid fa-children fa-lg"></i>
                                &nbsp Niños, niñas y adolescentes </h5>

                          <div class="row mt-3">
                               <div class="col-sm-6 ps-5">
                                   <label for="inputRazonCalle" class="form-label fw-bold">4. Razón de situación de calle</label>
                                   <div class="col-sm-7">
                                       <asp:TextBox ID="inputRazonCalle" runat="server" CssClass="form-control" ></asp:TextBox>
                                   </div>
                               </div>
                          </div>

                          <div class="row mt-3">
                               <div class="col-sm-6 ps-5">
                                   <label for="inputDelitos" class="form-label fw-bold">5. ¿Ha cometido algún delito?</label>
                                   <br />
  
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="cometerDelito1" Checked="false" GroupName="CometerDelito" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="cometerDelito2" GroupName="CometerDelito" runat="server" />&nbsp No
                                    </div>

                               </div>

                              <div class="col-sm-5 ps-5">
                                   <label for="inputDelitos" class="form-label fw-bold">5.1. Tipo de delito</label>
                                   <div class="col-sm-12">
                                      <!-- <asp:DropDownList ID="inputDelitos" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True">Delito</asp:ListItem>
                                              <asp:ListItem Value="1d">Robo en general</asp:ListItem>
                                              <asp:ListItem Value="2d">Daño en propiedad ajena</asp:ListItem>
                                              <asp:ListItem Value="3d">Faltas a la moral</asp:ListItem>
                                              <asp:ListItem Value="4d">Consumo de drogas</asp:ListItem>
                                              <asp:ListItem Value="5d">Agresiones físicas a terceros</asp:ListItem>
                                              <asp:ListItem Value="6d">Complicidad en delito</asp:ListItem>
                                              <asp:ListItem Value="7d">Producción de drogas</asp:ListItem>
                                              <asp:ListItem Value="8d">Extorsión</asp:ListItem>
                                              <asp:ListItem Value="9d">Secuestro</asp:ListItem>
                                              <asp:ListItem Value="10d">Acoso sexual</asp:ListItem>
                                              <asp:ListItem Value="11d">Abuso sexual</asp:ListItem>
                                              <asp:ListItem Value="12d">Violación</asp:ListItem>
                                              <asp:ListItem Value="13d">Intento de homicidio</asp:ListItem>
                                              <asp:ListItem Value="14d">Homicidio</asp:ListItem>
                                              <asp:ListItem Value="15d">Otro</asp:ListItem>
                                        </asp:DropDownList>
                                       -->
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

                                           <tr class="d-flex">
                                               <td> <asp:CheckBox ID="delito15" runat="server" />&nbsp Otro &nbsp </td>
                                           </tr>
                                       </table>

                                       <div class="col-sm-8">
                                            <label for="inputOtroDelito" class="form-label fw-bold mt-2">Otro</label>
                                            <asp:TextBox ID="inputOtroDelito" runat="server" CssClass="form-control"></asp:TextBox>
                                       </div>
                                   </div>
                               </div>
                          </div>

                          <div class="row mt-3">
                               <div class="col-sm-6 ps-5" ">
                                   <label for="inputRazonDelito" class="form-label fw-bold">6. Razón de delitos</label>
                                   <div class="col-sm-7">
                                        <asp:TextBox ID="inputRazonDelito" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                               </div>
                          </div>

                          <div class="row mt-3">
                               <div class="col-sm-6 ps-5" ">
                                   <label for="inputNoches" class="form-label fw-bold">7. Noches fuera de su residencia actual sin permiso</label>
                                   <div class="col-sm-7">
                                       <asp:TextBox ID="inputNoches" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                               </div>
                          </div>

                         </div>

                       </div>
                
                </div>
                <!-- Fin -->



                <!-- Final-->
                <div class="col-xxl-4 col-xl-12 px-4">

                      <div class="card info-card customers-card">
                        <div class="card-body">

                            <div class="row mt-4 table-responsive" style="width: 90%">
                               <br />
                                    <label class="form-label ps-5 fw-bold">8. Actividades en una semana representativa (Número de horas)</label>
                               <br />
                               <br />
                               <div class="col-sm-8 ps-5 ">
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
                <!----------------->
            </section>
        </form>
    </main>
</asp:Content>