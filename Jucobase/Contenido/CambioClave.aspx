<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Contenido/Content.Master" CodeBehind="CambioClave.aspx.vb" Inherits="Jucobase.CambioClave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
          <h1>Cambiar contraseña</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Default.aspx">Inicio</a></li>
              <li class="breadcrumb-item active">Cambiar contraseña</li>
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
                         Cambiar contraseña</h5>

                    </div>
                  </div>
                </div>

                <!-- End Customers Card -->
            </section>
        </form>
    </main>
</asp:Content>
