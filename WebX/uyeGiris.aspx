<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyeGiris.aspx.cs" Inherits="WebX.uyeGiris" %>

<!DOCTYPE html>

<html lang="en">
<head>
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
        <asp:Label ID="mesajim" runat="server" ></asp:Label></div>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form runat="server" class="login100-form validate-form p-l-55 p-r-55 p-t-178">
					<span class="login100-form-title">
						Kullanıcı Girişi
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="E-Postayı Giriniz">
                        <asp:TextBox ID="txtEposta" class="input100" type="text" name="username" placeholder="E-Posta" runat="server"></asp:TextBox>
                        
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Şifreyi Giriniz">
                        <asp:TextBox ID="txtSifreGiris" class="input100" type="password" name="pass" placeholder="Şifre" runat="server"></asp:TextBox>
                       
						<span class="focus-input100"></span>
					</div>

					<div class="text-right p-t-13 p-b-23">
						

						<a href="https://resim.serafettingunes.com/SifremiUnuttum.aspx" class="txt2">
							 Şifremi 
						</a>
                        <span class="txt1">
							Unuttum
						</span>
					</div>

					<div class="container-login100-form-btn">
                        <asp:Button  class="login100-form-btn" ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
                        
                       
					</div>

					<div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1 p-b-9">
							Kayıt olmadıysan
						</span>

						<a href="https://resim.serafettingunes.com/" class="txt3">
							Tıkla
						</a>
                        
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
