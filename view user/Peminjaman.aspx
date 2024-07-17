<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Peminjaman.aspx.vb" Inherits="polis.Peminjaman" %>

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
                                <h1 class="h3 mb-0 text-gray-800">Peminjaman</h1>
                            </div>
                            <%
                                Dim level As String = Session("level")
                                Dim home As String
                                If level = "admin" Then
                            %>
                            <!-- Content Row -->
                                <div class="row">
                                    <form id="form1" runat="server">
                                        <div class="col-md-6">
                                            <!-- Input Fields to Add New Data -->
                                            <table style="width:500px;" class="table table-bordered">
                                                <tr>
                                                    <td><label for="txtKdPeminjaman" class="col-form-label">Kode Peminjaman:</label></td>
                                                    <td><asp:TextBox ID="txtKdPeminjaman" runat="server" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="ddlIdMember" class="col-form-label">ID Member:</label></td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlIdMember" runat="server" class="form-control">
                                                            <asp:ListItem Value="">-- Select ID Member --</asp:ListItem>
                                                            <asp:ListItem Value="198807032019031009">198807032019031009 - Jaka Permadi (TI)</asp:ListItem>
                                                            <asp:ListItem Value="198909272019031013">198909272019031013 - Arif Supriyanto (TRKJ)</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><label for="ddlKdBuku" class="col-form-label">Kode Buku:</label></td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlKdBuku" runat="server" class="form-control">
                                                            <asp:ListItem Value="21312321">dfsa</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtTglPinjam" class="col-form-label">Tanggal Pinjam:</label></td>
                                                    <td><asp:TextBox ID="txtTglPinjam" runat="server" class="form-control" type="date" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtTglKembali" class="col-form-label">Tanggal Kembali:</label></td>
                                                    <td><asp:TextBox ID="txtTglKembali" runat="server" class="form-control" type="date" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtJumlah" class="col-form-label">Jumlah:</label></td>
                                                    <td><asp:TextBox ID="txtJumlah" runat="server" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtStatus" class="col-form-label">Status:</label></td>
                                                    <td><asp:TextBox ID="txtStatus" runat="server" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:Button ID="btnAdd" runat="server" Text="Add New Peminjaman" class="btn btn-primary" />
                                                    </td>
                                                </tr>
                                            </table>

                                            <!-- GridView to Display Data -->
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="kdpeminjaman" CssClass="table table-bordered table-striped">
                                                <Columns>
                                                    <asp:BoundField DataField="kdpeminjaman" HeaderText="Kode Peminjaman" />
                                                    <asp:BoundField DataField="idmember" HeaderText="ID Member" />
                                                    <asp:BoundField DataField="kdbuku" HeaderText="Kode Buku" />
                                                    <asp:BoundField DataField="tgl_pinjam" HeaderText="Tanggal Pinjam" />
                                                    <asp:BoundField DataField="tgl_kembali" HeaderText="Tanggal Kembali" />
                                                    <asp:BoundField DataField="jumlah" HeaderText="Jumlah" />
                                                    <asp:BoundField DataField="status" HeaderText="Status" />
                                                    <asp:TemplateField HeaderText="Actions">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Delete" Text="Delete" class="btn btn-sm btn-danger" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </form>
                                </div>
                              <!-- End Container Fluid -->
                                <%
                                    Else
                                        home = "Beranda.aspx"
                                    End If
                                %>
                           </div>

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