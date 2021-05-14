<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kullanici2.aspx.cs" Inherits="WebX.Kullanici2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="ortak.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ePosta" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="kulAdi" HeaderText="kulAdi" SortExpression="kulAdi" />
                    <asp:BoundField DataField="kulSifre" HeaderText="kulSifre" SortExpression="kulSifre" />
                    <asp:BoundField DataField="ePosta" HeaderText="ePosta" ReadOnly="True" SortExpression="ePosta" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:adminConnectionString %>" SelectCommand="SELECT [kulAdi], [kulSifre], [ePosta] FROM [uyeTablo] WHERE ([ePosta] = @ePosta)">
                <SelectParameters>
                    <asp:SessionParameter Name="ePosta" SessionField="eposta" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kullanıcı Hesabını Sil" />
        </div>
    </form>
</body>
</html>
