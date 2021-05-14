<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResimSilme.aspx.cs" Inherits="WebX.ResimSilme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="ortak.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="resimYolu" DataValueField="resimYolu" AutoPostBack="True" >
                <asp:ListItem></asp:ListItem>
            </asp:CheckBoxList>
            <asp:CheckBoxList ID="CheckBoxList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="resimYolu" DataValueField="resimYolu">
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:adminConnectionString %>" SelectCommand="SELECT * FROM [resim2]">
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:adminConnectionString %>" SelectCommand="SELECT [resimYolu] FROM [resim]">
            </asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Resimleri Sil" />
            <br />
        </div>
    </form>
</body>
</html>
