<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifremiUnuttum.aspx.cs" Inherits="WebX.SifremiUnuttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <link href="stilim.css" rel="stylesheet" />

    <title></title>
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
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
<body style="text-align: center;">
    
 <div align="center">
        <asp:Label ID="mesaj" runat="server" Text=""></asp:Label>
    </div>
    
   

    <div class="container-login100">
        <div class="wrap-login100">
            <form runat="server" class="login100-form validate-form p-l-55 p-r-55 p-t-178">
                <span class="login100-form-title">Şifremi Unuttum
                </span>

                <div class="wrap-input100 validate-input m-b-16" data-validate="E-Postayı Giriniz">
                    <asp:TextBox ID="txtEposta" class="input100" type="text" name="username" placeholder="E-Posta" runat="server"></asp:TextBox>

                    <span class="focus-input100"></span>
                </div>



                <div class="container-login100-form-btn">
                    <asp:Button class="login100-form-btn" ID="btnGmailGonder" runat="server" Text="Şifre Gönder" OnClick="btnGmailGonder_Click" />


                </div>


            </form>
        </div>
    </div>
</body>
</html>
