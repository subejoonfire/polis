Public Class KoleksiPub
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim kat As New Kategori_m
        Dim dtkol As New DataTable
        Dim ko As New Koleksi_m()
        dtkol = ko.GetAllKoleksi


        'Hapus isi dari GV terlebih dahulu


        'Atur Gridview
        Dim GV As GridView = CType(Me.GridView1, GridView) ' declare and assign the GridView
        GV.DataSource = dtkol
        GV.DataBind()

        Dim km As New Kategori_m()
        Dim dtKat As DataTable = km.GetAllKategori()
        DdlKategori.DataSource = dtkat
        DdlKategori.DataTextField = "KATEGORI"
        DdlKategori.DataValueField = "idkat"
        DdlKategori.DataBind()

        ' Add an empty item to the DropDownList
        DdlKategori.Items.Insert(0, New ListItem("", ""))

    End Sub

End Class