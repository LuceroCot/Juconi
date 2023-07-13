<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Administrador/Admin.Master" CodeBehind="Grupos.aspx.vb" Inherits="Jucobase.Grupos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Gestión de grupos de acceso</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Grupos</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

        <form class="form-card row g-3 form-inline" runat="server">
            <section class="section dashboard">
                <!-- Customers Card -->
                <div class="col-xxl-12 col-xl-12 px-4">
                  <div class="card info-card customers-card">
                    <div class="card-body mt-3">
                        <h5 class="card-title fw-bold ps-4">&nbsp
                         Gestión de grupos de acceso</h5>

                        <div class="row align-items-center mt-3 mx-3">
                            <div class="col-md-4 d-flex align-items-center">
                              <button type="submit" class="btn btn-primary mt-1">
                                <i class="fa-sharp fa-solid fa-circle-plus" aria-hidden="true"></i> Nuevo
                              </button>
                            </div>
                        </div>

                        <div class="mt-4">
                            <h5 class="card-title fw-bold ps-4">&nbsp
                                Registro nuevo grupo</h5>


                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputNuevoGrupo" class="col-form-label fw-bold">Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNuevoGrupo" runat="server" CssClass="form-control"></asp:TextBox>
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
                                  <label for="inputNombreGrupo" class="col-form-label fw-bold">Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombreGrupo" runat="server" CssClass="form-control"></asp:TextBox>
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
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>0</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>1</td>
                                                    <td>Administradores</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>2</td>
                                                    <td>Captura</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>3</td>
                                                    <td>Captura/TE</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>4</td>
                                                    <td>Coordinadores</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>5</td>
                                                    <td>Tiempos especiales</td>
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
