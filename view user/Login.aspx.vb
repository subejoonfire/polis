Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnMasuk_Click(sender As Object, e As EventArgs) Handles BtnMasuk.Click
        Dim username As String = TxtUsername.Text
        Dim password As String = TxtPassword.Text
        Dim dt As New DataTable


        'validasi username dan password tidak kosong
        If username = "" Then
            MsgBox("Username tidak boleh kosong")
            TxtUsername.Focus()
        ElseIf password = "" Then
            MsgBox("Password tidak boleh kosong")
            TxtPassword.Focus()
        Else
            Dim ap As New AkunPengguna_m
            dt = ap.CekLogin(username, password)


            'cek apakah dt kosong
            Dim jumbar As Integer = dt.Rows.Count
            If jumbar = 0 Then
                MsgBox("Maaf username/password yang Anda masukkan kurang tepat")
                Response.Redirect("/view user/Login.aspx")
            Else
                Dim idakun As Integer = dt.Rows(0).Item("idakun")
                Dim level As String = dt.Rows(0).Item("level")
                Session.Add("idakun", idakun)
                Session.Add("level", level)


                'Cek jenis levelnya, berdasarkan diagram activity
                If level = "admin" Then
                    MsgBox("Selamat Datang Admin")
                    Response.Redirect("/view user/Beranda.aspx")
                ElseIf level = "akademik" Then
                    MsgBox("Selamat Datang Akademik")
                    Response.Redirect("/view user/Peminjaman.aspx")
                Else
                    Dim dt_member As New DataTable
                    Dim m As New Member_m
                    dt_member = m.LihatLogin(idakun)
                    Dim idmember As String = dt_member.Rows(0).Item("idmember")
                    Dim nama As String = dt_member.Rows(0).Item("nama")
                    Session.Add("idmember", idmember)
                    Session.Add("nama", nama)
                    MsgBox("Selamat Datang " & nama)
                    Response.Redirect("/view user/Beranda.aspx")
                End If
            End If
        End If
    End Sub


    Protected Sub BtnKembali_Click(sender As Object, e As EventArgs) Handles BtnKembali.Click
        Response.Redirect("/view public/BerandaPub.aspx")
    End Sub

End Class