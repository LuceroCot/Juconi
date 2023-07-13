<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Genograma.aspx.vb" Inherits="Jucobase.Genograma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        function previsualizarDocumento(input) {
            if (input.files && input.files[0]) {
                var documento = new FileReader();

                documento.onload = function (e) {
                    document.getElementById('<%= iframePrevisualizar.ClientID %>').setAttribute('src', e.target.result);
                }

                documento.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Captura de genograma - familiograma</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Genograma - familiograma</li>
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
                         Registro de genograma - familiograma</h5>

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


                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputSituacionPeticion" class="form-label fw-bold">4. Descripción de la situación para la petición de ayuda (en palabras de población)</label>
                                    <br />

                                    <textarea id="inputSituacionPeticion" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-4">
                                   <label for="inputNombreSolicitante" class="form-label fw-bold">5. Genograma</label>
                                   <div class="mb-3">
                                      <asp:FileUpload  ID="documentoGenograma" runat="server" CssClass="form-control" onchange="previsualizarDocumento(this)"/>
                                   </div>
                                </div>
                            </div>

                            <div class="row mx-3 mt-3 ">
                                <div class="col-md-8">
                                    <iframe id="iframePrevisualizar" runat="server" height="500" style="border: solid rgba(0, 0, 0, 0.3); width: 100%"></iframe>
                                 </div>
                            </div>

                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputExplicacionGenograma" class="form-label fw-bold">6. Explicación de genograma (en palabras de la población)</label>
                                    <br />

                                    <textarea id="inputExplicacionGenograma" class="form-control" rows="5" cols="10"></textarea>
                                </div>
                            </div>
                           
                            <div class="row mx-3 mt-3">
                                <div class="col-md-8">
                                    <label for="inputObservaciones" class="form-label fw-bold">7. Obervaciones JUCONI</label>
                                    <br />

                                    <textarea id="inputObservaciones" class="form-control" rows="5" cols="10"></textarea>
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
