<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Beneficiario.aspx.vb" Inherits="Jucobase.Beneficiario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%= inputFechaNacimiento.ClientID %>").datepicker($.datepicker.regional["es"] = {
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
          <h1>Gestión de beneficiarios</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Beneficiario</li>
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
                         Gestión de beneficiarios</h5>

                        <div class="row align-items-center mt-3 mx-3">
                            <div class="col-md-4 d-flex align-items-center">
                              <button type="submit" class="btn btn-primary mt-1">
                                <i class="fa-sharp fa-solid fa-circle-plus" aria-hidden="true"></i> Nuevo beneficiario
                              </button>
                            </div>
                        </div>

                        <div class="mt-4">
                            <h5 class="card-title fw-bold ps-4">&nbsp
                                Registro nuevo beneficiario</h5>


                            <div class="row mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputClave" class="col-form-label fw-bold">Clave de familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputClave" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputNombreFamilia" class="col-form-label fw-bold">Nombre de familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombreFamilia" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-4 d-flex align-items-center">
                                  <button type="submit" class="btn btn-primary me-2 mt-3">
                                    <i class="fa-solid fa-house" aria-hidden="true"></i> Cambiar familia
                                  </button>
                               </div>
                            </div>

                            <div class="row mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputNru" class="col-form-label fw-bold">NRU</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNru" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                               
                                <div class="col-md-3">
                                  <label for="inputNombreBeneficiario" class="col-form-label fw-bold">Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombreBeneficiario" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputNuevoApellidoPaterno" class="col-form-label fw-bold">Apellido paterno</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNuevoApellidoPaterno" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                               
                                <div class="col-md-3">
                                  <label for="inputNuevoApellidoMaterno" class="col-form-label fw-bold">Apellido materno</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNuevoApellidoMaterno" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>
                            </div>

                            <div class="row mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputFechaNacimiento" class="col-form-label fw-bold">Fecha de nacimiento</label>
                                  <div class="mb-3 position-relative">
                                     <i class="fa-regular fa-calendar position-absolute top-50 start-0 translate-middle-y"></i>
                                    <asp:TextBox ID="inputFechaNacimiento" runat="server" CssClass="form-control ps-aux pl-5" ></asp:TextBox>
                                  </div>
                                </div>
                               
                                <div class="col-md-3">
                                  <label for="inputSexo" class="col-form-label fw-bold">Sexo</label>
                                  <div class="mb-3 position-relative">
                                   <label class="form-check-inline">
                                     <asp:RadioButton ID="mujer" runat="server" GroupName="sexoGroup" />
                                     <span class="form-check-label">Mujer</span>
                                   </label>
                                   <label class="form-check-inline ml-2">
                                     <asp:RadioButton ID="hombre" runat="server" GroupName="sexoGroup" />
                                     <span class="form-check-label">Hombre</span>
                                   </label>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputSexo" class="col-form-label fw-bold">¿Es adulto rsponsable?</label>
                                  <div class="mb-3 position-relative">
                                   <label class="form-check-inline">
                                     <asp:RadioButton ID="si" runat="server" GroupName="responsableGroup" />
                                     <span class="form-check-label">Sí</span>
                                   </label>
                                   <label class="form-check-inline ml-2">
                                     <asp:RadioButton ID="no" runat="server" GroupName="responsableGroup" />
                                     <span class="form-check-label">No</span>
                                   </label>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputSexo" class="col-form-label fw-bold">Clasificación niño</label>
                                  <div class="mb-3 position-relative">
                                   <label class="form-check-inline">
                                     <asp:RadioButton ID="nsc" runat="server" GroupName="clasificacionGroup" />
                                     <span class="form-check-label">NSC</span>
                                   </label>
                                   <label class="form-check-inline ml-2">
                                     <asp:RadioButton ID="ar" runat="server" GroupName="clasificacionGroup" />
                                     <span class="form-check-label">AR</span>
                                   </label>
                                  </div>
                                </div>
                            </div>

                            <div class="row align-items-center mt-3 mx-3">
                                <div class="col-md-3">
                                  <label for="inputNuevoResponsable" class="col-form-label fw-bold">Responsable</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputNuevoResponsable" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Marco Ramírez Ramírez</asp:ListItem>
                                    </asp:DropDownList>
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
                                  <label for="inputRol" class="col-form-label fw-bold">Rol familiar</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputRol" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Rol en familia 1</asp:ListItem>
                                      <asp:ListItem Value="2">Rol en familia 2</asp:ListItem>
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
                                  <label for="inputNruFamilia" class="col-form-label fw-bold">NRU</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNruFamilia" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputNombre" class="col-form-label fw-bold">Nombre</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputApellidoPaterno" class="form-label fw-bold">Apellido paterno</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputApellidoPaterno" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>

                                <div class="col-md-3">
                                  <label for="inputApellidoMaterno" class="form-label fw-bold">Apellido materno</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputApellidoMaterno" runat="server" CssClass="form-control"></asp:TextBox>
                                  </div>
                                </div>                       
                            </div>

                            <div class="row align-items-center mt-3 mx-3 ps-2">
                                <div class="col-md-3">
                                  <label for="inputClaveFamilia" class="col-form-label fw-bold">Clave de familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputClaveFamilia" runat="server" CssClass="form-control"></asp:TextBox>
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

                                <div class="col-md-3">
                                  <label for="inputSubprogramaBeneficiario" class="col-form-label fw-bold">Subprograma</label>
                                  <div class="mb-3">
                                    <asp:DropDownList ID="inputSubprogramaBeneficiario" AutoPostBack="false" CssClass="form-select" runat="server">
                                      <asp:ListItem Selected="True" Value="1">Ninguno</asp:ListItem>
                                      <asp:ListItem Value="2">Subprograma 1</asp:ListItem>
                                      <asp:ListItem Value="3">Subprograma 2</asp:ListItem>
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
                                    <div class="col-sm-10">
                                        <table class="table table-sm table-hover table-bordered table-striped text-center align-middle">
                                            <thead>
                                                <tr class="text-dark">
                                                    <th scope="col"></th>
                                                    <th scope="col">NRU</th>
                                                    <th scope="col">Nombre</th>
                                                    <th scope="col">Clave familia</th>
                                                    <th scope="col">Nombre familia</th>
                                                    <th scope="col">Responsable</th>
                                                    <th scope="col">Subprograma</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td scope="row">>>></td>
                                                    <td>1</td>
                                                    <td>Gonzalo Perez Rodriguez</td>
                                                    <td>0000001</td>
                                                    <td>Perez Rodriguez.</td>
                                                    <td>Juan</td>
                                                    <td>Subprograma Uno</td>
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
