<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Familias.aspx.vb" Inherits="Jucobase.Familias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main id="main" class="main">
        <div class="pagetitle">
          <h1>Gestión de familias</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Familias</li>
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
                         Gestión de familias</h5>

                        <div class="row align-items-center mt-3 mx-3">
                            <div class="col-md-5 d-flex align-items-center">
                              <button type="submit" class="btn btn-primary mt-1">
                                <i class="fa-sharp fa-solid fa-circle-plus" aria-hidden="true"></i> Nuevo 
                              </button>
                            </div>
                        </div>

                        <div class="mt-4">
                            <h5 class="card-title fw-bold ps-4">&nbsp
                                Registro nueva familia</h5>


                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputNuevaClaveFamilia" class="col-form-label fw-bold">Clave de familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNuevaClaveFamilia" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputNuevoNombre" class="col-form-label fw-bold">Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNuevoNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
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

                                <div class="col-md-3">
                                  <label for="inputResponsable" class="col-form-label fw-bold">Responsable</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputNuevoResponsable" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Marco Ramírez Ramírez</asp:ListItem>
                                    </asp:DropDownList>
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
                                  <label for="inputNombre" class="col-form-label fw-bold">Nombre de familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
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

                                <div class="col-md-3">
                                  <label for="inputResponsableFamilia" class="col-form-label fw-bold">Responsable</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputResponsableFamilia" AutoPostBack="false" CssClass="form-select" runat="server">
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
                                                    <th scope="col">Nombre de familia</th>
                                                    <th scope="col">Subprograma</th>
                                                    <th scope="col">Responsable</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>0000001</td>
                                                    <td>Perez Rodriguez.</td>
                                                    <td>Subprograma Dos</td>
                                                    <td>Ninguno</td>
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
