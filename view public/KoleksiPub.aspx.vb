Public Class KoleksiPub
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Panggil method di user control untuk mengaktifkan menu Koleksi
        Dim header As Header = CType(Me.HeaderControl, Header)
        header.SetActiveNav("Koleksi")


        'DROPDOWNLIST DDLKATEGORI
        'Tampilkan data kategori di DdlKategori
        Dim dtKat As New DataTable
        Dim kt As New Kategori_m
        dtKat = kt.Lihat()


        'Hapus isi dari dropdownlist terlebih dahulu
        DdlKategori.Items.Clear()


        'Atur dropdownlist: data yang ditampilkan dan data yang menjadi nilai
        DdlKategori.DataSource = dtKat
        DdlKategori.DataTextField = "KATEGORI"
        DdlKategori.DataValueField = "ID"


        'Bind data ke Dropdownlist
        DdlKategori.DataBind()


        'Menambahkan item kosong
        DdlKategori.Items.Insert(0, New ListItem("", ""))




        'GRIDVIEW GV
        'Tampilkan data koleksi di GV
        Dim dtkol As New DataTable
        Dim ko As New Koleksi_m()
        dtkol = ko.Lihat()


        'Hapus isi dari GV terlebih dahulu


        'Atur Gridview
        GV.DataSource = dtkol
        GV.DataBind()

    End Sub

End Class