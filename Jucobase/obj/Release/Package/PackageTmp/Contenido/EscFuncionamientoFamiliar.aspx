<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="EscFuncionamientoFamiliar.aspx.vb" Inherits="Jucobase.EscFuncionamientoFamiliar" %>
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
                $("#<%= value39_3.ClientID %>").val($("#<%= value39.ClientID %>").val());

                $("#<%= value40_2.ClientID %>").val($("#<%= value40.ClientID %>").val());
                $("#<%= value40_3.ClientID %>").val($("#<%= value40.ClientID %>").val());
                $("#<%= value40_4.ClientID %>").val($("#<%= value40.ClientID %>").val());
                $("#<%= value40_5.ClientID %>").val($("#<%= value40.ClientID %>").val());

                sumaControl();
                sumaApoyo();
                sumaConducta();
                sumaComunicacion();
                sumaRecurso();

                //sumaGlobal();
            }

            function sumaControl() {

                var valores = document.querySelectorAll('[oper-sum2=true]');
                var total = 0;

                valores.forEach(function (celda) {

                    if (!(celda.value)) {
                        celda.value = 0;
                    }

                    total += parseFloat(celda.value);
                });


                $("#<%= suma2.ClientID %>").val(total);

                $("#<%= value10_2.ClientID %>").val($("#<%= value10.ClientID %>").val());
                $("#<%= value17_2.ClientID %>").val($("#<%= value17.ClientID %>").val());
                $("#<%= value26_2.ClientID %>").val($("#<%= value26.ClientID %>").val());
                $("#<%= value31_2.ClientID %>").val($("#<%= value31.ClientID %>").val());
                $("#<%= value34_2.ClientID %>").val($("#<%= value34.ClientID %>").val());

                sumaSupervision();
                sumaAfecto();
                sumaComunicacion();
                sumaNegativo();
                sumaRecurso();
            }

            function sumaSupervision() {

                var valores = document.querySelectorAll('[oper-sum3=true]');
                var total = 0;

                valores.forEach(function (celda) {

                    if (!(celda.value)) {
                        celda.value = 0;
                    }

                    total += parseFloat(celda.value);
                });


                $("#<%= suma3.ClientID %>").val(total);

                $("#<%= value16_2.ClientID %>").val($("#<%= value16.ClientID %>").val());

                sumaApoyo();
            }

            function sumaAfecto() {

                var valores = document.querySelectorAll('[oper-sum4=true]');
                var total = 0;

                valores.forEach(function (celda) {

                    if (!(celda.value)) {
                        celda.value = 0;
                    }

                    total += parseFloat(celda.value);
                });


                $("#<%= suma4.ClientID %>").val(total);

                $("#<%= value22_2.ClientID %>").val($("#<%= value22.ClientID %>").val());

                sumaComunicacion();
            }

            function sumaApoyo() {

                var valores = document.querySelectorAll('[oper-sum5=true]');
                var total = 0;

                valores.forEach(function (celda) {

                    if (!(celda.value)) {
                        celda.value = 0;
                    }

                    total += parseFloat(celda.value);
                });


                $("#<%= suma5.ClientID %>").val(total);

                $("#<%= value18_2.ClientID %>").val($("#<%= value18.ClientID %>").val());

                sumaComunicacion();
            }

            function sumaConducta() {

                var valores = document.querySelectorAll('[oper-sum6=true]');
                var total = 0;

                valores.forEach(function (celda) {

                    if (!(celda.value)) {
                        celda.value = 0;
                    }

                    total += parseFloat(celda.value);
                });


                $("#<%= suma6.ClientID %>").val(total);

                $("#<%= value36_2.ClientID %>").val($("#<%= value36.ClientID %>").val());
                $("#<%= value38_2.ClientID %>").val($("#<%= value38.ClientID %>").val());

                sumaComunicacion();
            }

            function sumaComunicacion() {

                var valores = document.querySelectorAll('[oper-sum7=true]');
                var total = 0;

                valores.forEach(function (celda) {

                    if (!(celda.value)) {
                        celda.value = 0;
                    }

                    total += parseFloat(celda.value);
                });


                $("#<%= suma7.ClientID %>").val(total);

                $("#<%= value15_2.ClientID %>").val($("#<%= value15.ClientID %>").val());
                $("#<%= value38_2.ClientID %>").val($("#<%= value38.ClientID %>").val());

                sumaNegativo();
            }

            function sumaNegativo() {

                var valores = document.querySelectorAll('[oper-sum8=true]');
                var total = 0;

                valores.forEach(function (celda) {

                    if (!(celda.value)) {
                        celda.value = 0;
                    }

                    total += parseFloat(celda.value);
                });


                $("#<%= suma8.ClientID %>").val(total);
            }

            function sumaRecurso() {

                var valores = document.querySelectorAll('[oper-sum9=true]');
                var total = 0;

                valores.forEach(function (celda) {

                    if (!(celda.value)) {
                        celda.value = 0;
                    }

                    total += parseFloat(celda.value);
                });


                $("#<%= suma9.ClientID %>").val(total);
            }

            function sumaGlobal() {

                var total = 0;

                var campos = document.querySelectorAll('[global=true]');

                campos.forEach(function (campo) {
                    var valor = parseFloat(campo.value);
                    if (valor !== 0) {
                        total++;
                    }
                });

                $("#<%= suma10.ClientID %>").val(total);
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
                    <div class="row justify-content-center">
                        <div class="col-xl-12">
                            <div class="card overflow-auto">
                                <div class="card-body mt-3">
                                    <h5 class="card-title fw-bold ps-3">&nbsp Escala de Funcionamiento Familiar</h5>

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

                                    <div class="row mt-3">
                                        <div class="col-sm-11  ps-5 table-responsive">
                                            <table class="table table-sm table-borderless">
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
                                                
                                                    <tr class="text-center">
                                                        <td>&nbsp;</td>
                                                        <td class="child-tab text-nowrap fw-bold">&nbsp;<span>Item 1:</span></td>
                                                        <td class="child-tab text-nowrap fw-bold">&nbsp;<span>Item 3:</span></td>
                                                        <td class="child-tab text-nowrap fw-bold">&nbsp;<span>Item 4:</span></td>
                                                        <td class="child-tab text-nowrap fw-bold">&nbsp;<span>Item 5:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 11:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 12:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 14:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 28:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 39:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 40:</span></td>
                                                    
                                                        <td></td>
                                                    
                                                        <td class="child-tab fw-bold">&nbsp;<span>Suma:</span></td>
                                                        <td class="child-tab fw-bold text-nowrap">&nbsp;<span>Puntaje T (%):</span></td>
                                                   </tr>

                                                    <tr class="text-center">
                                                        <td class="child-tab" style="text-align: start;"><span class="fw-bold">Autoridad </span></td>

                                                        <td class="child-tab"><asp:TextBox ID="value1" CssClass="form-control" onchange ="sumaAutoridad(); sumaGlobal()" Width="45" MaxLength="2" oper-sum="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value3" CssClass="form-control" onchange ="sumaAutoridad(); sumaGlobal()" Width="45" MaxLength="2" oper-sum="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value4" CssClass="form-control" onchange ="sumaAutoridad(); sumaGlobal()" Width="45" MaxLength="2" oper-sum="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value5" CssClass="form-control" onchange ="sumaAutoridad(); sumaGlobal()" Width="45" MaxLength="2" oper-sum="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value11" CssClass="form-control" onchange ="sumaAutoridad(); sumaGlobal()" Width="45" MaxLength="2" oper-sum="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value12" CssClass="form-control" onchange ="sumaAutoridad(); sumaGlobal()" Width="45" MaxLength="2" oper-sum="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value14" CssClass="form-control" onchange ="sumaAutoridad(); sumaGlobal()" Width="45" MaxLength="2" oper-sum="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value28" CssClass="form-control" onchange ="sumaAutoridad(); sumaGlobal()" Width="45" MaxLength="2" oper-sum="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value39" CssClass="form-control" onchange ="sumaAutoridad(); sumaGlobal()" Width="45" MaxLength="2" oper-sum="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value40" CssClass="form-control" onchange ="sumaAutoridad(); sumaGlobal()" Width="45" MaxLength="2" oper-sum="true" global="true" runat="server">0</asp:TextBox></td>


                                                        <td></td>
                                                        <td><asp:TextBox ID="suma1" CssClass="form-control" Width="45" MaxLength="3" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="total1" CssClass="form-control" Width="45" MaxLength="3" runat="server">0</asp:TextBox></td>
                                                    </tr>

                                                    <tr class="text-center">
                                                        <td></td>
                                                        <td class="child-tab text-nowrap fw-bold">&nbsp;<span>Item 8:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 10:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 17:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 26:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 31:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 34:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 35:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 40:</span></td>
                                                    
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                   </tr>

                                                    <tr class="text-center">
                                                        <td class="child-tab" style="text-align: start;"><span class="fw-bold">Control</span></td>

                                                        <td class="child-tab"><asp:TextBox ID="value8" CssClass="form-control" onchange ="sumaControl(); sumaGlobal()" Width="45" MaxLength="2" oper-sum2="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value10" CssClass="form-control" onchange ="sumaControl(); sumaGlobal()" Width="45" MaxLength="2" oper-sum2="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value17" CssClass="form-control" onchange ="sumaControl(); sumaGlobal()" Width="45" MaxLength="2" oper-sum2="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value26" CssClass="form-control" onchange ="sumaControl(); sumaGlobal()" Width="45" MaxLength="2" oper-sum2="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value31" CssClass="form-control" onchange ="sumaControl(); sumaGlobal()" Width="45" MaxLength="2" oper-sum2="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value34" CssClass="form-control" onchange ="sumaControl(); sumaGlobal()" Width="45" MaxLength="2" oper-sum2="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value35" CssClass="form-control" onchange ="sumaControl(); sumaGlobal()" Width="45" MaxLength="2" oper-sum2="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value40_2" CssClass="form-control" onchange ="sumaControl()" Width="45" MaxLength="2" oper-sum2="true" onkeydown="return false;" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                        <td style ="border: 0"><asp:TextBox ID="suma2" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                        <td style ="border: 0"><asp:TextBox ID="total2" CssClass="form-control" Width="45" MaxLength="3" runat="server">0</asp:TextBox></td>
                                                     </tr>

                                                    <tr class="text-center">
                                                        <td>&nbsp;</td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 16:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 25:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 26:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 28:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 30:</span></td>
                                                        <td style ="border: 0">&nbsp;</td>
                                                        <td style ="border: 0">&nbsp;</td>
                                                        <td style ="border: 0">&nbsp;</td>
                                                    
                                                        <td style ="border: 0">&nbsp;</td>
                                                        <td style ="border: 0">&nbsp;</td>
                                                        <td style ="border: 0">&nbsp;</td>
                                                        <td style ="border: 0">&nbsp;</td>
                                                        <td style ="border: 0">&nbsp;</td>

                                                    </tr>

                                                    <tr class="text-center">
                                                        <td class="child-tab" style="text-align: start;"><span class="fw-bold">Supervisión</span></td>

                                                        <td class="child-tab"><asp:TextBox ID="value16" CssClass="form-control" onchange ="sumaSupervision(); sumaGlobal()" Width="45" MaxLength="2" oper-sum3="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value25" CssClass="form-control" onchange ="sumaSupervision(); sumaGlobal()" Width="45" MaxLength="2" oper-sum3="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value26_2" CssClass="form-control" onchange ="sumaSupervision()" Width="45" MaxLength="2" oper-sum3="true" onkeydown="return false;" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value28_2" CssClass="form-control" onchange ="sumaSupervision()" Width="45" MaxLength="2" oper-sum3="true" onkeydown="return false;" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value30" CssClass="form-control" onchange ="sumaSupervision(); sumaGlobal()" Width="45" MaxLength="2" oper-sum3="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                        <td><asp:TextBox ID="suma3" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="total3" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    </tr>

                                                    <tr class="text-center">
                                                        <td></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 22:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 23:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 24:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 27:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 31:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 32:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 33:</span></td>
                                                        <td></td>
                                                    
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                    </tr>

                                                    <tr class="text-center">
                                                        <td class="child-tab" style="text-align: start;"><span class="fw-bold">Afecto</span></td>

                                                        <td class="child-tab"><asp:TextBox ID="value22" CssClass="form-control" onchange ="sumaAfecto(); sumaGlobal()" Width="45" MaxLength="2" oper-sum4="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value23" CssClass="form-control" onchange ="sumaAfecto(); sumaGlobal()" Width="45" MaxLength="2" oper-sum4="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value24" CssClass="form-control" onchange ="sumaAfecto(); sumaGlobal()" Width="45" MaxLength="2" oper-sum4="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value27" CssClass="form-control" onchange ="sumaAfecto(); sumaGlobal()" Width="45" MaxLength="2" oper-sum4="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value31_2" CssClass="form-control" onchange ="sumaAfecto()" Width="45" MaxLength="2" oper-sum4="true" onkeydown="return false;" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value32" CssClass="form-control" onchange ="sumaAfecto(); sumaGlobal()" Width="45" MaxLength="2" oper-sum4="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value33" CssClass="form-control" onchange ="sumaAfecto(); sumaGlobal()"  Width="45" MaxLength="2" oper-sum4="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                        <td><asp:TextBox ID="suma4" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="total4" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    </tr>

                                                    <tr class="text-center">
                                                        <td></td>
                                                        <td class="child-tab text-nowrap fw-bold">&nbsp;<span>Item 7:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 16:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 18:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 20:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 39:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 40:</span></td>
                                                        <td></td>
                                                        <td></td>
                                                    
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <tr class="text-center">
                                                        <td class="child-tab" style="text-align: start;"><span class="fw-bold">Apoyo</span></td>

                                                        <td class="child-tab"><asp:TextBox ID="value7" CssClass="form-control" onchange ="sumaApoyo(); sumaGlobal()" Width="45" MaxLength="2" oper-sum5="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value16_2" CssClass="form-control" onchange ="sumaApoyo()" Width="45" MaxLength="2" oper-sum5="true" onkeydown="return false;" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value18" CssClass="form-control" onchange ="sumaApoyo(); sumaGlobal()" Width="45" MaxLength="2" oper-sum5="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value20" CssClass="form-control" onchange ="sumaApoyo(); sumaGlobal()" Width="45" MaxLength="2" oper-sum5="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value39_2" CssClass="form-control" onchange ="sumaApoyo()" Width="45" MaxLength="2" oper-sum5="true" onkeydown="return false;" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value40_3" CssClass="form-control" onchange ="sumaApoyo()" Width="45" MaxLength="2" oper-sum5="true" onkeydown="return false;" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                        <td><asp:TextBox ID="suma5" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="total5" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    </tr>

                                                    <tr class="text-center">
                                                        <td></td>
                                                        <td class="child-tab text-nowrap">&nbsp;<span>Item 5:</span></td>
                                                        <td class="child-tab text-nowrap fw-bold">&nbsp;<span>Item 9:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 36:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 37:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 38:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 39:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 40:</span></td>
                                                        <td></td>
                                                    
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                    </tr>

                                                    <tr class="text-center">
                                                        <td class="child-tab" style="text-align: start;"><span class="fw-bold">Conducta Disruptiva &nbsp;</span></td>

                                                        <td class="child-tab"><asp:TextBox ID="value5_2" CssClass="form-control" onchange ="sumaConducta()" Width="45" MaxLength="2" oper-sum6="true" onkeydown="return false;" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value9" CssClass="form-control" onchange ="sumaConducta(); sumaGlobal()" Width="45" MaxLength="2" oper-sum6="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value36" CssClass="form-control" onchange ="sumaConducta(); sumaGlobal()" Width="45" MaxLength="2" oper-sum6="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value37" CssClass="form-control" onchange ="sumaConducta(); sumaGlobal()" Width="45" MaxLength="2" oper-sum6="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value38" CssClass="form-control" onchange ="sumaConducta(); sumaGlobal()" Width="45" MaxLength="2" oper-sum6="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value39_3" CssClass="form-control" onchange ="sumaConducta()" Width="45" MaxLength="2" oper-sum6="true" onkeydown="return false;" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value40_4" CssClass="form-control" onchange ="sumaConducta()" Width="45" MaxLength="2" oper-sum6="true" onkeydown="return false;" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                        <td><asp:TextBox ID="suma6" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="total6" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    </tr>

                                                    <tr class="text-center">
                                                        <td></td>
                                                        <td class="child-tab text-nowrap">&nbsp;<span>Item 4:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 10:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 15:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 18:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 19:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 21:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 22:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 36:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 38:</span></td>
                                                    
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                   </tr>

                                                    <tr class="text-center">
                                                        <td class="child-tab" style="text-align: start;"><span class="fw-bold">Comunicación &nbsp;</span></td>

                                                        <td class="child-tab"><asp:TextBox ID="value4_2" CssClass="form-control" onchange ="sumaComunicacion()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum7="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value10_2" CssClass="form-control" onchange ="sumaComunicacion()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum7="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value15" CssClass="form-control" onchange ="sumaComunicacion(); sumaGlobal()" Width="45" MaxLength="2" oper-sum7="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value18_2" CssClass="form-control" onchange ="sumaComunicacion()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum7="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value19" CssClass="form-control" onchange ="sumaComunicacion(); sumaGlobal()" Width="45" MaxLength="2" oper-sum7="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value21" CssClass="form-control" onchange ="sumaComunicacion(); sumaGlobal()" Width="45" MaxLength="2" oper-sum7="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value22_2" CssClass="form-control" onchange ="sumaComunicacion()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum7="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value36_2" CssClass="form-control" onchange ="sumaComunicacion()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum7="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value38_2" CssClass="form-control" onchange ="sumaComunicacion()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum7="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>

                                                        <td><asp:TextBox ID="suma7" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="total7" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    </tr>

                                                    <tr class="text-center">
                                                        <td></td>
                                                        <td class="child-tab text-nowrap fw-bold">&nbsp;<span>Item 6:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 15:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 29:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 34:</span></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                   </tr>

                                                    <tr class="text-center">
                                                        <td class="child-tab" style="text-align: start;"><span class="fw-bold">Afecto Negativo &nbsp;</span></td>

                                                        <td class="child-tab"><asp:TextBox ID="value6" CssClass="form-control" onchange ="sumaNegativo(); sumaGlobal()" Width="45" MaxLength="2" oper-sum8="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value15_2" CssClass="form-control" onchange ="sumaNegativo()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum8="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value29" CssClass="form-control" onchange ="sumaNegativo(); sumaGlobal()" Width="45" MaxLength="2" oper-sum8="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value34_2" CssClass="form-control" onchange ="sumaNegativo()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum8="true" runat="server">0</asp:TextBox></td>
                                                    
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                        <td><asp:TextBox ID="suma8" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="total8" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    </tr>

                                                    <tr class="text-center">
                                                        <td></td>
                                                        <td class="child-tab text-nowrap fw-bold">&nbsp;<span>Item 2:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 12:</span></td>
                                                        <td class="child-tab fw-bold">&nbsp;<span>Item 13:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 14:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 17:</span></td>
                                                        <td class="child-tab">&nbsp;<span>Item 40:</span></td>
                                                        <td></td>
                                                        <td></td>
                                                    
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <tr class="text-center">
                                                        <td class="child-tab" style="text-align: start;"><span class="fw-bold">Recurso</span></td>

                                                        <td class="child-tab"><asp:TextBox ID="value2" CssClass="form-control" onchange ="sumaRecurso(); sumaGlobal()" Width="45" MaxLength="2" oper-sum9="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value12_2" CssClass="form-control" onchange ="sumaRecurso()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum9="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value13" CssClass="form-control" onchange ="sumaRecurso(); sumaGlobal()" Width="45" MaxLength="2" oper-sum9="true" global="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value14_2" CssClass="form-control" onchange ="sumaRecurso()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum9="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value17_2" CssClass="form-control" onchange ="sumaRecurso()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum9="true" runat="server">0</asp:TextBox></td>
                                                        <td class="child-tab"><asp:TextBox ID="value40_5" CssClass="form-control" onchange ="sumaRecurso()" Width="45" MaxLength="2" onkeydown="return false;" oper-sum9="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                        <td><asp:TextBox ID="suma9" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="total9" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                    </tr>

                                                    <tr class="text-center">
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                        <td colspan="2" class="child-tab" style="text-align: start;"><span class="fw-bold">Puntaje global</span></td>
                                                        <td></td>
                                                    </tr>

                                                    <tr class="text-center">
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                        <td><asp:TextBox ID="suma10" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
                                                        <td><asp:TextBox ID="total10" CssClass="form-control" Width="45" MaxLength="2" runat="server">0</asp:TextBox></td>
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
