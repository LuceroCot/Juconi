<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Administrador/Admin.Master" CodeBehind="Usr.aspx.vb" Inherits="Jucobase.Usr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main id="main" class="main">
        <div class="pagetitle">
          <h1>Gestión de usuarios</h1>
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
                         Gestión de usuarios</h5>

                        <div class="row align-items-center mt-3 mx-3">
                            <div class="col-md-4 d-flex align-items-center">
                              <button type="submit" class="btn btn-primary mt-1">
                                <i class="fa-sharp fa-solid fa-circle-plus" aria-hidden="true"></i> Nuevo
                              </button>
                            </div>
                        </div>

                        <div class="mt-4">
                            <h5 class="card-title fw-bold ps-4">&nbsp
                                Registro nuevo usuario</h5>


                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputNuevoNombre" class="col-form-label fw-bold">Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNuevoNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputNuevosApellidos" class="col-form-label fw-bold">Apellidos</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNuevosApellidos" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputNuevoEmail" class="form-label fw-bold">Email</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNuevoEmail" runat="server" CssClass="form-control" ></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputNuevaContraseña" class="col-form-label fw-bold">Contraseña</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNuevaContraseña" runat="server" CssClass="form-control" type="password"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputOrganizacion" class="col-form-label fw-bold">Organización</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputOrganizacion" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Fundación JUCONI MÉXICO AC</asp:ListItem>
                                      <asp:ListItem Value="3">Fundación Martínez</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputGrupo" class="col-form-label fw-bold">Grupo</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputSubprograma" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Administradores</asp:ListItem>
                                      <asp:ListItem Value="3">Captura</asp:ListItem>
                                      <asp:ListItem Value="4">Captura/TE</asp:ListItem>
                                      <asp:ListItem Value="5">Coordinadores</asp:ListItem>
                                      <asp:ListItem Value="6">Tiempos especiales</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputResponsable" class="col-form-label fw-bold">Responsable</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputResponsable" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Marco Ramírez Ramírez</asp:ListItem>
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
                                  <label for="inputNombreUsuario" class="col-form-label fw-bold">Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputApellidosUsuario" class="form-label fw-bold">Apellidos</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputApellidoPaterno" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputOrganizacionUsuario" class="col-form-label fw-bold">Organización</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputOrganizacionUsuario" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Fundación JUCONI MÉXICO AC</asp:ListItem>
                                      <asp:ListItem Value="3">Fundación Martínez</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>                       
                            </div>

                            <div class="row align-items-center mt-3 mx-3 ps-2">
                                <div class="col-md-3">
                                  <label for="inputGrupoUsuario" class="col-form-label fw-bold">Grupo</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputGrupoUsuario" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Administradores</asp:ListItem>
                                      <asp:ListItem Value="3">Captura</asp:ListItem>
                                      <asp:ListItem Value="4">Captura/TE</asp:ListItem>
                                      <asp:ListItem Value="5">Coordinadores</asp:ListItem>
                                      <asp:ListItem Value="6">Tiempos especiales</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputResponsableUsuario" class="col-form-label fw-bold">Responsable</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputResponsableUsuario" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Marco Ramírez Ramírez</asp:ListItem>
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
                                                <th scope="col">Organización</th>
                                                <th scope="col">Grupo</th>
                                                <th scope="col">Estado</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td scope="row">>>></td>
                                                <td>1</td>
                                                <td>Admin</td>
                                                <td>datos@juconi.org.mx</td>
                                                <td>Ninguno</td>
                                                <td>Ninguno</td>
                                                <td>ACTIVO</td>
                                            </tr>
                                        </tbody>
                                    </table>
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
