<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Master.Master" CodeBehind="InstrumentoViolenciaFamiliar.aspx.vb" Inherits="Juconi_Formularios.InstrumentoViolenciaFamiliar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
        <main id="main" class="main">
        <div class="pagetitle">
          <h1>Instrumento de Violencia Familiar </h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

        <form class="form-card row g-3" runat="server">
            <section class="section dashboard">
                <!-- Card -->
                    <div class="col-xxl-4 col-xl-12 px-4">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                                Captura de Instrumento de Violencia Familiar </h5>

                    
                                <div class="row mt-3">
                                  <div class="col-sm-4 ps-5">
                                      <label for="inputNru" class="form-label fw-bold">NRU</label>
                                      <asp:TextBox ID="inputNru" runat="server" CssClass="form-control" ></asp:TextBox>
                                  </div>
                                  <div class="col-md-4 mt-4 pt-2">
                                      <button type="submit" class="btn btn-primary">
                                          <i class="fa fa-search" aria-hidden="true"></i>
                                          Buscar</button>
                                  </div>

                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="inputNombre" class="form-label fw-bold">Nombre</label>
                                        <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="inputClave" class="form-label fw-bold">Clave de familia</label>
                                        <asp:TextBox ID="inputClave" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="inputAp" class="form-label fw-bold">Apellido Paterno</label>
                                        <asp:TextBox ID="inputAp" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="inputFam" class="form-label fw-bold">Familia</label>
                                        <asp:TextBox ID="inputFam" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="inputAm" class="form-label fw-bold">Apellido Materno</label>
                                        <asp:TextBox ID="inputAm" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <label for="inputEdad" class="form-label fw-bold">Edad</label>
                                        <asp:TextBox ID="inputEdad" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
   
                                    <div class="col-sm-4 ps-5 input-date">
                                        <label for="inputFechaReporte" class="form-label fw-bold">Fecha de reporte</label>
                                        <i class="fa-regular fa-calendar"></i>
                                        <asp:TextBox ID="inputFechaReporte" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                    </div>
                                </div>


                                <div class="row mt-3">
                                   <div class="col-sm-4 ps-5">
                                        <label for="inputPrograma" class="form-label fw-bold">Programa</label>
                                        <asp:TextBox ID="inputPrograma" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="col-sm-4">
                                        <label for="inputTera" class="form-label fw-bold">Terapeuta</label>
                                        <asp:TextBox ID="inputTera" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3" id="perfilA" style="display: ;">
                                   <div class="col-sm-4 ps-5">
                                        <label for="inputAtt" class="form-label fw-bold">Modelo de Atención Familiar</label>
                                        <asp:DropDownList ID="inputAtt" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="1a">Atención familiar E-T</asp:ListItem>
                                              <asp:ListItem Value="2a">Atención Familiar Híbrida</asp:ListItem>
                                              <asp:ListItem Value="3a">Acompañamiento Breve</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="inputPrograma" class="form-label fw-bold">Localidad de Ambiente JUCONI</label>
                                        <asp:TextBox ID="localAmbienteJuconi" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="inputRol" class="form-label fw-bold">Rol en la familia</label>
                                        <asp:TextBox ID="inputRol" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="inputResponsable" class="form-label fw-bold">¿Es adulto responsable?</label>
                                        <asp:TextBox ID="inputResponsable" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <div class="row mt-3" id="tutoria" style="display:;">
                                            <div class="col-sm-9">
                                                <label class="form-label fw-bold">¿Tiene la tutoría legal?</label>
                                                <asp:TextBox ID="tutoriaLegal" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <br />
                                <br />
                                <br />
                                <br />

                                <h5 class="card-title fw-bold ps-4">Violencia física</h5>

                                <div class="row mt-3">
  <div class="col-sm-11 mx-auto">
    <div class="table-responsive">
      <table class="table table-bordered table-hover">
        <thead>
          <tr class="small fw-bold text-danger">
            <th scope="col">Encabezado 1</th>
            <th scope="col">Encabezado 2</th>
            <th scope="col">Encabezado 3</th>
            <th scope="col">Encabezado 4</th>
            <th scope="col">Encabezado 5</th>
            <th scope="col">Encabezado 6</th>
            <th scope="col">Encabezado 7</th>
            <th scope="col">Encabezado 8</th>
            <th scope="col">Encabezado 9</th>
            <th scope="col">Encabezado 10</th>
            <th scope="col">Encabezado 11</th>
            <th scope="col">Encabezado 12</th>
            <th scope="col">Encabezado 13</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Contenido de la celda 1</td>
            <td>Contenido de la celda 2</td>
            <td>Contenido de la celda 3</td>
            <td>Contenido de la celda 4</td>
            <td>Contenido de la celda 5</td>
            <td>Contenido de la celda 6</td>
            <td>Contenido de la celda 7</td>
            <td>Contenido de la celda 8</td>
            <td>Contenido de la celda 9</td>
            <td>Contenido de la celda 10</td>
            <td>Contenido de la celda 11</td>
            <td>Contenido de la celda 12</td>
            <td>Contenido de la celda 13</td>
          </tr>
          <!-- Agregar más filas aquí -->
        </tbody>
      </table>
    </div>
  </div>
</div>

<style>
  .table-responsive {
    overflow-x: auto;
  }
</style>


                                <div class="row mt-3">
                                    <div class="col-sm-11 mx-auto">


                                        <!--
                                        <table class="table table-bordered" style="table-layout:fixed; overflow-x:auto">

                                            <thead>
                                                <tr class="small fw-bold text-danger">
                                                    <td class="col-sm-2"></td>
                                                    <td class="col-sm-1 text-nowrap text-truncate">Frecuencia</td>
                                                    <td class="col-sm-1">Puntaje</td>
                                                    <td class="col-sm-1">Periodo</td>

                                                    <td class="col-sm-1">Cuidadora</td>
                                                    <td class="col-sm-1">Cuidador</td>
                                                    <td class="col-sm-1">Niño</td>
                                                    <td class="col-sm-1">Adolescente</td>
                                                    <td class="col-sm-1">Otros</td>

                                                    <td class="col-sm-1">Cuidadora</td>
                                                    <td class="col-sm-1">Cuidador</td>
                                                    <td class="col-sm-1">Niño</td>
                                                    <td class="col-sm-1">Adolescente</td>
                                                    <td class="col-sm-1">Otros</td>
                                                </tr>
                                            </thead>

                                            <tbody class="align-middle">
                                                <!-- Fila 1
                                                <tr>
                                                    <td class="fw-bold" style="font-size: small"> Acciones que coartan el movimiento o limitan la acción: </td>
                                                    <td><asp:TextBox ID="TextBox1" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox2" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox3" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox4" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox5" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                    
                                                    <td><asp:TextBox ID="TextBox6" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox7" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox8" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox9" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox10" CssClass="form-control" runat="server">0</asp:TextBox></td>

                                                    <td><asp:TextBox ID="TextBox11" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox12" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox13" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                </tr>

                                            </tbody>
                                        </table>
                                            -->
                                    </div>
                                </div>

                                <br />
                                <br />

                                <div class="row mt-3">
                                    <div class="col ps-5 d-inline-block">
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                        <button type="submit" class="btn btn-primary ms-1">Regresar </button>
                                    </div>
                                </div>

                                <br />
                                <br />
                        </div>
                      </div>
                    </div>
                <!-- End Card -->
            </section>
        </form>
    </main>
</asp:Content>
