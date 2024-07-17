Imports MySql.Data.MySqlClient

Public Class Peminjaman_m
    Dim kdpeminjaman As String
    Dim idmember As String
    Dim kdbuku As String
    Dim tgl_pinjam As Date
    Dim tgl_kembali As Date
    Dim jumlah As Integer
    Dim status As String

    Public Function GetAllPeminjaman() As DataTable
        Dim query As String = "SELECT * FROM peminjaman"
        Dim k As New KoneksiDB
        Return k.GetResult(query)
    End Function

    Public Function AddPeminjaman(idmember As String, kdbuku As String, tgl_pinjam As Date, tgl_kembali As Date, jumlah As Integer, status As String) As Boolean
        Dim query As String = "INSERT INTO peminjaman (idmember, kdbuku, tgl_pinjam, tgl_kembali, jumlah, status) VALUES (@idmember, @kdbuku, @tgl_pinjam, @tgl_kembali, @jumlah, @status)"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@idmember", idmember))
        parameters.Add(New MySqlParameter("@kdbuku", kdbuku))
        parameters.Add(New MySqlParameter("@tgl_pinjam", tgl_pinjam))
        parameters.Add(New MySqlParameter("@tgl_kembali", tgl_kembali))
        parameters.Add(New MySqlParameter("@jumlah", jumlah))
        parameters.Add(New MySqlParameter("@status", status))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function

    Public Function UpdatePeminjaman(kdpeminjaman As String, idmember As String, kdbuku As String, tgl_pinjam As Date, tgl_kembali As Date, jumlah As Integer, status As String) As Boolean
        Dim query As String = "UPDATE peminjaman SET idmember = @idmember, kdbuku = @kdbuku, tgl_pinjam = @tgl_pinjam, tgl_kembali = @tgl_kembali, jumlah = @jumlah, status = @status WHERE kdpeminjaman = @kdpeminjaman"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@idmember", idmember))
        parameters.Add(New MySqlParameter("@kdbuku", kdbuku))
        parameters.Add(New MySqlParameter("@tgl_pinjam", tgl_pinjam))
        parameters.Add(New MySqlParameter("@tgl_kembali", tgl_kembali))
        parameters.Add(New MySqlParameter("@jumlah", jumlah))
        parameters.Add(New MySqlParameter("@status", status))
        parameters.Add(New MySqlParameter("@kdpeminjaman", kdpeminjaman))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function

    Public Function DeletePeminjaman(kdpeminjaman As String) As Boolean
        Dim query As String = "DELETE FROM peminjaman WHERE kdpeminjaman = @kdpeminjaman"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@kdpeminjaman", kdpeminjaman))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function
End Class