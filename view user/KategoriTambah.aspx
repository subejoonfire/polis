<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="KategoriTambah.aspx.vb" Inherits="polis.KategoriTambah" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Form Tambah Kategori</h1>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Kategori"></asp:Label>
&nbsp;<asp:TextBox ID="TxtKategori" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnSimpan" runat="server" Text="Simpan" />

        </div>
    </form>
</body>
</html>
