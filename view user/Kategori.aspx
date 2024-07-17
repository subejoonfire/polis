<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Kategori.aspx.vb" Inherits="polis.Kategori" %>

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
                            <h1 class="h3 mb-0 text-gray-800">Kategori</h1>
                        </div>

                        <!-- Content Row -->
                        <div class="row">
                            <form id="form1" runat="server">
                                <div class="col-md-6">
                                    <!-- Input Fields to Add New Data -->
                                    <table style="width:500px;" class="table table-bordered">
                                        <tr>
                                            <td><label for="txtKategori" class="col-form-label">Kategori:</label></td>
                                            <td><asp:TextBox ID="txtKategori" runat="server" class="form-control" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Button ID="btnAdd" runat="server" Text="Add New Kategori" class="btn btn-primary" />
                                            </td>
                                        </tr>
                                    </table>

                                    <!-- GridView to Display Data -->
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idkat" CssClass="table table-bordered table-striped">
                                        <Columns>
                                            <asp:BoundField DataField="idkat" HeaderText="ID Kategori" />
                                            <asp:BoundField DataField="kategori" HeaderText="Kategori" />
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
                    <!-- /.container-fluid -->

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