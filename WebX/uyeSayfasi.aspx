<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyeSayfasi.aspx.cs" Inherits="WebX.uyeSayfasi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="ortak.css" rel="stylesheet" />
    <link href="stilim.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button  ID="Button1" class="button" runat="server" OnClick="Button1_Click" Text="Çıkış Yap" />
        &nbsp;<br />
            <br />
            <asp:FileUpload ID="fuResimYukle"  CssClass="button" runat="server" />
            <br />
            <br />
            &nbsp;<asp:Panel ID="Panel1" runat="server">
                <asp:RadioButton ID="rb1" runat="server" GroupName="A" Text="1. Sıraya ekle" />
                <asp:RadioButton ID="rb2" runat="server" Text="2. sıraya ekle" GroupName="A" />
            </asp:Panel>
            <br />
            <asp:Button ID="btnResimEkle" runat="server" Text="Resim Ekle" OnClick="btnResimEkle_Click" />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kullanıcı Sayfasına Git" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Resim Silme Sayfasına Git" />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="Şifre Değiştirme Sayfasına Git" OnClick="Button4_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
