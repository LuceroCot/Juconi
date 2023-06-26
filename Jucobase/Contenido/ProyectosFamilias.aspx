<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="ProyectosFamilias.aspx.vb" Inherits="Jucobase.ProyectosFamilias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%= inputFechaEntrada.ClientID %>").datepicker($.datepicker.regional["es"] = {
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
          <h1>Asignar familia a proyecto</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Proyectos - Familias</li>
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
                         Asignar familia a proyecto</h5>

                        <div class="row align-items-center mt-3 mx-3">
                            <div class="col-md-5 d-flex align-items-center">
                              <button type="submit" class="btn btn-primary mt-1">
                                <i class="fa-solid fa-user" aria-hidden="true"></i> Asignar nueva familia a proyecto 
                              </button>
                            </div>
                        </div>

                        <div class="mt-4">
                            <h5 class="card-title fw-bold ps-4">&nbsp
                                Asignar nueva familia a proyecto</h5>


                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputClaveFamilia" class="col-form-label fw-bold">Clave de familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputClaveFamilia" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                               <div class="col-md-4 d-flex align-items-center">
                                  <button type="submit" class="btn btn-primary me-2 mt-3">
                                    <i class="fa fa-search" aria-hidden="true"></i> Buscar beneficiario
                                  </button>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputSubprograma" class="col-form-label fw-bold">Subprograma</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputSubprograma" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputClave" class="col-form-label fw-bold">Clave de familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputClave" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputFamilia" class="col-form-label fw-bold">Familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputFamilia" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputProyecto" class="col-form-label fw-bold">Proyecto</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputProyecto" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Proyecto 1</asp:ListItem>
                                      <asp:ListItem Value="3">Proyecto 2</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputFechaInicio" class="col-form-label fw-bold">Fecha entrada</label>
                                  <div class="mb-3 position-relative">
                                     <i class="fa-regular fa-calendar position-absolute top-50 start-0 translate-middle-y"></i>
                                    <asp:TextBox ID="inputFechaEntrada" runat="server" CssClass="form-control ps-aux pl-5" ></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputEnProyecto" class="col-form-label fw-bold">¿En proyecto?</label>
                                  <div class="mb-3 position-relative">
                                   <label class="form-check-inline">
                                     <asp:RadioButton ID="si" runat="server" GroupName="proyectoGroup" />
                                     <span class="form-check-label">Sí</span>
                                   </label>
                                   <label class="form-check-inline ml-2">
                                     <asp:RadioButton ID="no" runat="server" GroupName="proyectoGroup" />
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



                        <div>
                            
                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputFamiliaClave" class="col-form-label fw-bold">Clave de familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputFamiliaClave" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputSubprogramaFamilia" class="col-form-label fw-bold">Subprograma</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputSubprogramaFamilia" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Subprograma 1</asp:ListItem>
                                      <asp:ListItem Value="3">Subprograma 2</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputProyectoFamilia" class="col-form-label fw-bold">Proyecto</label>
                                  <div class="mb-3">
                                     <asp:DropDownList ID="inputProyectoFamilia" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Proyecto 1</asp:ListItem>
                                      <asp:ListItem Value="3">Proyecto 2</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>

                                <div class="col-md-4 d-flex align-items-center">
                                  <button type="submit" class="btn btn-primary me-2 mt-3">
                                    <i class="fa fa-search" aria-hidden="true"></i> Buscar
                                  </button>
                                </div>
                            </div>

                           <div class="mt-3 mx-3">
                                <div class="row mt-4 table-responsive justify-content-center" style="width: 100%">
                                    <br />
                                    <br />
                                    <div class="col-sm-11">
                                        <table class="table table-sm table-hover table-bordered table-striped text-center align-middle">
                                            <thead>
                                                <tr class="text-dark">
                                                    <th scope="col"></th>
                                                    <th scope="col">Clave de familia</th>
                                                    <th scope="col">Familia</th>
                                                    <th scope="col">Subprograma</th>
                                                    <th scope="col">Proyecto</th>
                                                    <th scope="col">¿En proyecto?</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>0001</td>
                                                    <td>Perez Rodriguez.</td>
                                                    <td>Subprograma Dos</td>
                                                    <td>Proyecto Dos</td>
                                                    <td>No</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
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
