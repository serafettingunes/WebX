<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aktivasyon.aspx.cs" Inherits="WebX.aktivasyon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="ortak.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="field name-box">
              <asp:TextBox ID="txtAktivasyon"  placeholder="aktivasyon" runat="server"></asp:TextBox>
              
        		<label for="name">Gmailinize Gelen Aktivasyon Kodunu Giriniz</label>
		        <span class="ss-icon">check</span>
	      </div>
        <asp:Button ID="aGonder" runat="server" Text="Gönder" OnClick="aGonder_Click" />
    </form>
</body>
</html>
