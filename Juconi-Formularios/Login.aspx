<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Juconi_Formularios.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="assets/css/style.css" rel="stylesheet" />

    <title>Iniciar sesión</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="form-02-main">
              <div class="container">
                <div class="row">
                  <div class="col-md-12">
                    <div class="_lk_de">
                      <div class="form-03-main">
                        <div class="logo">
                          <img src="assets/img/user.png"/>
                        </div>
                        <div class="form-group">
                          <input type="email" name="email" class="form-control _ge_de_ol" type="text" placeholder="Enter Email" required="" aria-required="true"/>
                        </div>

                        <div class="form-group">
                          <input type="password" name="password" class="form-control _ge_de_ol" type="text" placeholder="Enter Password" required="" aria-required="true"/>
                        </div>

                        <div class="checkbox form-group">
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id=""/>
                            <label class="form-check-label" for="">
                              Remember me
                            </label>
                          </div>
                          <a href="#">Forgot Password</a>
                        </div>

                        <div class="form-group">
                          <div class="_btn_04">
                            <a href="#">Login</a>
                          </div>
                        </div>

                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>
        </div>
    </form>
</body>
</html>
