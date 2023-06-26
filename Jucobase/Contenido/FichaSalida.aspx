<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="FichaSalida.aspx.vb" Inherits="Jucobase.FichaSalida" %>
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
          <h1>Captura de ficha de salida</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Ficha de salida</li>
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
                         Registro de ficha de salida</h5>

                       <div class="mt-4">
                         
                            <div class="row mt-3 mx-3">
                                <div class="col-md-4">
                                 <label for="inputFamilia" class="form-label fw-bold">1. Familia</label>
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
                                  <label for="inputLlegada" class="col-form-label fw-bold">7. ¿Cómo llegó a JUCONI?</label>
                                  <div class="mb-3">
                                     <asp:TextBox ID="inputLlegada" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputSituacionPeticion" class="form-label fw-bold">8. Descripción de la situación para la petición de ayuda (en palabras de población)</label>
                                    <br />

                                    <textarea id="inputSituacionPeticion" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputRazon" class="form-label fw-bold">9. La familia no pasa a formar parte del Programa JUCONI Atención familiar derivado de:</label>
                                    <br />
                                    
                                    <table>
                                        <tr>
                                            <td> <asp:CheckBox ID="razon1" runat="server" />&nbsp El programa no atiende las necesidades de atención de la familia </td>
                                        </tr>
                                        <tr>
                                            <td> <asp:CheckBox ID="razon2" runat="server" />&nbsp La familia no se encuentra en condiciones de pobreza extrema</td>                         
                                        </tr>

                                        <tr>
                                            <td> <asp:CheckBox ID="razon3" runat="server" />&nbsp La familia perdio o no tuvo interes en participar en el programa</td>
                                        </tr>
                                        <tr>
                                            <td> <asp:CheckBox ID="razon4" runat="server" />&nbsp Se perdió el contacto con la familiar</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputOtraRazon" class="col-form-label fw-bold">Otro</label>
                                  <div class="mb-3">
                                     <asp:TextBox ID="inputOtraRazon" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-4">
                                  <label for="inputLugarCanalizado" class="col-form-label fw-bold">10. Familia canalizada a:</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputLugarCanalizado" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="0">Otro</asp:ListItem>
                                      <asp:ListItem Value="1">Lugar 1</asp:ListItem>
                                      <asp:ListItem Value="2">Lugar 2</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>

                                <div class="col-md-4">
                                  <label for="inputOtroCanalizado" class="col-form-label fw-bold">10.1 Otro (especificar)</label>
                                  <div class="mb-3">
                                     <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputObservaciones" class="form-label fw-bold">11. Obervaciones JUCONI</label>
                                    <br />

                                    <textarea id="inputObservaciones" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>

                            <div class="row mt-2 mx-3">
                                <div class="col-md-6">
                                  <label for="inputNoRegistro" class="col-form-label fw-bold">12. No registrar familia como parte del Programa Atención Familiar</label>
                                  <div class="mb-3 position-relative">
                                       <label class="form-check-inline ml-2">
                                         <asp:RadioButton ID="noRegistro" runat="server" GroupName="registroGroup" />
                                         <span class="form-check-label">No registro</span>
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
