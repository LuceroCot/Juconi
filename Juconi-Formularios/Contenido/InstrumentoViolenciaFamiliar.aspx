<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Master.Master" CodeBehind="InstrumentoViolenciaFamiliar.aspx.vb" Inherits="Juconi_Formularios.InstrumentoViolenciaFamiliar" %>
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
                                        <asp:TextBox ID="inputFechaReporte" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
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
                                    <div class="col mx-3 w-100 col-lg-12 table-responsive">

                                        <h5 class="card-title fw-bold">&nbsp
                                            Violencia Fisica</h5>
                                        <table class="table table-bordered table-sm border-dark">
                                        <thead>
                                          <tr class="text-center small text-danger">
                                              <th scope="col" class="px-1" >&nbsp</th>
                                              <th scope="col" >Frecuencia</th>
                                              <th scope="col" >Puntaje</th>
                                              <th scope="col" >Periodo</th>
                                              <th scope="col" >Cuidadora</th>
                                              <th scope="col" >Cuidador</th>
                                              <th scope="col" >Niño</th>
                                              <th scope="col" >Adolescente</th>
                                              <th scope="col" >Otros</th>
                                              <th scope="col" >Cuidadora</th>
                                              <th scope="col" >Cuidador</th>
                                              <th scope="col" >Niño</th>
                                              <th scope="col" >Adolescente</th>
                                              <th scope="col" >Otros</th>
                                          </tr>
                                        </thead>
                                        <tbody class="small">
                                            <tr>
                                                <th scope="row" class="fw-bold w-auto text-wrap text-dark">Violencia Física Activa</th>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Acciones que coartan el movimiento o limitan la acción:</th>
                                                <td><asp:TextBox ID="TextBox814" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox815" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox816" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox817" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox818" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox819" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox820" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox821" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox822" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox823" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox824" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox825" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox826" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                               <th scope="row" class="w-auto text-wrap">Lesiones que no dejan huella:</th>
                                                <td><asp:TextBox ID="TextBox801" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox802" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox803" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox804" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox805" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox806" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox807" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox808" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox809" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox810" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox811" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox812" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox813" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Lesiones que tardan en sanar menos de 15 días:</th>
                                                <td><asp:TextBox ID="TextBox788" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox789" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox790" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox791" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox792" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox793" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox794" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox795" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox796" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox797" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox798" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox799" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox800" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Lesiones que tardan en sanar más de 15 días:</th>
                                                <td><asp:TextBox ID="TextBox775" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox776" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox777" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox778" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox779" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox780" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox781" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox782" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox783" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox784" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox785" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox786" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox787" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Lesiones que ponen en peligro la vida:</th>
                                                <td><asp:TextBox ID="TextBox762" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox763" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox764" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox765" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox766" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox767" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox768" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox769" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox770" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox771" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox772" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox773" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox774" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Tentativa de homicidio:</th>
                                                <td><asp:TextBox ID="TextBox5" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox9" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox10" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox11" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox12" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox13" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox14" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox15" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox16" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox17" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox18" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox19" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox20" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>
                                        </tbody>
                                      </table>

                                    </div>

                                    <br />
                                     <div class="col mx-3 w-100 col-lg-12 table-responsive">
                                      <table class="table table-bordered table-sm border-dark">
                                        <thead>
                                          <tr class="text-center small text-danger">
                                              <th scope="col" class="px-1" >&nbsp</th>
                                              <th scope="col" >Frecuencia</th>
                                              <th scope="col" >Puntaje</th>
                                              <th scope="col" >Periodo</th>
                                              <th scope="col" >Cuidadora</th>
                                              <th scope="col" >Cuidador</th>
                                              <th scope="col" >Niño</th>
                                              <th scope="col" >Adolescente</th>
                                              <th scope="col" >Otros</th>
                                              <th scope="col" >Cuidadora</th>
                                              <th scope="col" >Cuidador</th>
                                              <th scope="col" >Niño</th>
                                              <th scope="col" >Adolescente</th>
                                              <th scope="col" >Otros</th>
                                          </tr>
                                        </thead>
                                        <tbody class="small">
                                            <tr>
                                                <th scope="row" class="fw-bold w-auto text-wrap">Violencia Física Pasiva</th>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td><td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Deficiencias en el Abasto Alimentario:</th>
                                                <td><asp:TextBox ID="TextBox34" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox35" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox36" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox37" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox38" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox39" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox40" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox41" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox42" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox43" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox44" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox45" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox46" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                               <th scope="row" class="w-auto text-wrap">Deficiencias en el vestido:</th>
                                                <td><asp:TextBox ID="TextBox47" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox48" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox49" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox50" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox51" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox52" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox53" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox54" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox55" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox56" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox57" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox58" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox59" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Escasa Higiene Corporal:</th>
                                                <td><asp:TextBox ID="TextBox60" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox61" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox62" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox63" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox64" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox65" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox66" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox67" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox68" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox69" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox70" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox71" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox72" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Condiciones inadecuadas de Higiene en el Hogar:</th>
                                                <td><asp:TextBox ID="TextBox73" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox74" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox75" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox76" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox77" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox78" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox79" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox80" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox81" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox82" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox83" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox84" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox85" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Descuido en la proteccion y vigilancia:</th>
                                                <td><asp:TextBox ID="TextBox86" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox87" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox88" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox89" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox90" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox91" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox92" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox93" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox94" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox95" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox96" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox97" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox98" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Necesidades médicas no atendidas:</th>
                                                <td><asp:TextBox ID="TextBox99" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox100" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox101" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox102" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox103" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox104" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox105" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox106" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox107" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox108" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox109" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox110" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox111" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Escasa o Nula supervision del adulto:</th>
                                                <td><asp:TextBox ID="TextBox112" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox113" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox114" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox115" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox116" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox117" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox118" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox119" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox120" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox121" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox122" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox123" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox124" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Falta de límites hacia las personas que agreden físicamente:</th>
                                                <td><asp:TextBox ID="TextBox125" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox126" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox127" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox128" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox129" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox130" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox131" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox132" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox133" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox134" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox135" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox136" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox137" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>
                                        </tbody>
                                      </table>
                                       
                                    </div>

                                     <div class="col mx-3 w-100 col-lg-12 table-responsive">

                                        <h5 class="card-title fw-bold">&nbsp
                                            Violencia Patrimonial</h5>
                                            <table class="table table-bordered table-sm border-dark">
                                        <thead>
                                          <tr class="text-center small text-danger">
                                              <th scope="col" class="px-1" >&nbsp</th>
                                              <th scope="col" >Frecuencia</th>
                                              <th scope="col" >Puntaje</th>
                                              <th scope="col" >Periodo</th>
                                              <th scope="col" >Cuidadora</th>
                                              <th scope="col" >Cuidador</th>
                                              <th scope="col" >Niño</th>
                                              <th scope="col" >Adolescente</th>
                                              <th scope="col" >Otros</th>
                                              <th scope="col" >Cuidadora</th>
                                              <th scope="col" >Cuidador</th>
                                              <th scope="col" >Niño</th>
                                              <th scope="col" >Adolescente</th>
                                              <th scope="col" >Otros</th>
                                          </tr>
                                        </thead>
                                        <tbody class="small">
                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Restricción del sustento económico:</th>
                                                <td><asp:TextBox ID="TextBox21" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox22" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox23" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox24" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox25" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox26" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox27" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox28" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox29" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox30" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox31" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox32" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox33" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                               <th scope="row" class="w-auto text-wrap">Negación del sustento económico:</th>
                                                <td><asp:TextBox ID="TextBox138" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox139" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox140" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox141" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox142" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox143" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox144" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox145" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox146" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox147" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox148" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox149" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox150" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Postergación de las necesidades básicas:</th>
                                                <td><asp:TextBox ID="TextBox151" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox152" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox153" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox154" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox155" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox156" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox157" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox158" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox159" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox160" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox161" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox162" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox163" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Sustracción de artículos personales:</th>
                                                <td><asp:TextBox ID="TextBox164" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox165" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox166" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox167" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox168" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox169" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox170" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox171" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox172" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox173" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox174" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox175" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox176" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Descompostura o ruptura de bienes materiales significativos:</th>
                                                <td><asp:TextBox ID="TextBox177" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox178" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox179" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox180" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox181" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox182" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox183" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox184" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox185" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox186" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox187" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox188" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox189" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                            <tr>
                                                <th scope="row" class="w-auto text-wrap">Se obliga a trabajar a menores de 14:</th>
                                                <td><asp:TextBox ID="TextBox190" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox191" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox192" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox193" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox194" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox195" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox196" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox197" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox198" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox199" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox200" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox201" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox202" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>

                                             <tr>
                                                <th scope="row" class="w-auto text-wrap">Mendicidad:</th>
                                                <td><asp:TextBox ID="TextBox203" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox204" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox205" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                <td><asp:TextBox ID="TextBox206" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox207" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox208" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox209" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                <td><asp:TextBox ID="TextBox210" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                <td><asp:TextBox ID="TextBox211" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox212" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox213" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox214" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                <td><asp:TextBox ID="TextBox215" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                            </tr>
                                        </tbody>
                                      </table>

                                    </div>

                                     <div class="col mx-3 w-100 col-lg-12 table-responsive">

                                        <h5 class="card-title fw-bold">&nbsp
                                            Violencia Emocional Activa</h5>
                                            <table class="table table-bordered table-sm border-dark">
                                                <thead>
                                                  <tr class="text-center small text-danger">
                                                      <th scope="col" class="px-1" >&nbsp</th>
                                                      <th scope="col" >Frecuencia</th>
                                                      <th scope="col" >Puntaje</th>
                                                      <th scope="col" >Periodo</th>
                                                      <th scope="col" >Cuidadora</th>
                                                      <th scope="col" >Cuidador</th>
                                                      <th scope="col" >Niño</th>
                                                      <th scope="col" >Adolescente</th>
                                                      <th scope="col" >Otros</th>
                                                      <th scope="col" >Cuidadora</th>
                                                      <th scope="col" >Cuidador</th>
                                                      <th scope="col" >Niño</th>
                                                      <th scope="col" >Adolescente</th>
                                                      <th scope="col" >Otros</th>
                                                  </tr>
                                                </thead>
                                                <tbody class="small">
                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Degradación / Devaluación:</th>
                                                        <td><asp:TextBox ID="TextBox216" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox217" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox218" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox219" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox220" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox221" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox222" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox223" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox224" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox225" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox226" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox227" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox228" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                       <th scope="row" class="w-auto text-wrap">Amenazas:</th>
                                                        <td><asp:TextBox ID="TextBox229" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox230" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox231" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox232" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox233" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox234" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox235" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox236" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox237" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox238" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox239" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox240" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox241" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Insultos:</th>
                                                        <td><asp:TextBox ID="TextBox242" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox243" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox244" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox245" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox246" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox247" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox248" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox249" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox250" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox251" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox252" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox253" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox254" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Burlas:</th>
                                                        <td><asp:TextBox ID="TextBox255" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox256" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox257" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox258" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox259" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox260" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox261" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox262" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox263" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox264" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox265" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox266" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox267" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Desconfianza</th>
                                                        <td><asp:TextBox ID="TextBox268" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox269" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox270" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox271" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox272" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox273" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox274" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox275" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox276" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox277" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox278" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox279" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox280" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Comparación:</th>
                                                        <td><asp:TextBox ID="TextBox281" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox282" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox283" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox284" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox285" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox286" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox287" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox288" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox289" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox290" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox291" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox292" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox293" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                     </tr>

                                                     <tr>
                                                        <th scope="row" class="w-auto text-wrap">Discriminación:</th>
                                                        <td><asp:TextBox ID="TextBox294" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox295" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox296" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox297" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox298" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox299" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox300" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox301" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox302" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox303" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox304" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox305" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox306" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Corregir en público:</th>
                                                        <td><asp:TextBox ID="TextBox307" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox308" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox309" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox310" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox311" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox312" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox313" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox314" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox315" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox316" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox317" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox318" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox319" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                       <th scope="row" class="w-auto text-wrap">Expectativas Irreales:</th>
                                                        <td><asp:TextBox ID="TextBox320" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox321" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox322" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox323" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox324" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox325" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox326" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox327" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox328" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox329" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox330" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox331" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox332" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Limitación de contacto social:</th>
                                                        <td><asp:TextBox ID="TextBox333" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox334" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox335" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox336" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox337" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox338" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox339" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox340" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox341" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox342" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox343" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox344" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox345" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Mensajes contradictorios:</th>
                                                        <td><asp:TextBox ID="TextBox346" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox347" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox348" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox349" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox350" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox351" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox352" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox353" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox354" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox355" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox356" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox357" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox358" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Ser obligado a consumir drogas:</th>
                                                        <td><asp:TextBox ID="TextBox359" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox360" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox361" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox362" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox363" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox364" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox365" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox366" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox367" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox368" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox369" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox370" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox371" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Desprecios:</th>
                                                        <td><asp:TextBox ID="TextBox372" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox373" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox374" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox375" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox376" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox377" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox378" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox379" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox380" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox381" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox382" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox383" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox384" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                     </tr>

                                                     <tr>
                                                        <th scope="row" class="w-auto text-wrap">Críticas:</th>
                                                        <td><asp:TextBox ID="TextBox385" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox386" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox387" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox388" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox389" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox390" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox391" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox392" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox393" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox394" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox395" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox396" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox397" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Gritos:</th>
                                                        <td><asp:TextBox ID="TextBox398" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox399" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox400" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox401" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox402" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox403" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox404" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox405" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox406" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox407" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox408" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox409" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox410" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Sarcasmos:</th>
                                                        <td><asp:TextBox ID="TextBox411" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox412" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox413" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox414" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox415" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox416" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox417" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox418" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox419" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox420" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox421" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox422" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox423" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Desaprobación:</th>
                                                        <td><asp:TextBox ID="TextBox424" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox425" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox426" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox427" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox428" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox429" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox430" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox431" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox432" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox433" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox434" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox435" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox436" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Culpabilización:</th>
                                                        <td><asp:TextBox ID="TextBox437" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox438" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox439" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox440" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox441" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox442" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox443" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox444" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox445" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox446" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox447" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox448" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox449" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                     </tr>

                                                     <tr>
                                                        <th scope="row" class="w-auto text-wrap">Negación de Afecto:</th>
                                                        <td><asp:TextBox ID="TextBox450" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox451" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox452" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox453" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox454" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox455" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox456" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox457" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox458" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox459" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox460" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox461" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox462" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>
                                                </tbody>
                                            </table>

                                    </div>
                                  
                                     <div class="col mx-3 w-100 col-lg-12 table-responsive">

                                        <h5 class="card-title fw-bold">&nbsp
                                            Violencia Sexual - Sin Contacto Físico</h5>
                                            <table class="table table-bordered table-sm border-dark">
                                                <thead>
                                                  <tr class="text-center small text-danger">
                                                      <th scope="col" class="px-1" >&nbsp</th>
                                                      <th scope="col" >Frecuencia</th>
                                                      <th scope="col" >Puntaje</th>
                                                      <th scope="col" >Periodo</th>
                                                      <th scope="col" >Cuidadora</th>
                                                      <th scope="col" >Cuidador</th>
                                                      <th scope="col" >Niño</th>
                                                      <th scope="col" >Adolescente</th>
                                                      <th scope="col" >Otros</th>
                                                      <th scope="col" >Cuidadora</th>
                                                      <th scope="col" >Cuidador</th>
                                                      <th scope="col" >Niño</th>
                                                      <th scope="col" >Adolescente</th>
                                                      <th scope="col" >Otros</th>
                                                  </tr>
                                                </thead>
                                                <tbody class="small">
                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Exhibicionismo:</th>
                                                        <td><asp:TextBox ID="TextBox463" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox464" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox465" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox466" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox467" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox468" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox469" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox470" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox471" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox472" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox473" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox474" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox475" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                       <th scope="row" class="w-auto text-wrap">Infidelidad:</th>
                                                        <td><asp:TextBox ID="TextBox476" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox477" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox478" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox479" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox480" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox481" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox482" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox483" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox484" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox485" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox486" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox487" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox488" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Negacion de necesidades sexo afectivas:</th>
                                                        <td><asp:TextBox ID="TextBox489" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox490" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox491" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox492" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox493" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox494" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox495" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox496" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox497" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox498" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox499" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox500" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox501" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Imposición de ideas sobre sexualidad:</th>
                                                        <td><asp:TextBox ID="TextBox502" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox503" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox504" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox505" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox506" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox507" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox508" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox509" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox510" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox511" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox512" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox513" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox514" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Masturbación delante de la persona:</th>
                                                        <td><asp:TextBox ID="TextBox515" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox516" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox517" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox518" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox519" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox520" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox521" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox522" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox523" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox524" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox525" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox526" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox527" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Observar a la persona desnuda:</th>
                                                        <td><asp:TextBox ID="TextBox528" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox529" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox530" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox531" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox532" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox533" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox534" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox535" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox536" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox537" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox538" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox539" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox540" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                     </tr>

                                                     <tr>
                                                        <th scope="row" class="w-auto text-wrap">Relato de historias de contenido erotico-sexual:</th>
                                                        <td><asp:TextBox ID="TextBox541" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox542" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox543" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox544" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox545" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox546" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox547" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox548" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox549" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox550" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox551" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox552" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox553" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Proyección de pornografía:</th>
                                                        <td><asp:TextBox ID="TextBox554" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox555" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox556" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox557" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox558" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox559" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox560" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox561" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox562" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox563" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox564" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox565" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox566" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                       <th scope="row" class="w-auto text-wrap">Observar la realización del acto sexual:</th>
                                                        <td><asp:TextBox ID="TextBox567" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox568" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox569" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox570" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox571" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox572" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox573" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox574" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox575" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox576" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox577" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox578" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox579" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Burlas al aspecto físico:</th>
                                                        <td><asp:TextBox ID="TextBox580" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox581" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox582" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox583" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox584" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox585" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox586" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox587" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox588" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox589" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox590" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox591" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox592" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Burlas referentes a su sexualidad:</th>
                                                        <td><asp:TextBox ID="TextBox593" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox594" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox595" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox596" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox597" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox598" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox599" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox600" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox601" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox602" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox603" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox604" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox605" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Limitación en arreglo personal:</th>
                                                        <td><asp:TextBox ID="TextBox606" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox607" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox608" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox609" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox610" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox611" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox612" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox613" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox614" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox615" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox616" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox617" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox618" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Imposición para el empleo de anticonceptivos:</th>
                                                        <td><asp:TextBox ID="TextBox619" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox620" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox621" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox622" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox623" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox624" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox625" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox626" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox627" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox628" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox629" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox630" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox631" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                     </tr>

                                                     <tr>
                                                        <th scope="row" class="w-auto text-wrap">Inducción a realizar el acto sexual:</th>
                                                        <td><asp:TextBox ID="TextBox632" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox633" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox634" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox635" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox636" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox637" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox638" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox639" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox640" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox641" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox642" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox643" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox644" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Celotipia:</th>
                                                        <td><asp:TextBox ID="TextBox645" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox646" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox647" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox648" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox649" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox650" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox651" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox652" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox653" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox654" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox655" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox656" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox657" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>

                                                    <tr>
                                                        <th scope="row" class="w-auto text-wrap">Prostitución:</th>
                                                        <td><asp:TextBox ID="TextBox658" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox659" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox660" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                        <td><asp:TextBox ID="TextBox661" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox662" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox663" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox664" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="TextBox665" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                        <td><asp:TextBox ID="TextBox666" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox667" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox668" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox669" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                        <td><asp:TextBox ID="TextBox670" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    </tr>
                                                </tbody>
                                            </table>
                                    </div>


                                     <div class="col mx-3 w-100 col-lg-12 table-responsive">

                                        <h5 class="card-title fw-bold">&nbsp
                                            Abuso Sexual</h5>
                                        <table class="table table-bordered table-sm border-dark">
                                            <thead>
                                              <tr class="text-center small text-danger">
                                                  <th scope="col" class="px-1" >&nbsp</th>
                                                  <th scope="col" >Frecuencia</th>
                                                  <th scope="col" >Puntaje</th>
                                                  <th scope="col" >Periodo</th>
                                                  <th scope="col" >Cuidadora</th>
                                                  <th scope="col" >Cuidador</th>
                                                  <th scope="col" >Niño</th>
                                                  <th scope="col" >Adolescente</th>
                                                  <th scope="col" >Otros</th>
                                                  <th scope="col" >Cuidadora</th>
                                                  <th scope="col" >Cuidador</th>
                                                  <th scope="col" >Niño</th>
                                                  <th scope="col" >Adolescente</th>
                                                  <th scope="col" >Otros</th>
                                              </tr>
                                            </thead>
                                            <tbody class="small">

                                                <tr>
                                                    <th scope="row" class="w-auto text-wrap">Tocamiento de zonas erógenas:</th>
                                                    <td><asp:TextBox ID="TextBox671" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox672" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox673" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                    <td><asp:TextBox ID="TextBox674" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox675" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox676" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox677" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox678" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                    <td><asp:TextBox ID="TextBox679" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox680" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox681" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox682" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox683" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                </tr>

                                                <tr>
                                                   <th scope="row" class="w-auto text-wrap">Forzar o alentar tocamiendo de zonas erógenas de otro:</th>
                                                    <td><asp:TextBox ID="TextBox684" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox685" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox686" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                    <td><asp:TextBox ID="TextBox687" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox688" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox689" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox690" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox691" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                    <td><asp:TextBox ID="TextBox692" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox693" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox694" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox695" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox696" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                </tr>

                                                <tr>
                                                    <th scope="row" class="w-auto text-wrap">Obligar contactos bucogenitales:</th>
                                                    <td><asp:TextBox ID="TextBox697" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox698" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox699" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                    <td><asp:TextBox ID="TextBox700" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox701" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox702" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox703" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox704" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                    <td><asp:TextBox ID="TextBox705" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox706" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox707" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox708" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox709" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                </tr>

                                                <tr>
                                                    <th scope="row" class="w-auto text-wrap">Levantar su ropa y mirar debajo:</th>
                                                    <td><asp:TextBox ID="TextBox710" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox711" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox712" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                    <td><asp:TextBox ID="TextBox713" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox714" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox715" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox716" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox717" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                    <td><asp:TextBox ID="TextBox718" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox719" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox720" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox721" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox722" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                </tr>
                                            </tbody>
                                          </table>
                                    </div>


                                     <div class="col mx-3 w-100 col-lg-12 table-responsive">

                                        <h5 class="card-title fw-bold">&nbsp
                                            Violación</h5>

                                        <table class="table table-bordered table-sm border-dark">
                                            <thead>
                                              <tr class="text-center small text-danger">
                                                  <th scope="col" class="px-1" >&nbsp</th>
                                                  <th scope="col" >Frecuencia</th>
                                                  <th scope="col" >Puntaje</th>
                                                  <th scope="col" >Periodo</th>
                                                  <th scope="col" >Cuidadora</th>
                                                  <th scope="col" >Cuidador</th>
                                                  <th scope="col" >Niño</th>
                                                  <th scope="col" >Adolescente</th>
                                                  <th scope="col" >Otros</th>
                                                  <th scope="col" >Cuidadora</th>
                                                  <th scope="col" >Cuidador</th>
                                                  <th scope="col" >Niño</th>
                                                  <th scope="col" >Adolescente</th>
                                                  <th scope="col" >Otros</th>
                                              </tr>
                                            </thead>
                                            <tbody class="small">

                                                <tr>
                                                    <th scope="row" class="w-auto text-wrap">Penetración Oral:</th>
                                                    <td><asp:TextBox ID="TextBox723" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox724" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox725" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                    <td><asp:TextBox ID="TextBox726" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox727" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox728" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox729" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox730" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                    <td><asp:TextBox ID="TextBox731" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox732" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox733" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox734" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox735" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                </tr>

                                                <tr>
                                                   <th scope="row" class="w-auto text-wrap">Penetración Vaginal:</th>
                                                    <td><asp:TextBox ID="TextBox736" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox737" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox738" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                    <td><asp:TextBox ID="TextBox739" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox740" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox741" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox742" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox743" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                    <td><asp:TextBox ID="TextBox744" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox745" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox746" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox747" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox748" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                </tr>

                                                <tr>
                                                    <th scope="row" class="w-auto text-wrap">Penetración Anal::</th>
                                                    <td><asp:TextBox ID="TextBox749" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox750" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox751" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>                                                  
                                                    <td><asp:TextBox ID="TextBox752" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox753" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox754" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox755" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>
                                                    <td><asp:TextBox ID="TextBox756" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td>   
                                                    <td><asp:TextBox ID="TextBox757" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox758" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox759" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox760" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                    <td><asp:TextBox ID="TextBox761" CssClass="form-control" MaxLength="2" Width="45px" runat="server">0</asp:TextBox></td> 
                                                </tr>
                                            </tbody>
                                          </table>
                                    </div>


                                    <div class="col-lg-2"></div>
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