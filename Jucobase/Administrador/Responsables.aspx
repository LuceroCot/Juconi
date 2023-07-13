<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Administrador/Admin.Master" CodeBehind="Responsables.aspx.vb" Inherits="Jucobase.Responsables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Gestión de responsables</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Responsables</li>
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
                         Gestión de responsables</h5>

                        <div class="row align-items-center mt-3 mx-3">
                            <div class="col-md-4 d-flex align-items-center">
                              <button type="submit" class="btn btn-primary mt-1">
                                <i class="fa-sharp fa-solid fa-circle-plus" aria-hidden="true"></i> Nuevo
                              </button>
                            </div>
                        </div>

                        <div class="mt-4">
                            <h5 class="card-title fw-bold ps-4">&nbsp
                                Registro de nuevo responsable</h5>


                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputNuevoNombre" class="col-form-label fw-bold">Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNuevoNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                                <div class="col-md-3">
                                  <label for="inputApellidos" class="col-form-label fw-bold">Apellidos</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputApellidos" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mx-3 mt-3">
                                <div class="col-md-3">
                                    <label for="inputEmail" class="col-form-label fw-bold">Email</label>
                                    <div class="mb-3">
                                        <asp:TextBox ID="inputEmail" runat="server" CssClass="form-control" placeholder="Tu correo"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row align-items-center mx-3 mt-3">
                                <div class="col-md-3">
                                  <label for="inputSubprograma" class="col-form-label fw-bold">Subprograma</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputSubprograma" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Subprograma 1</asp:ListItem>
                                      <asp:ListItem Value="3">Subprograma 2</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3 ps-2">
                                <div class="form-check ms-3">
                                    <input class="form-check-input" type="checkbox" id="activo">
                                    <label class="form-check-label" for="activo">Activo</label>
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
                            <div class="row align-items-center mt-3 mx-3 ps-2">
                                <div class="col-md-3">
                                  <label for="inputId" class="col-form-label fw-bold">ID</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputId" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                                <div class="col-md-3">
                                  <label for="inputNombre" class="col-form-label fw-bold">Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control"></asp:TextBox>
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
                                                    <th scope="col">Email</th>
                                                    <th scope="col">Subprograma</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>0</td>
                                                    <td>Juan Rodriguez</td>
                                                    <td>juan@juconi.org.mx</td>
                                                    <td>Subprograma 2</td>
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
