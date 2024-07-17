<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="Sidebar.ascx.vb" Inherits="polis.Sidebar" %>

<%@ Register Src="ModalLogout.ascx" TagPrefix="uc" TagName="ModalLogout" %>

<!-- Sidebar -->
<ul class="navbar-nav bg-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <li class="nav-item">
        <%
            Dim level As String = Session("level")
            Dim home As String
            If level = "akademik" Then
                home = "Peminjaman.aspx"
            Else
                home = "Beranda.aspx"
            End If
        %>

        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
            <div class="sidebar-brand-icon">
                <img src="/img/LogoPolitala.png" width="50" />
            </div>
            <div class="sidebar-brand-text mx-3">POLIS Politala</div>
        </a>
    </li>

    <!-- Divider -->
    <li>
        <hr class="sidebar-divider my-0">
    </li>

    <!-- Nav Item - Beranda -->
    <% If level = "admin" Or level = "member" Then %>
    <li class="nav-item">
        <a class="nav-link" href="Beranda.aspx">
            <i class="fa-solid fa-fw fa-home"></i>
            <span>Beranda</span>
        </a>
    </li>
    <% End If %>

    <!-- Nav Item - Master Collapse Menu -->
    <% If level = "admin" Or level = "member" Then %>
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMaster" aria-expanded="true" aria-controls="collapseMaster">
            <i class="fa-solid fa-fw fa-university"></i>
            <span>Master</span>
        </a>
        <div id="collapseMaster" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Data Perguruan Tinggi:</h6>

                <% If level = "admin" Then %>
                <a class="collapse-item" href="">Prodi</a>
                <% End If %>

                <a class="collapse-item" href="">Pustakawan</a>
                <a class="collapse-item" href="">Layanan</a>
                <a class="collapse-item" href="">Kontak</a>
            </div>
        </div>
    </li>
    <% End If %>

    <!-- Nav Item - Buku Collapse Menu -->
    <% If level = "admin" Or level = "member" Then %>
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBuku" aria-expanded="true" aria-controls="collapseBuku">
            <i class="fa-solid fa-fw fa-book-open"></i>
            <span>Buku</span>
        </a>
        <div id="collapseBuku" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Data Buku:</h6>

                <% If level = "admin" Then %>
                <a class="collapse-item" href="kategori.aspx">Kategori</a>
                <% End If %>

                <a class="collapse-item" href="Koleksi.aspx">Koleksi</a>
            </div>
        </div>
    </li>
    <% End If %>

    <!-- Divider -->
    <% If level = "admin" Or level = "member" Then %>
    <li>
        <hr class="sidebar-divider my-0">
    </li>
    <% End If %>

    <!-- Nav Item - Member -->
    <% If level = "admin" Then %>
    <li class="nav-item">
        <a class="nav-link" href="Member.aspx">
            <i class="fa-solid fa-fw fa-user-friends"></i>
            <span>Member</span>
        </a>
    </li>
    <% End If %>

    <!-- Nav Item - Pengguna -->
    <% If level = "admin" Then %>
    <li class="nav-item">
        <a class="nav-link" href="Pengguna.aspx">
            <i class="fa-solid fa-fw fa-user"></i>
            <span>Pengguna</span>
        </a>
    </li>
    <% End If %>

    <!-- Nav Item - Peminjaman -->
    <li class="nav-item">
       <a class="nav-link" href="Peminjaman.aspx">
            <i class="fa-solid fa-fw fa-calendar-alt"></i>
            <span>Peminjaman</span>
        </a>
    </li>

    <!-- Nav Item - Data Diri -->
    <% If level = "member" Then %>
    <li class="nav-item">
        <a class="nav-link" href="">
            <i class="fa-solid fa-fw fa-user-cog"></i>
            <span>Data Diri</span>
        </a>
    </li>
    <% End If %>

    <!-- Divider -->
    <li>
        <hr class="sidebar-divider my-0">
    </li>

    <!-- Nav Item - Logout -->
    <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="modal" data-target="#ModalLogout">
            <i class="fa-solid fa-fw fa-sign-out-alt"></i>
            <span>Logout</span>
        </a>
    </li>
</ul>
<!-- End of Sidebar -->

<!-- Include Modal Logout -->
<uc:ModalLogout ID="ModalLogout" runat="server" />