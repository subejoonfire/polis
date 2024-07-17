Public Class Kategori
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ' Load data into GridView
            Dim kategori_m As New Kategori_m
            Dim dt As DataTable = kategori_m.GetAllKategori()
            GridView1.DataSource = dt
            GridView1.DataBind()
        End If
    End Sub

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim kategori_m As New Kategori_m
        Dim kategori As String = txtKategori.Text

        If kategori_m.CreateKategori(kategori) Then
            Response.Redirect("Kategori.aspx")
        Else
            Response.Redirect("Kategori.aspx")
        End If
    End Sub
End Class