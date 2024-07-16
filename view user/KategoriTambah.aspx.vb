Public Class KategoriTambah
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnSimpan_Click(sender As Object, e As EventArgs) Handles BtnSimpan.Click
        Dim kategori As String = TxtKategori.Text
        If kategori <> "" Then
            Dim kt As New Kategori_m
            kt.SetKategori(kategori)

            Dim status As Boolean = kt.Tambah
            If status = True Then
                MsgBox("Data Kategori berhasil ditambahkan")
                Response.Redirect("Kategori.aspx")
            Else
                MsgBox("Data Kategori tidak berhasil ditambahkan")
            End If
        End If
    End Sub
End Class