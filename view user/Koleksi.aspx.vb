Public Class Koleksi
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            'oad data into GridView
            Dim koleksi_m As New Koleksi_m
            Dim dt As DataTable = koleksi_m.GetAllKoleksi()
            GridView1.DataSource = dt
            GridView1.DataBind()
        End If
    End Sub

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim koleksi_m As New Koleksi_m
        Dim kdbuku As String = txtKdBuku.Text
        Dim idkat As Integer = Integer.Parse(txtIdKat.Text)
        Dim judul As String = txtJudul.Text
        Dim tahun As Integer = Integer.Parse(txtTahun.Text)
        Dim penerbit As String = txtPenerbit.Text
        Dim cover As Byte() = txtCover.FileBytes
        Dim stok As Integer = Integer.Parse(txtStok.Text)
        Dim tersedia As Integer = Integer.Parse(txtTersedia.Text)
        Dim harga As Integer = Integer.Parse(txtHarga.Text)

        If koleksi_m.CreateKoleksi(kdbuku, idkat, judul, tahun, penerbit, cover, stok, tersedia, harga) Then
            Response.Redirect("Koleksi.aspx")
        Else
            Response.Redirect("Koleksi.aspx")
        End If
    End Sub
End Class