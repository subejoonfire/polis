<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Pengguna.aspx.vb" Inherits="polis.Pengguna" %>

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
                                <h1 class="h3 mb-0 text-gray-800">Pengguna</h1>
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
                                                    <td><label for="txtIdAkun" class="col-form-label">ID Akun:</label></td>
                                                    <td><asp:TextBox ID="txtIdAkun" runat="server" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtUsername" class="col-form-label">Username:</label></td>
                                                    <td><asp:TextBox ID="txtUsername" runat="server" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtPassword" class="col-form-label">Password:</label></td>
                                                    <td><asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" /></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="txtLevel" class="col-form-label">Level:</label></td>
                                                    <td><asp:TextBox ID="txtLevel" runat="server" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:Button ID="btnAdd" runat="server" Text="Add New Pengguna" class="btn btn-primary" />
                                                    </td>
                                                </tr>
                                            </table>

                                            <!-- GridView to Display Data -->
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idakun" CssClass="table table-bordered table-striped">
                                                <Columns>
                                                    <asp:BoundField DataField="idakun" HeaderText="ID Akun" />
                                                    <asp:BoundField DataField="username" HeaderText="Username" />
                                                    <asp:BoundField DataField="level" HeaderText="Level" />
                                                    <asp:TemplateField HeaderText="Actions">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" Text="Edit" class="btn btn-sm btn-primary" />
                                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Copy" Text="Copy" class="btn btn-sm btn-secondary" />
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