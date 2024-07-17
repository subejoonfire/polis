<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Member.aspx.vb" Inherits="polis.Member" %>

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
                                <h1 class="h3 mb-0 text-gray-800">Member</h1>
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
                                                    <td><label for="txtIdMember" class="col-form-label">ID Member:</label></td>
                                                    <td><asp:TextBox ID="txtIdMember" runat="server" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="ddlIdProdi" class="col-form-label">ID Prodi:</label></td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlIdProdi" runat="server" class="form-control">
                                                            <asp:ListItem Value="">Select Prodi</asp:ListItem>
                                                            <asp:ListItem Value="AI">Agroindustri</asp:ListItem>
                                                            <asp:ListItem Value="AKT">Akuntansi</asp:ListItem>
                                                            <asp:ListItem Value="TI">Teknologi Informasi</asp:ListItem>
                                                            <asp:ListItem Value="TO">Teknologi Otomotif</asp:ListItem>
                                                            <asp:ListItem Value="TRKJ">Teknologi Rekayasa Komputer Jaringan</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><label for="ddlIdAkun" class="col-form-label">ID Akun:</label></td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlIdAkun" runat="server" class="form-control">
                                                            <asp:ListItem Value="">Select Akun</asp:ListItem>
                                                            <asp:ListItem Value="1">admin</asp:ListItem>
                                                            <asp:ListItem Value="2">akademik</asp:ListItem>
                                                            <asp:ListItem Value="3">jaka</asp:ListItem>
                                                            <asp:ListItem Value="4">Arif Supriyanto</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtNama" class="col-form-label">Nama:</label></td>
                                                    <td><asp:TextBox ID="txtNama" runat="server" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtNoHp" class="col-form-label">No HP:</label></td>
                                                    <td><asp:TextBox ID="txtNoHp" runat="server" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtTempatLahir" class="col-form-label">Tempat Lahir:</label></td>
                                                    <td><asp:TextBox ID="txtTempatLahir" runat="server" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtTglLahir" class="col-form-label">Tanggal Lahir:</label></td>
                                                    <td><asp:TextBox ID="txtTglLahir" runat="server" class="form-control" TextMode="Date" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtJabatan" class="col-form-label">Jabatan:</label></td>
                                                    <td><asp:TextBox ID="txtJabatan" runat="server" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:Button ID="btnAdd" runat="server" Text="Add New Member" class="btn btn-primary" />
                                                    </td>
                                                </tr>
                                            </table>

                                            <!-- GridView to Display Data -->
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idmember" CssClass="table table-bordered table-striped">
                                                <Columns>
                                                    <asp:BoundField DataField="idmember" HeaderText="ID Member" />
                                                    <asp:BoundField DataField="idprodi" HeaderText="ID Prodi" />
                                                    <asp:BoundField DataField="idakun" HeaderText="ID Akun" />
                                                    <asp:BoundField DataField="nama" HeaderText="Nama" />
                                                    <asp:BoundField DataField="nohp" HeaderText="No HP" />
                                                    <asp:BoundField DataField="tempatlahir" HeaderText="Tempat Lahir" />
                                                    <asp:BoundField DataField="tgllahir" HeaderText="Tanggal Lahir" />
                                                    <asp:BoundField DataField="jabatan" HeaderText="Jabatan" />
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
                            <%
                                Else
                                    home = "Beranda.aspx"
                                End If
                            %>
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