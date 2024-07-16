Public Class Layanan_m
    Dim idlayanan As Integer
    Dim layanan As String
    'Dim file


    'Public Sub Tambah()


    'End Sub


    'Public Sub Ubah()


    'End Sub


    'Public Sub Hapus()


    'End Sub


    Public Function Lihat() As DataTable
        Dim dt As New DataTable
        Dim query As String = "SELECT * FROM layanan"


        Dim k As New KoneksiDB
        dt = k.GetResult(query)


        Return dt
    End Function


    'Public Sub SetIDLayanan()


    'End Sub


    'Public Sub SetLayanan()


    'End Sub


    'Public Sub SetFile()


    'End Sub

End Class
