<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="PrimerContacto.aspx.vb" Inherits="Jucobase.PrimerContacto" %>
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
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main id="main" class="main">
        <div class="pagetitle">
          <h1>Captura de primer contacto</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

        <form class="form-card row g-3 form-inline" runat="server">
            <section class="section dashboard">
                <!-- Customers Card -->
                <div class="col-xxl-4 col-xl-12 px-4">
                  <div class="card info-card customers-card">
                    <div class="card-body mt-3">
                        <h5 class="card-title fw-bold ps-4">&nbsp
                         Registro de primer contacto</h5>

                       <div class="mt-4">
                         
                            <div class="row mt-3 mx-3">
                                <div class="col-md-4">
                                 <label for="inputNombre" class="form-label fw-bold">1. Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control"></asp:TextBox>
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
                                        
                                    <div class="col-md-6">
                                     <label for="inputLatitud" class="form-label fw-bold">5.1 Latitud</label>
                                      <div class="mb-3">
                                        <asp:TextBox ID="inputLatitud" runat="server" CssClass="form-control"></asp:TextBox>
                                      </div> 
                                    </div>

                                    <div class="col-md-6">
                                     <label for="inputLongitud" class="form-label fw-bold">5.2 Longitud</label>
                                      <div class="mb-3">
                                        <asp:TextBox ID="inputLongitud" runat="server" CssClass="form-control"></asp:TextBox>
                                      </div> 
                                    </div>
                                </div>
                            </div>
                          
                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                 <label for="inputFechaContacto" class="form-label fw-bold">6. Fecha de primer contacto</label>
                                  <div class="mb-3 position-relative">
                                     <i class="fa-regular fa-calendar position-absolute top-50 start-0 translate-middle-y"></i>
                                    <asp:TextBox ID="inputFechaContacto" runat="server" CssClass="form-control ps-aux pl-5" ></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputLugarContacto" class="col-form-label fw-bold">7. Lugar de primer contacto</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputLugarContacto" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="0">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="1">Lugar 1</asp:ListItem>
                                      <asp:ListItem Value="2">Lugar 2</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>

                                <div class="col-md-4">
                                  <label for="inputLlegada" class="col-form-label fw-bold">8. ¿Cómo llegó a JUCONI?</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputLlegada" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="0">Otro</asp:ListItem>
                                      <asp:ListItem Value="1">Forma 1</asp:ListItem>
                                      <asp:ListItem Value="2">Forma 2</asp:ListItem>
                                    </asp:DropDownList>
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
                                    <asp:DropDownList ID="inputInstanciaGubernamental" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="0">Otro</asp:ListItem>
                                      <asp:ListItem Value="1">Instancia 1</asp:ListItem>
                                      <asp:ListItem Value="2">Instancia 2</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-3 mx-3">
                                <div class="col-md-4">
                                  <label for="inputRedSocial" class="form-label fw-bold">8.6 Tipo de red social</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputRedSocial" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="0">Otro</asp:ListItem>
                                      <asp:ListItem Value="1">Red social 1</asp:ListItem>
                                      <asp:ListItem Value="2">Red social 2</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>
                            </div>
                          
                            <div class="mt-3 mx-3">
                               <label class="form-label fw-bold mx-3">9. Nombre y edad de niña, niño o adolescente</label>
                               <div class="row mt-4 table-responsive justify-content-center" style="width: 100%">
                                 <div class="col-sm-8">
                                    <table class="table table-sm table-hover table-bordered table-striped text-center align-middle">
                                        <thead>
                                            <tr class="text-dark">
                                                <th scope="col">Nombre</th>
                                                <th scope="col">Edad</th>
                                                <th scope="col">Parentesco con persona responsable</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <asp:DropDownList ID="inputParentesco1" AutoPostBack="false" CssClass="form-select" runat="server">
                                                      <asp:ListItem Selected="True" Value="0">Otro</asp:ListItem>
                                                      <asp:ListItem Value="1">Parentesco 1</asp:ListItem>
                                                      <asp:ListItem Value="2">Parentesco 2</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
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

                            <div class="row mt-3 mx-3">
                                <div class="col-md-7">
                                    <label for="inputNombre" class="form-label fw-bold">12.  ¿Se considera familia candidata a Atención Familiar?</label>
                                    <div class="mb-3 position-relative">
                                       <label class="form-check-inline">
                                         <asp:RadioButton ID="si" runat="server" GroupName="candidatoGroup" />
                                         <span class="form-check-label">Sí</span>
                                       </label>
                                       <label class="form-check-inline ml-2">
                                         <asp:RadioButton ID="no" runat="server" GroupName="candidatoGroup" />
                                         <span class="form-check-label">No</span>
                                       </label>
                                    </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-2 mx-3 ps-2">
                                <div class="col-md-4 d-flex align-items-center">
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
                </div>

                <!-- End Customers Card -->
            </section>
        </form>
    </main>
</asp:Content>
