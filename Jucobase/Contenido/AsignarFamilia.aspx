<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="AsignarFamilia.aspx.vb" Inherits="Jucobase.AsignarFamilia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {
            $("#<%= inputFechaContacto.ClientID %>").datepicker($.datepicker.regional["es"] = {
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

         function previsualizarDocumento(input) {
             if (input.files && input.files[0]) {
                 var documento = new FileReader();

                 documento.onload = function (e) {
                     document.getElementById('<%= iframePrevisualizar.ClientID %>').setAttribute('src', e.target.result);
                    }

                    documento.readAsDataURL(input.files[0]);
                }
            }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Captura de asignación de familia</h1>
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
                         Registro de asignación de familia</h5>

                       <div class="mt-4">
                         
                            <div class="row mt-3 mx-3">
                                <div class="col-md-4">
                                 <label for="inputFamilia" class="form-label fw-bold">1. Familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputFamilia" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                                <div class="col-md-4">
                                  <label for="inputClave" class="form-label fw-bold">2. Clave de familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputClave" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                 <label for="inputNombreSolicitante" class="form-label fw-bold">3. Nombre de la persona responsable que solicita el servicio</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombreSolicitante" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                 <label for="inputTelefono" class="form-label fw-bold">4. Teléfono</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-4">
                                  <label for="inputDireccion" class="form-label fw-bold">5. Dirección</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div> 
                                </div>
                            </div>
                          
                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                 <label for="inputFechaContacto" class="form-label fw-bold">6. Fecha de primer contacto</label>
                                  <div class="mb-3 position-relative">
                                     <i class="fa-regular fa-calendar position-absolute top-50 start-0 translate-middle-y"></i>
                                    <asp:TextBox ID="inputFechaContacto" runat="server" CssClass="form-control" ></asp:TextBox>
                                  </div>
                                </div>
                           </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputLugarContacto" class="col-form-label fw-bold">7. Lugar de primer contacto</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputLugarContacto" runat="server" CssClass="form-control" ></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-4">
                                  <label for="inputLlegada" class="col-form-label fw-bold">8. ¿Cómo llegó a JUCONI?</label>
                                  <div class="mb-3">
                                      <asp:TextBox ID="inputLlegada" runat="server" CssClass="form-control" ></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputSituacion" class="form-label fw-bold">8.1 Descripción de situación</label>
                                    <br />

                                    <textarea id="inputSituacion" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>

                            <div class="row mt-3 mx-3">
                                <div class="col-md-4">
                                 <label for="inputNombreEscuela" class="form-label fw-bold">8.2 Nombre de la escuela</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombreEscuela" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                                <div class="col-md-4">
                                  <label for="inputCtt" class="form-label fw-bold">8.3 CTT</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputCtt" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-3 mx-3">
                                <div class="col-md-4">
                                 <label for="inputOrganizacionCivil" class="form-label fw-bold">8.4 Nombre de la organización civil</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombreOrganizacion" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                                <div class="col-md-4">
                                  <label for="inputInstanciaGubernamental" class="form-label fw-bold">8.5 Instancia gubernamental</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputInstanciaGubernamental" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-3 mx-3">
                                <div class="col-md-4">
                                  <label for="inputRedSocial" class="form-label fw-bold">8.6 Tipo de red social</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputRedSocial" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>
                          
                            <div class="mt-3 mx-3">
                               <label class="form-label fw-bold mx-3">9. Nombre y edad de niña, niño o adolescente</label>
                               <div class="row mt-4 table-responsive justify-content-center" style="width: 100%">
                                 <div class="col-sm-7">
                                    <table class="table table-sm table-hover table-bordered table-striped text-center align-middle">
                                        <thead>
                                            <tr class="text-dark">
                                                <th scope="col" class="col-md-3">Nombre</th>
                                                <th scope="col" class="col-md-2">Edad</th>
                                                <th scope="col" class="col-md-3">Parentesco con persona responsable</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td><asp:TextBox ID="inputNombreN1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEdadN1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td>
                                                    <asp:DropDownList ID="inputParentesco1" AutoPostBack="false" CssClass="form-select" runat="server">
                                                      <asp:ListItem Selected="True" Value="0">Otro</asp:ListItem>
                                                      <asp:ListItem Value="1">Parentesco 1</asp:ListItem>
                                                      <asp:ListItem Value="2">Parentesco 2</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><asp:TextBox ID="inputNombreN2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEdadN2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td>
                                                    <asp:DropDownList ID="inputParentesco2" AutoPostBack="false" CssClass="form-select" runat="server">
                                                      <asp:ListItem Selected="True" Value="0">Otro</asp:ListItem>
                                                      <asp:ListItem Value="1">Parentesco 1</asp:ListItem>
                                                      <asp:ListItem Value="2">Parentesco 2</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                               </div>
                           </div>
                            
                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputSituacionPeticion" class="form-label fw-bold">10. Descripción de la situación para la petición de ayuda (en palabras de población)</label>
                                    <br />

                                    <textarea id="inputSituacionPeticion" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputObservaciones" class="form-label fw-bold">11. Obervaciones JUCONI</label>
                                    <br />

                                    <textarea id="inputObservaciones" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>

                        </div>
                    </div>
                  </div>
                </div>
                <!-- End Customers Card -->

                <!-- Card -->
                <div class="col-xxl-4 col-xl-12 px-4">
                  <div class="card info-card customers-card">
                    <div class="card-body mt-3">
                        <h5 class="card-title fw-bold ps-4">&nbsp
                           <i class="fa-solid fa-baby fa-lg"></i>
                           &nbsp Registro miembros de la familia</h5>

                            <div class="mt-3 mx-3">
                               <div class="row mt-4 table-responsive justify-content-center" style="width: 100%">
                                 <div class="col-sm-8">
                                    <table class="table table-sm table-hover table-bordered table-striped text-center align-middle">
                                        <thead>
                                            <tr class="text-dark">
                                                <th scope="col"></th>
                                                <th scope="col">Integrante 1</th>
                                                <th scope="col">Integrante 2</th>
                                                <th scope="col">Integrante 3</th>
                                                <th scope="col">Integrante 4</th>
                                                <th scope="col">+</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">1. Nombre:</td>
                                                <td><asp:TextBox ID="inputNombre1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNombre2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNombre3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNombre4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                                
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">2. Primer apellido:</td>
                                                <td><asp:TextBox ID="inputPrimerApellido1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputPrimerApellido2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputPrimerApellido3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputPrimerApellido4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">3. Segundo apellido:</td>
                                                <td><asp:TextBox ID="inputSegundoApellido1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputSegundoApellido2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputSegundoApellido3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputSegundoApellido4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">4. Sexo:</td>
                                                <td><asp:TextBox ID="inputSexo1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputSexo2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputSexo3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputSexo4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">5. Fecha de nacimiento:</td>
                                                <td><asp:TextBox ID="inputFechaNacimiento1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputFechaNacimiento2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputFechaNacimiento3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputFechaNacimiento4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">6. Edad:</td>
                                                <td><asp:TextBox ID="inputEdad1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEdad2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEdad3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEdad4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">7. ¿Es responsable de los menores en atención?</td>
                                                <td><asp:TextBox ID="inputResponsable1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputResponsable2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputResponsable3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputResponsable4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">8. País de nacimiento:</td>
                                                <td><asp:TextBox ID="inputPais1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputPais2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputPais3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputPais4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">9. Estado de nacimiento:</td>
                                                <td><asp:TextBox ID="inputEstado1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEstado2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEstado3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEstado4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">10. Municipio de nacimiento:</td>
                                                <td><asp:TextBox ID="inputMunicipio1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputMunicipio2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputMunicipio3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputMunicipio4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">11. Estado civil:</td>
                                                <td><asp:TextBox ID="inputEstadoCivil1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEstadoCivil2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEstadoCivil3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEstadoCivil4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">12. ¿Trabaja?</td>
                                                <td><asp:TextBox ID="inputTrabajar1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputTrabajar2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputTrabajar3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputTrabajar4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">13. ¿Estudia?</td>
                                                <td><asp:TextBox ID="inputEstudiar" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEstudiar2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEstudiar3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEstudiar4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">13.1 Nivel:</td>
                                                <td><asp:TextBox ID="inputNivel1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNivel2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNivel3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNivel4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">13.2 Nombre de la escuela:</td>
                                                <td><asp:TextBox ID="inputNombreEscuela1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNombreEscuela2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNombreEscuela3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNombreEscuela4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">13.3 Nivel de escolaridad:</td>
                                                <td><asp:TextBox ID="inputEscolaridad1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEscolaridad2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEscolaridad3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputEscolaridad4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">14. Posición dentro de la estructura familiar con base a la atención familiar (no cohabitación):</td>
                                                <td><asp:TextBox ID="inputPosicionEstructural1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputPosicionEstructural2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputPosicionEstructural3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputPosicionEstructural4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">15. ¿Participará en la atención familiar?</td>
                                                <td><asp:TextBox ID="inputParticipar1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputParticipar2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputParticipar3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputParticipar4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td scope="row" class="text-start fw-bold w-auto text-wrap">16. NRU:</td>
                                                <td><asp:TextBox ID="inputNru1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNru2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNru3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td><asp:TextBox ID="inputNru4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                               </div>
                           </div>
                    </div>
                  </div>
                </div>
                <!-- End Card -->

                <!-- Diagnóstico -->
                <div class="col-xxl-4 col-xl-12 px-4">
                  <div class="card info-card customers-card">
                    <div class="card-body mt-3">
                       <h5 class="card-title fw-bold ps-4">&nbsp
                           <i class="fa-solid fa-file-invoice-dollar"></i>
                           &nbsp Diágnostico habitacional y económico (mensual)</h5>

                        <div class="mt-4">
                            <div class="row mt-3 mx-3">
                                <div class="col-md-4">
                                    <label for="inputTelefonoCelular" class="form-label fw-bold">17. ¿Teléfono celular?</label>
                                    <div class="mb-3 position-relative">
                                       <label class="form-check-inline">
                                         <asp:RadioButton ID="si" runat="server" GroupName="telefonoGroup" />
                                         <span class="form-check-label">Sí</span>
                                       </label>
                                       <label class="form-check-inline ml-2">
                                         <asp:RadioButton ID="no" runat="server" GroupName="telefonoGroup" />
                                         <span class="form-check-label">No</span>
                                       </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                  <label for="inputCantidadTelefonos" class="form-label fw-bold">17.1 Cantidad de teléfonos celulares en el hogar</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputCantidadTelefonos" AutoPostBack="false" CssClass="form-select" runat="server">
                                        <asp:ListItem Selected="True" Value="1">1</asp:ListItem>
                                        <asp:ListItem Value="2">2</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-3 mx-3">
                                <div class="col-md-4">
                                  <label for="inputGastoMensual" class="form-label fw-bold">17.2 Gasto mensual en recargas de celulares</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputGastoMensual" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                 <label for="inputResidencia" class="form-label fw-bold">18. Tipo de residencia:</label>
                                  <asp:DropDownList ID="inputResidencia" AutoPostBack="false" CssClass="form-select" runat="server">
                                        <asp:ListItem Selected="True" Value="1">Casa Familiar - propia</asp:ListItem>
                                        <asp:ListItem Value="2">Casa Familiar - renta</asp:ListItem>
                                        <asp:ListItem Value="3">Casa Familiar - prestada</asp:ListItem>
                                        <asp:ListItem Value="3">Otra institución</asp:ListItem>
                                        <asp:ListItem Value="3">Calle</asp:ListItem>
                                        <asp:ListItem Value="3">Desconocido</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="row mt-3 mx-3">
                                <div class="col-md-8">
                                  <label for="inputObservacionesResidencia" class="form-label fw-bold">19. Observación JUCONI respecto a situación de residencia</label>
                                    <br />
                                    <textarea id="inputObservacionesResidencia" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>
                          
                            <div class="row mt-3 mx-3">
                                <div class="col-md-10">
                                    <label class="form-label fw-bold">20. Su residencia cuenta con</label>
                                    <div class="row mt-4 table-responsive justify-content-center" style="width: 100%">
                                        <div class="col-sm-10">
                                            <table class="table table-sm table-hover table-bordered table-striped text-center align-middle">
                                                <thead>
                                                    <tr class="text-dark">
                                                        <th scope="col"></th>
                                                        <th scope="col" class="col-md-3">Gasto mensual</th>
                                                        <th scope="col" class="col-md-5">Observación JUCONI</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <tr>
                                                        <td scope="row" class="text-start fw-bold w-auto text-wrap">20.1 Agua</td>
                                                        <td>
                                                            <asp:TextBox ID="inputGastoMensualAgua" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <textarea id="inputObservacionAgua" class="form-control" rows="2" cols="10"></textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row" class="text-start fw-bold w-auto text-wrap">20.2 Drenaje</td>
                                                        <td>
                                                            <asp:TextBox ID="inputGastoMensualDrenaje" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <textarea id="inputObservacionDrenaje" class="form-control" rows="2" cols="10"></textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row" class="text-start fw-bold w-auto text-wrap">20.3 Gas</td>
                                                        <td>
                                                            <asp:TextBox ID="inputGastoMensualGas" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <textarea id="inputObservacionGas" class="form-control" rows="2" cols="10"></textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row" class="text-start fw-bold w-auto text-wrap">20.4 Luz eléctrica</td>
                                                        <td>
                                                            <asp:TextBox ID="inputGastoMensualLuz" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <textarea id="inputObservacionLuz" class="form-control" rows="2" cols="10"></textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row" class="text-start fw-bold w-auto text-wrap">20.5 Internet</td>
                                                        <td>
                                                            <asp:TextBox ID="inputGastoMensualInternet" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <textarea id="inputObservacionInternet" class="form-control" rows="2" cols="10"></textarea>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputCantidadHabitaciones" class="col-form-label fw-bold">21. Número de habitaciones en su residencia</label>
                                  <div class="mb-3">
                                     <asp:TextBox ID="inputCantidadHabitaciones" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputGastosEducacion" class="col-form-label fw-bold">22. ¿Gastos relacionados con educación?</label>
                                  <div class="mb-3 position-relative">
                                       <label class="form-check-inline">
                                         <asp:RadioButton ID="siEducacion" runat="server" GroupName="educacionGroup" />
                                         <span class="form-check-label">Sí</span>
                                       </label>
                                       <label class="form-check-inline ml-2">
                                         <asp:RadioButton ID="noEducacion" runat="server" GroupName="educacionGroup" />
                                         <span class="form-check-label">No</span>
                                       </label>
                                  </div>                                 
                                </div>

                                <div class="col-md-4">
                                  <label for="inputCantidadGastosEducacion" class="col-form-label fw-bold">22.1 Monto</label>
                                  <div class="mb-3">
                                     <asp:TextBox ID="inputCantidadGastosEducacion" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputBeneficiarioSalud" class="col-form-label fw-bold">23. ¿Es beneficiario de algún sistema de salud?</label>
                                  <div class="mb-3 position-relative">
                                       <label class="form-check-inline">
                                         <asp:RadioButton ID="siBeneficiarioSalud" runat="server" GroupName="beneficiarioSaludGroup" />
                                         <span class="form-check-label">Sí</span>
                                       </label>
                                       <label class="form-check-inline ml-2">
                                         <asp:RadioButton ID="noBeneficiarioSalud" runat="server" GroupName="beneficiarioSaludGroup" />
                                         <span class="form-check-label">No</span>
                                       </label>
                                  </div>                                 
                                </div>

                                <div class="col-md-4">
                                  <label for="inputTipoApoyoSalud" class="col-form-label fw-bold">23.1 ¿De qué tipo?</label>
                                  <div class="mb-3 position-relative">
                                       <label class="form-check-inline">
                                         <asp:RadioButton ID="publicoSalud" runat="server" GroupName="apoyoSaludGroup" />
                                         <span class="form-check-label">Público</span>
                                       </label>
                                       <label class="form-check-inline ml-2">
                                         <asp:RadioButton ID="privadoSalud" runat="server" GroupName="apoyoSaludGroup" />
                                         <span class="form-check-label">Privado</span>
                                       </label>
                                  </div>   
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputBeneficiarioGubernamental" class="col-form-label fw-bold">24. ¿Es beneficiario de algún apoyo económico gubernamental?</label>
                                  <div class="mb-3 position-relative">
                                       <label class="form-check-inline">
                                         <asp:RadioButton ID="siBeneficiarioGubernamental" runat="server" GroupName="beneficiarioGubernamentalGroup" />
                                         <span class="form-check-label">Sí</span>
                                       </label>
                                       <label class="form-check-inline ml-2">
                                         <asp:RadioButton ID="noBeneficiarioGubernamental" runat="server" GroupName="beneficiarioGubernamentalGroup" />
                                         <span class="form-check-label">No</span>
                                       </label>
                                  </div>                                 
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputProgramaGubernamental" class="col-form-label fw-bold">24.1 Programa</label>
                                  <div class="mb-3">
                                      <asp:TextBox ID="inputProgramaGubernamental" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>   
                                </div>

                                <div class="col-md-4">
                                  <label for="inputMontoGubernamental" class="col-form-label fw-bold">24.2 Monto</label>
                                  <div class="mb-3">
                                      <asp:TextBox ID="inputMontoGubernamental" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>   
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputIngresoEstimado" class="col-form-label fw-bold">25. Estimado de ingreso mensual familiar</label>
                                  <div class="mb-3">
                                      <asp:TextBox ID="inputIngresoEstimado" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>   
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputAporteIngreso" class="col-form-label fw-bold">26. ¿Quiénes aportan al ingreso mensual familiar?</label>
                                  <div class="mb-3">
                                     <br />
                                     <textarea id="inputAporteIngreso" class="form-control" rows="5" cols="10"></textarea>
                                  </div>   
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputPobreza" class="col-form-label fw-bold">27. ¿Situación de pobreza extrema?</label>
                                  <div class="mb-3 position-relative">
                                       <label class="form-check-inline">
                                         <asp:RadioButton ID="siPobrezaExtrema" runat="server" GroupName="pobrezaGroup" />
                                         <span class="form-check-label">Sí</span>
                                       </label>
                                       <label class="form-check-inline ml-2">
                                         <asp:RadioButton ID="noPobrezaExtrema" runat="server" GroupName="pobrezaGroup" />
                                         <span class="form-check-label">No</span>
                                       </label>
                                  </div>                                 
                                </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputObservacionesDiagnostico" class="form-label fw-bold">28. Obervaciones JUCONI</label>
                                    <br />

                                    <textarea id="inputObservacionesDiagnostico" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>
                        </div> 
                    </div>
                  </div>
                </div>
                <!------------------->

                <!-- Dinámica -->
                <div class="col-xxl-4 col-xl-12 px-4">
                  <div class="card info-card customers-card">
                    <div class="card-body mt-3">
                         <h5 class="card-title fw-bold ps-4">&nbsp
                           <i class="fa-solid fa-house-chimney-window"></i>
                           &nbsp Dinámica familiar</h5>

                         <div class="mt-4">
                            <div class="row mx-3 mt-3">
                                <div class="col-md-4">
                                   <label for="inputNombreSolicitante" class="form-label fw-bold">29. Genograma</label>
                                   <div class="mb-3">
                                      <asp:FileUpload  ID="documentoGenograma" runat="server" CssClass="form-control" onchange="previsualizarDocumento(this)"/>
                                   </div>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3 ">
                                <div class="col-md-8">
                                    <iframe id="iframePrevisualizar" runat="server" height="500" style="border: solid rgba(0, 0, 0, 0.3); width: 100%"></iframe>
                                 </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputExplicacionGenograma" class="form-label fw-bold">30. Explicación de genograma (en palabras de la población)</label>
                                    <br />

                                    <textarea id="inputExplicacionGenograma" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>
                           
                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputObservacionesGenograma" class="form-label fw-bold">31. Obervaciones JUCONI al genograma</label>
                                    <br />

                                    <textarea id="inputObservacionesGenograma" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>

                             <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputObservacionesDinamica" class="form-label fw-bold">32. Obervaciones JUCONI de dinámica familiar</label>
                                    <br />

                                    <textarea id="inputObservacionesDinamica" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>
                </div>
                <!-- End -->

                <!-- Recomendación -->
                <div class="col-xxl-4 col-xl-12 px-4">
                  <div class="card info-card customers-card">
                    <div class="card-body mt-3">
                         <h5 class="card-title fw-bold ps-4">&nbsp
                           <i class="fa-solid fa-square-check "></i>
                           &nbsp Recomendación de asignación de familia</h5>

                         <div class="mt-4">
                            <div class="row mx-3 mt-3">
                                <div class="col-md-4">
                                   <label for="inputPerfilAtencion" class="form-label fw-bold">33. Perfil de atención</label>
                                   <div class="mb-3">
                                      <asp:DropDownList ID="inputPerfilAtencion" AutoPostBack="false" CssClass="form-select" runat="server">
                                        <asp:ListItem Selected="True" Value="0">Ninguno</asp:ListItem>
                                        <asp:ListItem Value="1">Perfil 1</asp:ListItem>
                                        <asp:ListItem Value="2">Perfil 2</asp:ListItem>
                                     </asp:DropDownList>
                                   </div>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-4">
                                   <label for="inputRecomendacionTerapeuta" class="form-label fw-bold">34. Recomendamos que la familia sea asignada al terapeuta</label>
                                   <div class="mb-3">
                                      <asp:DropDownList ID="inputRecomendacionTerapeuta" AutoPostBack="false" CssClass="form-select" runat="server">
                                        <asp:ListItem Selected="True" Value="0">Ninguno</asp:ListItem>
                                        <asp:ListItem Value="1">Terapeuta 1</asp:ListItem>
                                        <asp:ListItem Value="2">Terapeuta 2</asp:ListItem>
                                     </asp:DropDownList>
                                   </div>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputObservacionesAsignacion" class="form-label fw-bold">35. Obervaciones JUCONI - CV para la asignación</label>
                                    <br />

                                    <textarea id="inputObservacionesAsignacion" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label class="form-label fw-bold">36. Aceptar familia en Programa JUCONI Atención Familiar y enviar recomendación de asignación</label>
                                </div>
                            </div>

                            <div class="row align-items-center mt-2 mx-3 ps-2">
                                <div class="col-md-5 d-flex align-items-center">
                                  <button type="submit" class="btn btn-primary me-2 mt-3">
                                    <i class="fa-solid fa-floppy-disk" aria-hidden="true"></i> Guardar y enviar
                                  </button>
                                  <button type="submit" class="btn btn-primary mt-3">
                                    <i class="fa-solid fa-backward-fast" aria-hidden="true"></i> Regresar
                                  </button>
                                </div>
                            </div>

                        </div>
                    </div>
                  </div>
                </div>
                <!-- End -->
            </section>
        </form>
    </main>
</asp:Content>
