Imports MySql.Data.MySqlClient

Public Class AkunPengguna_m
    Dim idakun As Integer
    Dim username As String
    Dim password As String
    Dim level As String

    Public Function CekLogin(username As String, password As String) As DataTable
        Dim dt As New DataTable


        'mengambil data akun_pengguna berdasarkan nilai username
        Dim query As String = "SELECT * FROM akun_pengguna WHERE username = '" & username & "'"
        Dim k As New KoneksiDB
        dt = k.GetResult(query)


        'menguji apakah dt ada isinya?
        Dim jumbar As Integer = dt.Rows.Count
        If jumbar > 0 Then

            'memverifikasi password
            Dim hashed_pass As String = dt.Rows(0).Item("password")
            Dim valid As Boolean = BCrypt.Net.BCrypt.Verify(password, hashed_pass)
            If valid = False Then
                dt = New DataTable  'mengosongkan dt jika tidak valid
            End If
        End If
        Return dt
    End Function
    Public Function GetAllAkunPengguna() As DataTable
        Dim query As String = "SELECT * FROM akun_pengguna"
        Dim k As New KoneksiDB
        Return k.GetResult(query)
    End Function

    Public Function AddAkunPengguna(username As String, password As String, level As String) As Boolean
        Dim query As String = "INSERT INTO akun_pengguna (username, password, level) VALUES (@username, @password, @level)"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@username", username))
        parameters.Add(New MySqlParameter("@password", BCrypt.Net.BCrypt.HashPassword(password)))
        parameters.Add(New MySqlParameter("@level", level))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function

    Public Function UpdateAkunPengguna(idakun As Integer, username As String, password As String, level As String) As Boolean
        Dim query As String = "UPDATE akun_pengguna SET username = @username, password = @password, level = @level WHERE idakun = @idakun"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@username", username))
        parameters.Add(New MySqlParameter("@password", BCrypt.Net.BCrypt.HashPassword(password)))
        parameters.Add(New MySqlParameter("@level", level))
        parameters.Add(New MySqlParameter("@idakun", idakun))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function

    Public Function DeleteAkunPengguna(idakun As Integer) As Boolean
        Dim query As String = "DELETE FROM akun_pengguna WHERE idakun = @idakun"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@idakun", idakun))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function
End Class
