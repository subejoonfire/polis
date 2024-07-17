<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="KoleksiPub.aspx.vb" Inherits="polis.KoleksiPub" %>

<%@ Register TagPrefix="uc" TagName="Header" Src="~/view public/Header.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="~/view public/Footer.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>POLIS - Perpustakaan Politala</title>

    <%--Google Web Fonts--%>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600&family=Roboto&display=swap" rel="stylesheet" />

    <%--Icon Font Stylesheet--%>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.5.2/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <%--Customized Bootstrap Stylesheet--%>
    <link href="../css/BootstrapMin.css" rel="stylesheet" />

    <%--Template Stylesheet--%>
    <link href="../css/Public.css" rel="stylesheet" />

    <style type="text/css">
       .auto-style1 {
            top: -2147483648%;
            right: 46px;
        }
    </style>

</head>

<body>
    <uc:Header id="HeaderControl" runat="server" />

    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="mx-auto text-center mb-5" style="max-width: 900px;">
                <br />
                <h5 class="section-title px-3">Koleksi</h5>
                <h1 class="mb-4">Koleksi Perpustakaan Politala</h1>

                <form id="form1" runat="server">
                    <div class="container-fluid">
                        <div class="container py-5">
                            <div class="row g-3">
                                <div class="col-md-9">
                                    <div class="form-floating">
                                        <asp:DropDownList class="form-select bg-white border-1" ID="DdlKategori" runat="server">
                                        </asp:DropDownList>
                                        <label for="DdlKategori">Pilih Kategori</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-floating">
                                        <asp:Button class="btn btn-primary text-white w-100 py-3" ID="BtnPilih" runat="server" Text="Pilih Kategori" />
                                    </div>
                                </div>
                            </div>

                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped">
                                <Columns>
                                    <asp:BoundField DataField="idkat" HeaderText="ID Kategori" />
                                    <asp:BoundField DataField="judul" HeaderText="Judul" />
                                    <asp:BoundField DataField="tahun" HeaderText="Tahun" />
                                    <asp:BoundField DataField="penerbit" HeaderText="Penerbit" />
                                    <asp:BoundField DataField="stok" HeaderText="Stok" />
                                    <asp:BoundField DataField="tersedia" HeaderText="Tersedia" />
                                    <asp:BoundField DataField="harga" HeaderText="Harga" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <uc:Footer runat="server" />
</body>
</html>