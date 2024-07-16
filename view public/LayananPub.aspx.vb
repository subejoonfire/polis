Public Class LayananPub
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Panggil method di user control untuk mengaktifkan menu Layanan
        Dim header As Header = CType(Me.HeaderControl, Header)
        header.SetActiveNav("Layanan")

        ' Panggil data layanan
        Dim dt As New DataTable
        Dim l As New Layanan_m
        dt = l.Lihat()
        LblLayanan.Text = dt.Rows(0).Item("layanan")
    End Sub

End Class