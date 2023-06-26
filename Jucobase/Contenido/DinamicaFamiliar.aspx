<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="DinamicaFamiliar.aspx.vb" Inherits="Jucobase.DinamicaFamiliar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Captura de dinámica familiar</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Dinámica familiar</li>
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
                         Registro de dinámica familiar</h5>

                       <div class="mt-4">
                         
                            <div class="row mt-3 mx-3">
                                <div class="col-md-4">
                                 <label for="inputFamilia" class="form-label fw-bold">1. Familia</label>
                                  <div class="mb-3">
                                    <asp:TextBox ID="inputFamilia" runat="server" CssClass="form-control"></asp:TextBox>
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

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputSituacionPeticion" class="form-label fw-bold">4. Descripción de la situación para la petición de ayuda (en palabras de población)</label>
                                    <br />

                                    <textarea id="inputSituacionPeticion" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputObservaciones" class="form-label fw-bold">5. Obervaciones JUCONI</label>
                                    <br />

                                    <textarea id="inputObservaciones" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>

                            <div class="row mt-3 mx-3">
                                <div class="col-md-7">
                                    <label for="inputNombre" class="form-label fw-bold">6.  ¿Se considera familia candidata a Atención Familiar?</label>
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
