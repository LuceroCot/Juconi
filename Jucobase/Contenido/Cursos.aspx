<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Cursos.aspx.vb" Inherits="Jucobase.Cursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%= inputFechaInicio.ClientID %>").datepicker($.datepicker.regional["es"] = {
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

            $("#<%= inputFechaFin.ClientID %>").datepicker($.datepicker.regional["es"] = {
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
          <h1>Gestión de cursos</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Cursos</li>
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
                         Gestión de cursos</h5>

                        <div class="row align-items-center mt-3 mx-3">
                            <div class="col-md-4 d-flex align-items-center">
                              <button type="submit" class="btn btn-primary mt-1">
                                <i class="fa-sharp fa-solid fa-circle-plus" aria-hidden="true"></i> Nuevo
                              </button>
                            </div>
                        </div>

                        <div class="mt-4">
                            <h5 class="card-title fw-bold ps-4">&nbsp
                                Registro nuevo curso</h5>


                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-6">
                                  <label for="inputNuevoNombre" class="col-form-label fw-bold">Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNuevoNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <label for="inputNuevoTema" class="col-form-label fw-bold">Tema</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputNuevoTema" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Tema1</asp:ListItem>
                                      <asp:ListItem Value="2">Tema 2</asp:ListItem>
                                      <asp:ListItem Value="3">Tema 3</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mx-3 mt-3">
                                <div class="col-md-6">
                                    <label class="form-label fw-bold">Descripción</label>
                                    <br />

                                    <textarea class="form-control" rows="8" cols="15"></textarea>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-6">
                                  <label for="inputFechaInicio" class="col-form-label fw-bold">Fecha inicio</label>
                                  <div class="mb-3 position-relative">
                                     <i class="fa-regular fa-calendar position-absolute top-50 start-0 translate-middle-y"></i>
                                    <asp:TextBox ID="inputFechaInicio" runat="server" CssClass="form-control ps-aux pl-5" ></asp:TextBox>
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <label for="inputFechaFin" class="col-form-label fw-bold">Fecha fin</label>
                                  <div class="mb-3 position-relative">
                                    <i class="fa-regular fa-calendar position-absolute top-50 start-0 translate-middle-y"></i>
                                    <asp:TextBox ID="inputFechaFin" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3 ps-2">
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
                            <div class="row align-items-center mt-3 mx-3 ps-2">
                                <div class="col-md-3">
                                  <label for="inputNombre" class="col-form-label fw-bold">Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                                <div class="col-md-3">
                                  <label for="inputTema" class="col-form-label fw-bold">Tema</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputTema" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Tema1</asp:ListItem>
                                      <asp:ListItem Value="2">Tema 2</asp:ListItem>
                                      <asp:ListItem Value="3">Tema 3</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>
                                <div class="col-md-4 d-flex align-items-center">
                                  <button type="submit" class="btn btn-primary me-2 mt-3">
                                    <i class="fa fa-search" aria-hidden="true"></i> Buscar
                                  </button>
                                  <button type="submit" class="btn btn-primary mt-3">
                                    <i class="fa-solid fa-paintbrush" aria-hidden="true"></i> Limpiar
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
                                                    <th scope="col">ID</th>
                                                    <th scope="col">Nombre</th>
                                                    <th scope="col">Tema</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>1</td>
                                                    <td>Curso Uno</td>
                                                    <td>Desnutrido (2o grado)</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>2</td>
                                                    <td>Curso Dos</td>
                                                    <td>Moderadamente Desnutrido (1er grado)</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>3</td>
                                                    <td>Curso Tres</td>
                                                    <td>Desnutrido (2o grado)</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>4</td>
                                                    <td>Curso Cuatro</td>
                                                    <td>Moderadamente Desnutrido (1er grado)</td>
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
