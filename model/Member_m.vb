Imports MySql.Data.MySqlClient

Public Class Member_m
    Dim idmember As String
    Dim idprodi As String
    Dim idakun As Integer
    Dim nama As String
    Dim nohp As String
    Dim tempatlahir As String
    Dim tgllahir As Date
    Dim jabatan As String


    Public Function LihatLogin(idakun As Integer) As DataTable
        Dim dt As New DataTable
        Dim query As String = "SELECT idmember, nama FROM member WHERE idakun = " & idakun
        Dim k As New KoneksiDB
        dt = k.GetResult(query)
        Return dt
    End Function
    Public Function GetAllMembers() As DataTable
        Dim query As String = "SELECT * FROM member"
        Dim k As New KoneksiDB
        Return k.GetResult(query)
    End Function

    Public Function CreateMember(idmember As String, idprodi As String, idakun As String, nama As String, nohp As String, tempatlahir As String, tgllahir As Date, jabatan As String) As Boolean
        Dim query As String = "INSERT INTO member (idmember, idprodi, idakun, nama, nohp, tempatlahir, tgllahir, jabatan) VALUES (@idmember, @idprodi, @idakun, @nama, @nohp, @tempatlahir, @tgllahir, @jabatan)"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@idmember", idmember))
        parameters.Add(New MySqlParameter("@idprodi", idprodi))
        parameters.Add(New MySqlParameter("@idakun", idakun))
        parameters.Add(New MySqlParameter("@nama", nama))
        parameters.Add(New MySqlParameter("@nohp", nohp))
        parameters.Add(New MySqlParameter("@tempatlahir", tempatlahir))
        parameters.Add(New MySqlParameter("@tgllahir", tgllahir))
        parameters.Add(New MySqlParameter("@jabatan", jabatan))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function

    'ead
    Public Function GetMember(idmember As String) As DataTable
        Dim query As String = "SELECT * FROM member WHERE idmember = " & idmember
        Dim k As New KoneksiDB
        Return k.GetResult(query)
    End Function

    'pdate
    Public Function UpdateMember(idmember As String, idprodi As String, nama As String, nohp As String, tempatlahir As String, tgllahir As Date, jabatan As String) As Boolean
        Dim query As String = "UPDATE member SET idprodi = @idprodi, nama = @nama, nohp = @nohp, tempatlahir = @tempatlahir, tgllahir = @tgllahir, jabatan = @jabatan WHERE idmember = @idmember"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@idprodi", idprodi))
        parameters.Add(New MySqlParameter("@nama", nama))
        parameters.Add(New MySqlParameter("@nohp", nohp))
        parameters.Add(New MySqlParameter("@tempatlahir", tempatlahir))
        parameters.Add(New MySqlParameter("@tgllahir", tgllahir))
        parameters.Add(New MySqlParameter("@jabatan", jabatan))
        parameters.Add(New MySqlParameter("@idmember", idmember))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function

    'elete
    Public Function DeleteMember(idmember As String) As Boolean
        Dim query As String = "DELETE FROM member WHERE idmember = @idmember"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@idmember", idmember))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function

End Class
