Imports MySql.Data.MySqlClient

Public Class DetailPengarang_m
    Dim id As String
    Dim idkoleksi As String
    Dim nama As String
    Dim no_urut As Integer



    Public Function Tambah() As Boolean
        Dim query As String = "INSERT INTO detail_pengarang VALUES(@id, @idkoleksi, @nama, @no_urut)"
        Dim params As MySqlParameter() = {
        New MySqlParameter("@id", id),
        New MySqlParameter("@idkoleksi", idkoleksi),
        New MySqlParameter("@nama", nama),
        New MySqlParameter("@no_urut", no_urut)
        }


        Dim k As New KoneksiDB()
        Dim status As Boolean = k.Execute(query, params)


        Return status
    End Function



    Public Sub SetID(id As String)
        Me.id = id
    End Sub



    Public Sub SetIDKoleksi(idkoleksi As String)
        Me.idkoleksi = idkoleksi
    End Sub



    Public Sub SetNama(nama As String)
        Me.nama = nama
    End Sub



    Public Sub SetNoUrut(no_urut As Integer)
        Me.no_urut = no_urut
    End Sub
End Class