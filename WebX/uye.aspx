<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uye.aspx.cs" Inherits="WebX.uye" %>

<!DOCTYPE html>

<html lang="en">
<head>
<style>
    body {
    /*background: url(595234.jpg) center fixed;*/
    background-size: cover;
}
</style>
    <link href="stilim.css" rel="stylesheet" />
	<title>Login V8</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->


</head>
<body>
	<div>
        <asp:Label  ID="mesajim" runat="server" ></asp:Label>
        </div>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178" runat="server">
					<span class="login100-form-title">
						Kayıt Ol
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Kullanıcı adını giriniz">
                        <asp:TextBox ID="txtKulAdiKayit"  class="input100" type="text" name="username" placeholder="Kullanıcı adı" runat="server"></asp:TextBox>
                        
						<span class="focus-input100"></span>
					</div>
                    
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Şifrenizi giriniz">
                        <asp:TextBox ID="txtSifreKayit" class="input100" type="password" name="pass" placeholder="Şifre" runat="server"></asp:TextBox>
                       
						<span class="focus-input100"></span>
					</div>
                    
                    <div class="wrap-input100 validate-input m-b-16" data-validate="Şifrenizi giriniz">
                        <asp:TextBox ID="txtSifreKayitTekrar" class="input100" type="password" name="username" placeholder="Şifre" runat="server"></asp:TextBox>
                       
						<span class="focus-input100"></span>
					</div>
                  
					<div class="wrap-input100 validate-input m-b-16" data-validate = "E-Postayı giriniz">
                        <asp:TextBox ID="txtEmail" class="input100" type="text" name="pass" placeholder="E-Posta" runat="server"></asp:TextBox>
                       
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						
                        <asp:Button class="login100-form-btn" ID="Button1" runat="server" Text="Kayıt Ol" OnClick="Button1_Click1" />
					</div>
                    <br>
					<div class="container-login100-form-btn">
						
						<button><a href="https://resim.serafettingunes.com/uyeGiris.aspx"   >Giriş Sayfasına Git</a></button>
					    <br />
                     
                     <button> &nbsp;&nbsp; <a href="https://resim.serafettingunes.com/Resimler"   >Resimlere Git</a></button>
					    <br />
&nbsp;&nbsp;
                        <button>
                            <a href="https://resim.serafettingunes.com/Resimler2.cshtml">Resimler2'ye Git</a>
                        </button>
                       
                                                <button>
                            <a href="https://resim.serafettingunes.com/Resimler4.cshtml">Resimler4'e Git</a>
                        </button>
					
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>