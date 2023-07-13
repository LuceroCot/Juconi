<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="CursosDeResponsables.aspx.vb" Inherits="Jucobase.CursosDeResponsables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Asignar responsable a curso</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Cursos de los responsables</li>
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
                         Asignar responsable a curso</h5>

                        <div class="row align-items-center mt-3 mx-3">
                            <div class="col-md-4 d-flex align-items-center">
                              <button type="submit" class="btn btn-primary mt-1">
                                <i class="fa-sharp fa-solid fa-circle-plus" aria-hidden="true"></i> Nuevo
                              </button>
                            </div>
                        </div>

                        <div class="mt-4">
                            <h5 class="card-title fw-bold ps-4">&nbsp
                                Información del responsable seleccionado</h5>


                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-6">
                                  <label for="inputNuevoResponsable" class="col-form-label fw-bold">Responsable</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputNuevoResponsable" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Juan Rodríguez</asp:ListItem>
                                      <asp:ListItem Value="2">Ninguno</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>

                                <div class="col-md-6">
                                  <label for="inputNuevoCurso" class="col-form-label fw-bold">Curso</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputNuevoCurso" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Curso 1</asp:ListItem>
                                      <asp:ListItem Value="2">Curso 2</asp:ListItem>
                                      <asp:ListItem Value="3">Curso 3</asp:ListItem>
                                    </asp:DropDownList>
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
                                  <label for="inputResponsable" class="col-form-label fw-bold">Responsable</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputResponsable" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Juan Rodríguez</asp:ListItem>
                                      <asp:ListItem Value="2">Ninguno</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputCurso" class="col-form-label fw-bold">Curso</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputCurso" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Curso 1</asp:ListItem>
                                      <asp:ListItem Value="2">Curso 2</asp:ListItem>
                                      <asp:ListItem Value="3">Curso 3</asp:ListItem>
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
                                                    <th scope="col">ID</th>
                                                    <th scope="col">Curso</th>
                                                    <th scope="col">ID Responsable</th>
                                                    <th scope="col">Responsable</th>
                                                    <th scope="col">Subprograma</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>1</td>
                                                    <td>Curso Uno</td>
                                                    <td>1</td>
                                                    <td>Juan Rodríguez Rodríguez</td>
                                                    <td>Subprograma dos</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>2</td>
                                                    <td>Curso Dos</td>
                                                    <td>1</td>
                                                    <td>Juan Rodríguez Rodríguez</td>
                                                    <td>Subprograma dos</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>3</td>
                                                    <td>Curso Tres</td>
                                                    <td>1</td>
                                                    <td>Juan Rodríguez Rodríguez</td>
                                                    <td>Subprograma dos</td>
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
