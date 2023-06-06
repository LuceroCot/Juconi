<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="Adicciones.aspx.vb" Inherits="Jucobase.Adicciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%= inputFechaReporte.ClientID %>").datepicker($.datepicker.regional["es"] = {
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
          <h1>Captura adicciones de beneficiario</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

        <form class="form-card row g-3" runat="server">
            <section class="section dashboard">
                <!-- Customers Card -->
                 <div class="col-xxl-4 col-xl-12 px-4">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                              Registro reporte de adicciones de beneficiario</h5>

                    
                            <div class="row d-inline-flex mt-3 ps-3 ms-2">
                                <div class="col">
                                    <label for="inputNru" class="form-label fw-bold">NRU</label>
                                    <asp:TextBox ID="inputNru" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                                <div class="col">
                                    <br />
                                    <button type="submit" class="btn btn-primary mt-2"> 
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                           Buscar
                                    </button>
                                </div>  
                            </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputNombre" class="form-label fw-bold">Nombre</label>
                                    <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                                
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputClave" class="form-label fw-bold">Clave de familia</label>
                                    <asp:TextBox ID="inputClave" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputApellidoPaterno" class="form-label fw-bold">Apellido Paterno</label>
                                    <asp:TextBox ID="inputApellidoPaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputFamilia" class="form-label fw-bold">Familia</label>
                                    <asp:TextBox ID="inputFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputApellidoMaterno" class="form-label fw-bold">Apellido Materno</label>
                                    <asp:TextBox ID="inputApellidoMaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                                <div class="col-sm-2 ps-5 mt-3">
                                    <label for="inputEdad" class="form-label fw-bold">Edad</label>
                                    <asp:TextBox ID="inputEdad" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 input-date mt-3">
                                    <label for="inputFechaReporte" class="form-label fw-bold">Fecha de reporte</label>
                                    <i class="fa-regular fa-calendar"></i>
                                    <asp:TextBox ID="inputFechaReporte" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputPrograma" class="form-label fw-bold">Programa</label>
                                    <asp:TextBox ID="inputPrograma" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>

                                <div class="col-sm-4 ps-5 mt-3">
                                     <label for="inputTerapeuta" class="form-label fw-bold">Terapeuta</label>
                                     <asp:TextBox ID="inputTerapeuta" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row mt-3" id="perfilAtencionFamiliar" style="display: ;">
                                <div class="col-sm-4 ps-5">
                                    <label for="inputAtencionFamiliar" class="form-label fw-bold">Modelo de Atención Familiar</label>
                                    <asp:DropDownList ID="inputAtencionFamiliar" AutoPostBack="false"
                                                    CssClass="form-select" runat="server">
                                        <asp:ListItem Selected="True" Value="1a">Atención familiar E-T</asp:ListItem>
                                        <asp:ListItem Value="2a">Atención Familiar Híbrida</asp:ListItem>
                                        <asp:ListItem Value="3a">Acompañamiento Breve</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-sm-4 ps-5">
                                    <label for="localAmbienteJuconi" class="form-label fw-bold">Localidad de Ambiente JUCONI</label>
                                    <asp:TextBox ID="localAmbienteJuconi" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputRolFamilia" class="form-label fw-bold">Rol en la familia</label>
                                    <asp:TextBox ID="inputRolFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                               
                                <div class="col-sm-4 ps-5 mt-3">
                                    <label for="inputAultoResponsable" class="form-label fw-bold">¿Es adulto responsable?</label>
                                    <asp:TextBox ID="inputAdultoResponsable" runat="server" CssClass="form-control" ></asp:TextBox>

                                    <div class="row mt-3" id="tutoria" style="display:;">
                                       <div class="col-sm-9">
                                           <label for="tutoriaLegal" class="form-label fw-bold">¿Tiene la tutoría legal?</label>
                                           <asp:TextBox ID="tutoriaLegal" runat="server" CssClass="form-control" ></asp:TextBox>
                                       </div>
                                    </div>
                                </div>
                            </div>

 
                        </div>
                      </div>
                    </div>
                    <!-- End Customers Card -->

                <!-- Adicciones -->
                 <div class="col-xxl-4 col-xl-12 px-4">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                           <h5 class="card-title fw-bold ps-4">&nbsp
                               <i class="fa-solid fa-wine-bottle fa-lg"></i>
                                &nbsp Adicciones </h5>

                          <div class="row mt-3">
                               <div class="col-sm-6 ps-5" ">
                                   <label class="form-label fw-bold">1. ¿Ha consumido alguna sustancia en los últimos 6 meses?</label>
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="consumo1" Checked="false" GroupName="ConsumoSustancias" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="consumo2" GroupName="ConsumoSustancias" runat="server" />&nbsp No
                                    </div>

                                   <p class="mt-2"><small class="form-text text-success">Si respuesta es "No", no llenar los demás campos</small></p>
                                </div>

                            </div>

                          <div class="row mt-3">
                               <label class="form-label fw-bold ps-5">2. Frecuencia de consumo de sustancias </label>

                               <div class="col-sm-6 ps-5 ms-2">
                                    <label for="inputAlcohol" class="form-label fw-bold">2.1 Alcohol</label>
                                    <div class="col-sm-7">
                                        <asp:DropDownList ID="inputAlcohol" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True">Frecuencia de consumo</asp:ListItem>
                                              <asp:ListItem Value="1">Experimental</asp:ListItem>
                                              <asp:ListItem Value="2">Social</asp:ListItem>
                                              <asp:ListItem Value="3">Abuso</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                </div>

                                <div class="col-sm-5 ps-5">
                                    <label for="inputTabaco" class="form-label fw-bold">2.2 Tabaco</label>
                                    <div class="col-sm-8">
                                        <asp:DropDownList ID="inputTabaco" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True">Frecuencia de consumo</asp:ListItem>
                                              <asp:ListItem Value="1">Experimental</asp:ListItem>
                                              <asp:ListItem Value="2">Social</asp:ListItem>
                                              <asp:ListItem Value="3">Abuso</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                          </div>


                          <div class="row mt-3">
                                <div class="col-sm-6 ps-5 ms-2">
                                   <label for="inputDrogas" class="form-label fw-bold">2.3 Drogas</label>
                                    <div class="col-sm-7">
                                        <asp:DropDownList ID="inputDrogas" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True">Frecuencia de consumo</asp:ListItem>
                                              <asp:ListItem Value="1">Experimental</asp:ListItem>
                                              <asp:ListItem Value="2">Social</asp:ListItem>
                                              <asp:ListItem Value="3">Abuso</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                             </div>

                          <div class="row mt-3">
                               <div class="col-sm-6 ps-5" ">
                                   <label class="form-label fw-bold">3. En los últimos 6 meses, ¿solicitó ayuda para disminuir el consumo de estas sustancias?</label>
                                   <!--<p class="">Si respuesta es "No", no llenar los demás campos</p>-->
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="solicitar1" Checked="false" GroupName="SolicitarAyuda" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="solicitar2" GroupName="SolicitarAyuda" runat="server" />&nbsp No
                                    </div>
                                </div>

                                <div class="col-sm-5 ps-5">
                                    <label class="form-label fw-bold">4. En los últimos 6 meses, ¿recibió ayuda para disminuir el consumo de estas sustancias?</label>
                                    <!--<p class="">Si respuesta es "No", no llenar los demás campos</p>-->
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="recibir1" Checked="false" GroupName="RecibirAyuda" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="recibir2" GroupName="RecibirAyuda" runat="server" />&nbsp No
                                    </div>
                                </div>
                          </div>

                          <div class="row mt-3">
                               <div class="col-sm-6 ps-5" ">
                                   <label for="inputRazonNA" class="form-label fw-bold">5. Razón por la cual no recibió o solicitó apoyo</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="inputRazonNA" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>



                                <div class="col-sm-5 ps-5">
                                    <label class="form-label fw-bold">6. ¿Ha notado cambios o progresado con el apoyo recibido?</label>
                                   <!--<p class="">Si respuesta es "No", no llenar los demás campos</p>-->
                                    <br />

                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="RadioButton1" Checked="false" GroupName="ProgresoApoyo" runat="server" />&nbsp Sí
                                    </div>
                                    <div class="form-check form-check-inline mt-2">
                                        <asp:RadioButton ID="RadioButton2" GroupName="ProgresoApoyo" runat="server" />&nbsp No
                                    </div>

                                   
                                </div>
                          </div>

                            <div class="row mt-3">
                               <div class="col-sm-6 ps-5" ">
                                     <label for="inputMejora" class="form-label fw-bold">7. Razón por la cual siente que podría mejorar más</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="inputMejora" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-3">
                               <div class="col-sm-6 ps-5">
                                   <label class="form-label fw-bold">8. Observaciones </label>
                                    <br />

                                   <div class="col-sm-10">
                                      <textarea class="form-control" rows="8" cols="15"></textarea>
                                   </div>
                               </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col ps-5 d-inline-block">
                                    <button type="submit" class="btn btn-primary">Guardar información </button>
                                    <button type="submit" class="btn btn-primary ms-1">Regresar </button>
                                </div>
                            </div>


                          </div>
                       </div>

                 </div>
                <!---Fin adicciones-->

            </section>
        </form>
    </main>
</asp:Content>
