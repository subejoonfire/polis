Public Class Kategori
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnTambah_Click(sender As Object, e As EventArgs) Handles BtnTambah.Click
        Response.Redirect("KategoriTambah.aspx")
    End Sub
End Class