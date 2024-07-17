<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Koleksi.aspx.vb" Inherits="polis.Koleksi" %>

<%@ Register TagPrefix="uc" TagName="Sidebar" Src="~/view user/Sidebar.ascx" %>
<%@ Register TagPrefix="uc" TagName="Topbar" Src="~/view user/Topbar.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="~/view user/Footer.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>POLIS - Perpustakaan Politala</title>

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.5.2/css/all.css" />

        <!-- Template Stylesheet -->
        <link href="/css/SBAdmin.css" rel="stylesheet" />
    </head>

    <body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">
            <!-- Panggil Sidebar -->
            <uc:Sidebar ID="SidebarControl" runat="server" />

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <!-- Panggil Topbar -->
                    <uc:Topbar ID="TopbarControl" runat="server" />

                    <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Buku</h1>
                        </div>

                        <!-- Content Row -->
                        <div class="row">
                            <form id="form1" runat="server">
                                <div class="col-md-6">
                                    <!-- Input Fields to Add New Data -->
                                    <table style="width:500px;" class="table table-bordered">
                                        <tr>
                                            <td><label for="txtKdBuku" class="col-form-label">Kode Buku:</label></td>
                                            <td><asp:TextBox ID="txtKdBuku" runat="server" class="form-control" /></td>
                                        </tr>
                                        <tr>
                                            <td><label for="txtIdKat" class="col-form-label">ID Kategori:</label></td>
                                            <td><asp:TextBox ID="txtIdKat" runat="server" class="form-control" /></td>
                                        </tr>
                                        <tr>
                                            <td><label for="txtJudul" class="col-form-label">Judul:</label></td>
                                            <td><asp:TextBox ID="txtJudul" runat="server" class="form-control" /></td>
                                        </tr>
                                        <tr>
                                            <td><label for="txtTahun" class="col-form-label">Tahun:</label></td>
                                            <td><asp:TextBox ID="txtTahun" runat="server" class="form-control" /></td>
                                        </tr>
                                        <tr>
                                            <td><label for="txtPenerbit" class="col-form-label">Penerbit:</label></td>
                                            <td><asp:TextBox ID="txtPenerbit" runat="server" class="form-control" /></td>
                                        </tr>
                                        <tr>
                                            <td><label for="txtCover" class="col-form-label">Cover:</label></td>
                                            <td><asp:FileUpload ID="txtCover" runat="server" /></td>
                                        </tr>
                                        <tr>
                                            <td><label for="txtStok" class="col-form-label">Stok:</label></td>
                                            <td><asp:TextBox ID="txtStok" runat="server" class="form-control" /></td>
                                        </tr>
                                        <tr>
                                            <td><label for="txtTersedia" class="col-form-label">Tersedia:</label></td>
                                            <td><asp:TextBox ID="txtTersedia" runat="server" class="form-control" /></td>
                                        </tr>
                                        <tr>
                                            <td><label for="txtHarga" class="col-form-label">Harga:</label></td>
                                            <td><asp:TextBox ID="txtHarga" runat="server" class="form-control" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Button ID="btnAdd" runat="server" Text="Add New Buku" class="btn btn-primary" />
                                            </td>
                                        </tr>
                                    </table>

                                    <!-- GridView to Display Data -->
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="kdbuku" CssClass="table table-bordered table-striped">
                                        <Columns>
                                            <asp:BoundField DataField="kdbuku" HeaderText="Kode Buku" />
                                            <asp:BoundField DataField="idkat" HeaderText="ID Kategori" />
                                            <asp:BoundField DataField="judul" HeaderText="Judul" />
                                            <asp:BoundField DataField="tahun" HeaderText="Tahun" />
                                            <asp:BoundField DataField="penerbit" HeaderText="Penerbit" />
                                            <asp:ImageField DataImageUrlField="cover" HeaderText="Cover" />
                                            <asp:BoundField DataField="stok" HeaderText="Stok" />
                                            <asp:BoundField DataField="tersedia" HeaderText="Tersedia" />
                                            <asp:BoundField DataField="harga" HeaderText="Harga" />
                                            <asp:TemplateField HeaderText="Actions">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Delete" Text="Delete" class="btn btn-sm btn-danger" OnClientClick="return confirm('Are you sure you want to delete this record?');" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- End Container Fluid -->

                </div>
                <!-- End Main Content -->

                <!-- Panggil Footer -->
                <uc:Footer ID="FooterControl" runat="server" />

            </div>
            <!-- End Content Wrapper -->

        </div>
        <!-- End Page Wrapper -->
    </body>
</html>