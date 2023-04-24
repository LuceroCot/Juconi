<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Master.Master" CodeBehind="EscFuncionamientoFamiliar.aspx.vb" Inherits="Juconi_Formularios.EscFuncionamientoFamiliar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">
            $(document).ready(function () {
                $("#<%= txtFechaReporte.ClientID %>").datepicker($.datepicker.regional["es"] = {
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

            function sumaAutoridad() {

                var valores = document.querySelectorAll('[oper-sum=true]');
                var total = 0;

                valores.forEach(function (celda) {

                    if (!(celda.value)) {
                        celda.value = 0;
                    }

                    total += parseFloat(celda.value);

                });

                $("#<%= suma1.ClientID %>").val(total);

                $("#<%= value4_2.ClientID %>").val($("#<%= value4.ClientID %>").val());
                $("#<%= value5_2.ClientID %>").val($("#<%= value5.ClientID %>").val());
                $("#<%= value12_2.ClientID %>").val($("#<%= value12.ClientID %>").val());
                $("#<%= value14_2.ClientID %>").val($("#<%= value14.ClientID %>").val());
                $("#<%= value28_2.ClientID %>").val($("#<%= value28.ClientID %>").val());
                $("#<%= value39_2.ClientID %>").val($("#<%= value39.ClientID %>").val());
            }

            

            
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Captura de Escala de Funcionamiento Familiar</h1>
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
                              Escala de Funcionamiento Familiar</h5>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="txtClave" class="form-label fw-bold">Clave de familia</label>
                                        <asp:TextBox ID="txtClave" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-md-4 mt-4 pt-2">

                                    <button type="submit" class="btn btn-primary">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                        Buscar</button>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="txtFamilia" class="form-label fw-bold">Familia</label>
                                        <asp:TextBox ID="txtFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="txtNombre" class="form-label fw-bold">Nombre</label>
                                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="col-sm-4">
                                        <label for="txtApellidoPaterno" class="form-label fw-bold">Apellido Paterno</label>
                                        <asp:TextBox ID="txtApellidoPaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="txtApellidoMaterno" class="form-label fw-bold">Apellido Materno</label>
                                        <asp:TextBox ID="txtApellidoMaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <label for="txtEdad" class="form-label fw-bold">Edad</label>
                                        <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5 input-date">
                                        <label for="txtFechaReporte" class="form-label fw-bold">Fecha de reporte</label>
                                        <i class="fa-regular fa-calendar"></i>
                                        <asp:TextBox ID="txtFechaReporte" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                   <div class="col-sm-4 ps-5">
                                        <label for="txtPrograma" class="form-label fw-bold">Programa</label>
                                        <asp:TextBox ID="txtPrograma" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>

                                    <div class="col-sm-4">
                                        <label for="txtTerapeuta" class="form-label fw-bold">Terapeuta</label>
                                        <asp:TextBox ID="txtTerapeuta" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3" id="modeloAtencionFamiliar" style="display: ;">
                                   <div class="col-sm-4 ps-5">
                                        <label for="atencionFamiliar" class="form-label fw-bold">Modelo de Atención Familiar</label>
                                        <asp:DropDownList ID="atencionFamiliar" AutoPostBack="false"
                                                CssClass="form-select" runat="server">
                                              <asp:ListItem Selected="True" Value="1a">Atención familiar E-T</asp:ListItem>
                                              <asp:ListItem Value="2a">Atención Familiar Híbrida</asp:ListItem>
                                              <asp:ListItem Value="3a">Acompañamiento Breve</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <div class="col-sm-4">
                                        <label for="txtLocalAmbienteJuconi" class="form-label fw-bold">Localidad de Ambiente JUCONI</label>
                                        <asp:TextBox ID="txtLocalAmbienteJuconi" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-4 ps-5">
                                        <label for="txtRolEnFamilia" class="form-label fw-bold">Rol en la familia</label>
                                        <asp:TextBox ID="txtRolEnFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="txtAdultoResponsable" class="form-label fw-bold">¿Es adulto responsable?</label>
                                        <asp:TextBox ID="txtAdultoResponsable" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <div class="row mt-3" id="tutoria" style="display:;">
                                            <div class="col-sm-9">
                                                <label for="txtTutoriaLegal" class="form-label fw-bold">¿Tiene la tutoría legal?</label>
                                                <asp:TextBox ID="txtTutoriaLegal" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-sm-12 ps-5">
                                        <table style="width: 100%">
                                            <tbody>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                
                                                <tr class="align-self-center">
                                                    <td>&nbsp;</td>
                                                    <td class="child-tab">&nbsp;<span>Item 1:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 3:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 4:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 5:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 11:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 12:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 14:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 28:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 39:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 40:</span></td>
                                                    
                                                    <td>&nbsp;</td>
                                                    
                                                    <td class="child-tab">&nbsp;<span>Suma:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Puntaje T (%):</span></td>
                                               </tr>

                                                <tr class="align-self-center">
                                                    <td class="child-tab align-content-start"><span class="fw-bold">Autoridad </span></td>

                                                    <td class="child-tab"><asp:TextBox ID="value1" CssClass="form-control" onchange ="sumaAutoridad()" Width="45" MaxLength="2" oper-sum="true" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value3" CssClass="form-control" onchange ="sumaAutoridad()" Width="45" MaxLength="2" oper-sum="true" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value4" CssClass="form-control" onchange ="sumaAutoridad()" Width="45" MaxLength="2" oper-sum="true" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value5" CssClass="form-control" onchange ="sumaAutoridad()" Width="45" MaxLength="2" oper-sum="true" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value11" CssClass="form-control" onchange ="sumaAutoridad()" Width="45" MaxLength="2" oper-sum="true" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value12" CssClass="form-control" onchange ="sumaAutoridad()" Width="45" MaxLength="2" oper-sum="true" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value14" CssClass="form-control" onchange ="sumaAutoridad()" Width="45" MaxLength="2" oper-sum="true" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value28" CssClass="form-control" onchange ="sumaAutoridad()" Width="45" MaxLength="2" oper-sum="true" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value39" CssClass="form-control" onchange ="sumaAutoridad()" Width="45" MaxLength="2" oper-sum="true" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value40" CssClass="form-control" onchange ="sumaAutoridad()" Width="45" MaxLength="2" oper-sum="true" runat="server">0</asp:TextBox></td>


                                                    <td></td>
                                                    <td style ="border: 0"><asp:TextBox ID="suma1" CssClass="form-control" Width="55" MaxLength="3" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"><asp:TextBox ID="total1" CssClass="form-control" Width="55" MaxLength="3" runat="server">0</asp:TextBox></td>
                                                </tr>

                                                <tr class="align-self-center">
                                                    <td>&nbsp;</td>
                                                    <td class="child-tab">&nbsp;<span>Item 8:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 10:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 17:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 26:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 31:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 34:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 35:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 40:</span></td>
                                                    
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>

                                               </tr>

                                                <tr class="align-self-center">
                                                    <td class="child-tab align-content-start"><span class="fw-bold">Control</span></td>

                                                    <td class="child-tab"><asp:TextBox ID="value8" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value10" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value17" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value26" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value31_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value34" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value35" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value40_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>

                                                    <td style ="border: 0"><asp:TextBox ID="suma1b" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"><asp:TextBox ID="suma2b" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                 </tr>

                                                <tr class="align-self-center">
                                                    <td>&nbsp;</td>
                                                    <td class="child-tab">&nbsp;<span>Item 16:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 25:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 26:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 28:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 30:</span></td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>

                                                </tr>

                                                <tr class="align-self-center">
                                                    <td class="child-tab align-content-start"><span class="fw-bold">Supervisión</span></td>

                                                    <td class="child-tab"><asp:TextBox ID="value16" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value25" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value26_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value28_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value30" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>

                                                    <td style ="border: 0"><asp:TextBox ID="TextBox9" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"><asp:TextBox ID="TextBox10" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                </tr>

                                                <tr class="align-self-center">
                                                    <td>&nbsp;</td>
                                                    <td class="child-tab">&nbsp;<span>Item 22:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 23:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 24:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 27:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 31:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 32:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 33:</span></td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>

                                                </tr>

                                                <tr class="align-self-center">
                                                    <td class="child-tab align-content-start"><span class="fw-bold">Afecto</span></td>

                                                    <td class="child-tab"><asp:TextBox ID="value22" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value23" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value24" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value27" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value31" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value32" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value33" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>

                                                    <td style ="border: 0"><asp:TextBox ID="TextBox6" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"><asp:TextBox ID="TextBox7" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                </tr>

                                                <tr class="align-self-center">
                                                    <td>&nbsp;</td>
                                                    <td class="child-tab">&nbsp;<span>Item 7:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 16:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 18:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 20:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 39:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 40:</span></td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                </tr>

                                                <tr class="align-self-center">
                                                    <td class="child-tab align-content-start"><span class="fw-bold">Apoyo</span></td>

                                                    <td class="child-tab"><asp:TextBox ID="value7" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value16_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value18" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value20" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value39_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value40_3" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>

                                                    <td style ="border: 0"><asp:TextBox ID="TextBox12" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"><asp:TextBox ID="TextBox13" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                </tr>

                                                <tr class="align-self-center">
                                                    <td>&nbsp;</td>
                                                    <td class="child-tab">&nbsp;<span>Item 5:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 9:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 36:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 37:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 38:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 39:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 40:</span></td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>

                                                </tr>

                                                <tr class="align-self-center">
                                                    <td class="child-tab align-content-start"><span class="fw-bold">Conducta Disruptiva &nbsp;</span></td>

                                                    <td class="child-tab"><asp:TextBox ID="value5_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value9" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value36" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value37" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value38" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value39_3" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value40_4" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>

                                                    <td style ="border: 0"><asp:TextBox ID="TextBox14" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"><asp:TextBox ID="TextBox15" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                </tr>

                                                <tr class="align-self-center">
                                                    <td>&nbsp;</td>
                                                    <td class="child-tab">&nbsp;<span>Item 4:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 10:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 15:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 18:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 19:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 21:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 22:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 36:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 38:</span></td>
                                                    
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>

                                               </tr>

                                                <tr class="align-self-center">
                                                    <td class="child-tab align-content-start"><span class="fw-bold">Comunicación &nbsp;</span></td>

                                                    <td class="child-tab"><asp:TextBox ID="value4_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value10_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value15" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value18_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value19" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value21" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value22_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value36_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value38_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>

                                                    <td style ="border: 0"><asp:TextBox ID="TextBox18" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"><asp:TextBox ID="TextBox19" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                </tr>

                                                <tr class="align-self-center">
                                                    <td>&nbsp;</td>
                                                    <td class="child-tab">&nbsp;<span>Item 6:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 15:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 29:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 34:</span></td>
                                                    <td style ="border: 0">&nbsp;&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;&nbsp;</td>
                                               </tr>

                                                <tr class="align-self-center">
                                                    <td class="child-tab align-content-start"><span class="fw-bold">Afecto Negativo &nbsp;</span></td>

                                                    <td class="child-tab"><asp:TextBox ID="value6" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value15_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value29" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value34_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>

                                                    <td style ="border: 0"><asp:TextBox ID="TextBox23" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"><asp:TextBox ID="TextBox1" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                </tr>

                                                <tr class="align-self-center">
                                                    <td>&nbsp;</td>
                                                    <td class="child-tab">&nbsp;<span>Item 2:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 12:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 13:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 14:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 17:</span></td>
                                                    <td class="child-tab">&nbsp;<span>Item 40:</span></td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                    <td style ="border: 0">&nbsp;</td>
                                                </tr>

                                                <tr class="align-self-center">
                                                    <td class="child-tab align-content-start"><span class="fw-bold">Recurso</span></td>

                                                    <td class="child-tab"><asp:TextBox ID="value2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value12_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value13" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value14_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value17_2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td class="child-tab"><asp:TextBox ID="value40_5" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>
                                                    <td style ="border: 0"></td>

                                                    <td style ="border: 0"><asp:TextBox ID="TextBox20" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    <td style ="border: 0"><asp:TextBox ID="TextBox21" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                </tr>

                                            </tbody>

                                        </table>
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
