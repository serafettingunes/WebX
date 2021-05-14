<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifreDegistir.aspx.cs" Inherits="WebX.SifreDegistir" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <title>Login V14</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="stilim.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login_v14/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login_v14/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login_v14/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login_v14/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login_v14/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login_v14/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login_v14/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login_v14/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login_v14/css/util.css">
    <link rel="stylesheet" type="text/css" href="Login_v14/css/main.css">
    <!--===============================================================================================-->
</head>
<body>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <form id="form1" runat="server">
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
                    <form class="login100-form validate-form flex-sb flex-w">
                        <span class="login100-form-title p-b-32">Şifre Değiştirme Ekranı
                        </span>

                        
                        <div class="wrap-input100 validate-input m-b-36" data-validate="Username is required">
                            
                            <asp:TextBox CssClass="input100"  ID="TextBox1" runat="server"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>

                       
                        <div class="container-login100-form-btn">
                            <asp:Button ID="Button1" CssClass="login100-form-btn" runat="server" Text="Güncelle" OnClick="Button1_Click" /> 
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </form>



    <div id="dropDownSelect1"></div>

    <!--===============================================================================================-->
    <script src="Login_v14/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="Login_v14/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="Login_v14/vendor/bootstrap/js/popper.js"></script>
    <script src="Login_v14/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="Login_v14/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="Login_v14/vendor/daterangepicker/moment.min.js"></script>
    <script src="Login_v14/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="Login_v14/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="Login_v14/js/main.js"></script>

</body>
</html>
