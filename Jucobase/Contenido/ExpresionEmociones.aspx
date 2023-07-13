<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="ExpresionEmociones.aspx.vb" Inherits="Jucobase.ExpresionEmociones" %>
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

        function suma1() {

            var valores = document.querySelectorAll('[oper-sum1=true]');
            var total = 0;

            valores.forEach(function (celda) {

                if (!(celda.value)) {
                    celda.value = 0;
                }

                total += parseFloat(celda.value);

            });

            $("#<%= TotalConciencia.ClientID %>").val(total);

        }

        function suma2() {

            var valores = document.querySelectorAll('[oper-sum2=true]');
            var total = 0;

            valores.forEach(function (celda) {

                if (!(celda.value)) {
                    celda.value = 0;
                }

                total += parseFloat(celda.value);

            });

            $("#<%= TotalExpresion.ClientID %>").val(total);

        }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Expresión de Emociones </h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Expresión de emociones</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->

        <form class="form-card row g-3" runat="server">
            <section class="section dashboard">
                <!-- Card -->
                    <div class="col-xxl-12 col-xl-12 px-12">

                      <div class="card info-card customers-card">
                        <div class="card-body mt-3">
                          <h5 class="card-title fw-bold ps-4">&nbsp
                                Captura de Expresión de Emociones </h5>

                    
                                    <div class="row d-inline-flex mt-3 mx-3">
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

                                    <div class="row mt-3 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                          <label for="inputNombre" class="form-label fw-bold">Nombre</label>
                                          <div class="mb-3">
                                            <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control"></asp:TextBox>
                                          </div>
                                        </div>
                                        <div class="col-md-4 me-3 ms-1">
                                          <label for="inputClave" class="form-label fw-bold">Clave de familia</label>
                                          <div class="mb-3">
                                            <asp:TextBox ID="inputClave" runat="server" CssClass="form-control"></asp:TextBox>
                                          </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputApellidoPaterno" class="form-label fw-bold">Apellido Paterno</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputApellidoPaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputFamilia" class="form-label fw-bold">Familia</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputApellidoMaterno" class="form-label fw-bold">Apellido Materno</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputApellidoMaterno" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputEdad" class="form-label fw-bold">Edad</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputEdad" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputFechaReporte" class="form-label fw-bold">Fecha de reporte</label>
                                            <div class="mb-3 position-relative">
                                              <i class="fa-regular fa-calendar position-absolute top-50 start-0 translate-middle-y"></i>
                                              <asp:TextBox ID="inputFechaReporte" runat="server" CssClass="form-control ps-aux" ></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputPrograma" class="form-label fw-bold">Programa</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputPrograma" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputTerapeuta" class="form-label fw-bold">Terapeuta</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputTerapeuta" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3" id="perfilAtencionFamiliar">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputAtencionFamiliar" class="form-label fw-bold">Modelo de Atención Familiar</label>
                                            <div class="mb-3">
                                                <asp:DropDownList ID="inputAtencionFamiliar" AutoPostBack="false"
                                                                CssClass="form-select" runat="server">
                                                    <asp:ListItem Selected="True" Value="1a">Atención familiar E-T</asp:ListItem>
                                                    <asp:ListItem Value="2a">Atención Familiar Híbrida</asp:ListItem>
                                                    <asp:ListItem Value="3a">Acompañamiento Breve</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="localAmbienteJuconi" class="form-label fw-bold">Localidad de Ambiente JUCONI</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="localAmbienteJuconi" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-2 mx-3">
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputRolFamilia" class="form-label fw-bold">Rol en la familia</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputRolFamilia" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>
                                        </div>
                               
                                        <div class="col-md-4 me-3 ms-1">
                                            <label for="inputAultoResponsable" class="form-label fw-bold">¿Es adulto responsable?</label>
                                            <div class="mb-3">
                                              <asp:TextBox ID="inputAdultoResponsable" runat="server" CssClass="form-control" ></asp:TextBox>
                                            </div>

                                            <div class="col-md-6">
                                               <label for="tutoriaLegal" class="form-label fw-bold">¿Tiene la tutoría legal?</label>
                                               <div class="mb-3">
                                                 <asp:TextBox ID="tutoriaLegal" runat="server" CssClass="form-control" ></asp:TextBox>
                                               </div>
                                            </div>
                                        </div>
                                    </div>


                               <div class="mt-3 mx-3">
                                    <div class="row mt-4 table-responsive justify-content-center" style="width: 100%">
                                        <div class="col-md-8">
                                            <table class="table table-sm table-borderless">
                                                <tbody>
                                                    <!-- Fila 1 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2 table-secondary"> Item 1: </td>
                                                        <td class="table-secondary col-sm-2"><asp:TextBox ID="valorItem1" CssClass="form-control" onchange ="suma1()" oper-sum1="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 2 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2"> Item 2: </td>
                                                        <td class="col-sm-2"><asp:TextBox ID="valorItem2" CssClass="form-control" onchange ="suma2()" oper-sum2="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 3 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2 table-secondary"> Item 3: </td>
                                                        <td class="table-secondary col-sm-2"><asp:TextBox ID="valorItem3" CssClass="form-control" onchange ="suma1()" oper-sum1="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 4 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2"> Item 4: </td>
                                                        <td class="col-sm-2"><asp:TextBox ID="valorItem4" CssClass="form-control" onchange ="suma2()" oper-sum2="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 5 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2 table-secondary"> Item 5: </td>
                                                        <td class="table-secondary col-sm-2"><asp:TextBox ID="valorItem5" CssClass="form-control" onchange ="suma1()" oper-sum1="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 6 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2"> Item 6: </td>
                                                        <td class="col-sm-2"><asp:TextBox ID="valorItem6" CssClass="form-control" onchange ="suma2()" oper-sum2="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 7 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2 table-secondary"> Item 7: </td>
                                                        <td class="table-secondary col-sm-2"><asp:TextBox ID="valorItem7" CssClass="form-control" onchange ="suma2()" oper-sum2="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 8 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2"> Item 8: </td>
                                                        <td class="col-sm-2"><asp:TextBox ID="valorItem8" CssClass="form-control" onchange ="suma1()" oper-sum1="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 9 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2 table-secondary"> Item 9: </td>
                                                        <td class="table-secondary col-sm-2"><asp:TextBox ID="valorItem9" CssClass="form-control" onchange ="suma1()" oper-sum1="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 10 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2"> Item 10: </td>
                                                        <td class="col-sm-2"><asp:TextBox ID="valorItem10" CssClass="form-control" onchange ="suma1()" oper-sum1="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 11 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2 table-secondary"> Item 11: </td>
                                                        <td class="table-secondary"><asp:TextBox ID="valorItem11" CssClass="form-control" onchange ="suma1()" oper-sum1="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 12 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2"> Item 12: </td>
                                                        <td class="col-sm-2"><asp:TextBox ID="valorItem12" CssClass="form-control" onchange ="suma2()" oper-sum2="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 13 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2 table-secondary"> Item 13: </td>
                                                        <td class="table-secondary col-sm-2"><asp:TextBox ID="valorItem13" CssClass="form-control" onchange ="suma2()" oper-sum2="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 14 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2"> Item 14: </td>
                                                        <td class="col-sm-2"><asp:TextBox ID="valorItem14" CssClass="form-control" onchange ="suma1()" oper-sum1="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 15 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2 table-secondary"> Item 15: </td>
                                                        <td class="table-secondary col-sm-2"><asp:TextBox ID="TvalorItem15" CssClass="form-control" onchange ="suma1()" oper-sum1="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <!-- Fila 16 -->
                                                    <tr>
                                                        <td></td>
                                                        <td class="fw-bold col-sm-2"> Item 16: </td>
                                                        <td class="col-sm-2"><asp:TextBox ID="valorItem16" CssClass="form-control" onchange ="suma2()" oper-sum2="true" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="col-md-8">
                                            <table class="table table-sm table-borderless">
                                                <tbody>
                                                    <tr>
                                                        <td class="col-sm-5 table-secondary fw-bold align-middle">Total Conciencia Emocional:</td>
                                                        <td class="col-sm-2 table-secondary"><asp:TextBox ID="TotalConciencia" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="col-sm-5 table-secondary fw-bold align-middle">Total Expresión Emocional:</td>
                                                        <td class="col-sm-2 table-secondary"><asp:TextBox ID="TotalExpresion" CssClass="form-control" runat="server">0</asp:TextBox></td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            
                                            </table>
                                        </div>
                                           
                                    </div>
                               </div>


                               <div class="row align-items-center mt-2 mx-3 ps-2">
                                    <div class="col-md-5 d-flex align-items-center">
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
                <!-- End Card -->
            </section>
        </form>
    </main>
</asp:Content>

