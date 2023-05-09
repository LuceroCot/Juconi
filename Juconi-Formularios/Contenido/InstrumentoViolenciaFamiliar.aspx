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
                <div class="row justify-content-center">
                    <div class="col-xl-12">
                        <div class="card overflow-auto">
                            <div class="card-body mt-3">
                              <h5 class="card-title fw-bold ps-3">&nbsp Captura de Instrumento de Violencia Familiar </h5>

                                <div class="row d-inline-flex ps-3 mt-3">
                                    <div class="col">
                                        <label for="inputNru" class="form-label fw-bold">NRU</label>
                                         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>
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
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputNombre" class="form-label fw-bold">Nombre</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputClave" class="form-label fw-bold">Clave de familia</label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputApellidoPaterno" class="form-label fw-bold">Apellido Paterno</label>
                                        <asp:TextBox ID="inputApellidoPaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputFamilia" class="form-label fw-bold">Familia</label>
                                        <asp:TextBox ID="inputFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputApellidoMaterno" class="form-label fw-bold">Apellido Materno</label>
                                        <asp:TextBox ID="inputApellidoMaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                     </div>
                                     <div class="col-sm-2 ps-4 mt-3">
                                        <label for="inputEdad" class="form-label fw-bold">Edad</label>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" ></asp:TextBox>
                                     </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 ps-4 input-date mt-3">
                                        <label for="inputFechaReporte" class="form-label fw-bold">Fecha de reporte</label>
                                        <i class="fa-regular fa-calendar"></i>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                   <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputPrograma" class="form-label fw-bold">Programa</label>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputTerapeuta" class="form-label fw-bold">Terapeuta</label>
                                        <asp:TextBox ID="inputTerapeuta" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3" id="perfilAtencionFamiliar" style="display: ;">
                                   <div class="col-sm-4 ps-4">
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
                                    <div class="col-sm-4 ps-4">
                                        <label for="localAmbienteJuconi" class="form-label fw-bold">Localidad de Ambiente JUCONI</label>
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputRolFamilia" class="form-label fw-bold">Rol en la familia</label>
                                        <asp:TextBox ID="inputRolFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4 ps-4 mt-3">
                                        <label for="inputAultoResponsable" class="form-label fw-bold">¿Es adulto responsable?</label>
                                        <asp:TextBox ID="inputAdultoResponsable" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <div class="row mt-3" id="tutoria" style="display:;">
                                            <div class="col-sm-9">
                                                <label for="tutoriaLegal" class="form-label fw-bold">¿Tiene la tutoría legal?</label>
                                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <br /><br />

                                <!-- Tabla -->
                                <div class="row w-100">
                                    <div class="col mx-4 w-100">
                                  
                                      <table class="table-responsive">
                                        <thead>
                                          <tr class="text-center">
                                              <th scope="col" class="px-1" >&nbsp</th>
                                              <th scope="col" >Item 1</th>
                                              <th scope="col" >Item 3</th>
                                              <th scope="col" >Item 4</th>
                                              <th scope="col" >Item 5</th>
                                              <th scope="col" >Item 11</th>
                                              <th scope="col" >Item 12</th>
                                              <th scope="col" >Item 14</th>
                                              <th scope="col" >Item 28</th>
                                              <th scope="col" >Item 39</th>
                                              <th scope="col" >Item 40</th>
                                              <th scope="col" >&nbsp</th>
                                              <th scope="col" >Suma</th>
                                              <th scope="col" >&nbsp</th>
                                              <th scope="col">Puntaje <br />T (%)</th>
                                              <th scope="col" >&nbsp</th>
                                              <th scope="col" >&nbsp</th>

                                          </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row"><p class="fw-bold">Autoridad </p></th>
                                                <td><asp:TextBox ID="item1a" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item3a" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item4a" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="item5a" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item11a" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item12a" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item14a" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item28a" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="item39a" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item40a" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>

                                                <td></td>
                                                <td><asp:TextBox ID="suma1" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>                                                  
                                                <td></td>
                                                <td><asp:TextBox ID="puntaje1" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th scope="row"><p class="fw-bold">Control </p></th>
                                                <td><asp:TextBox ID="item8b" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item10b" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item17b" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="item26b" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item31b" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item34b" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item35b" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item40b" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td></td>
                                                <td></td>

                                                <td></td>
                                                <td><asp:TextBox ID="suma2" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>                                                  
                                                <td></td>
                                                <td><asp:TextBox ID="puntaje2" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th scope="row"><p class="fw-bold">Supervisión </p></th>
                                                <td><asp:TextBox ID="item16c" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item25c" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item26c" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="item28c" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>                                                  
                                                <td></td>
                                                <td></td>

                                                <td></td>
                                                <td><asp:TextBox ID="suma3" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>                                                  
                                                <td></td>
                                                <td><asp:TextBox ID="puntaje3" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th scope="row"><p class="fw-bold">Afecto </p></th>
                                                <td><asp:TextBox ID="item22d" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item23d" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item24d" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="item27d" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item31d" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item32d" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item33d" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td></td>                                                  
                                                <td></td>
                                                <td></td>

                                                <td></td>
                                                <td><asp:TextBox ID="suma4" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>                                                  
                                                <td></td>
                                                <td><asp:TextBox ID="puntaje4" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th scope="row"><p class="fw-bold">Apoyo </p></th>
                                                <td><asp:TextBox ID="item7e" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item16e" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item18e" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="item20e" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item39e" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item40e" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>                                                  
                                                <td></td>
                                                <td></td>

                                                <td></td>
                                                <td><asp:TextBox ID="suma5" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>                                                  
                                                <td></td>
                                                <td><asp:TextBox ID="puntaje5" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th scope="row"><p class="fw-bold">Conducta Disruptiva </p></th>
                                                <td><asp:TextBox ID="item5f" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item9f" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item36f" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="item37f" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item38f" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item39f" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item40f" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td></td>                                                  
                                                <td></td>
                                                <td></td>

                                                <td></td>
                                                <td><asp:TextBox ID="suma6" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>                                                  
                                                <td></td>
                                                <td><asp:TextBox ID="puntaje6" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th scope="row"><p class="fw-bold">Comunicación </p></th>
                                                <td><asp:TextBox ID="item4g" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item10g" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item15g" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="item18g" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item19g" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item21g" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item22g" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item36g" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item38g" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td></td>

                                                <td></td>
                                                <td><asp:TextBox ID="suma7" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>                                                  
                                                <td></td>
                                                <td><asp:TextBox ID="puntaje7" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th scope="row"><p class="fw-bold">Afecto Negativo </p></th>
                                                <td><asp:TextBox ID="item6h" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item15h" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item29h" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="item34h" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td></td>                                                  
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>

                                                <td></td>
                                                <td><asp:TextBox ID="suma8" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>                                                  
                                                <td></td>
                                                <td><asp:TextBox ID="puntaje8" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th scope="row"><p class="fw-bold">Recurso </p></th>
                                                <td><asp:TextBox ID="item2i" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item12i" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item13i" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="item14i" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item17i" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="item40i" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td></td>     
                                                <td></td>
                                                <td></td>
                                                <td></td>

                                                <td></td>
                                                <td><asp:TextBox ID="suma9" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>                                                  
                                                <td></td>
                                                <td><asp:TextBox ID="puntaje9" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <td></td> <td></td>
                                                <td></td> <td></td>
                                                <td></td> <td></td>
                                                <td></td> <td></td>
                                                <td></td> <td></td>
                                                <td></td> <td></td>
                                                <td></td> <td></td>
                                                <td></td> <td></td>
                                            </tr>

                                            <tr>
                                                <td></td>     
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>     
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <th colspan="2"><p class="fw-bold">Puntaje Global </p></th>

                                                <td></td>
                                                <td><asp:TextBox ID="totalSuma" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>                                                  
                                                <td></td>
                                                <td><asp:TextBox ID="totalPuntaje" CssClass="form-control" onchange ="sumaIndividuos()" oper-individuos="true" Width="70px" runat="server">0</asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                      </table>
                                    </div>
                                  
                                </div>

                                <br /><br />

                                <div class="row mt-3">
                                    <div class="col ps-4 d-inline-block">
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                        <button type="submit" class="btn btn-primary ms-3">Nuevo</button>
                                        <button type="reset" class="btn btn-primary ms-3">Cancelar </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Card -->
            </section>
        </form>
    </main>
</asp:Content>