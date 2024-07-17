Imports MySql.Data.MySqlClient

Public Class Kategori_m
    Public Function CreateKategori(kategori As String) As Boolean
        Dim query As String = "INSERT INTO kategori (kategori) VALUES (@kategori)"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@kategori", kategori))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function

    Public Function GetAllKategori() As DataTable
        Dim query As String = "SELECT * FROM kategori"
        Dim k As New KoneksiDB
        Return k.GetResult(query)
    End Function
End Class