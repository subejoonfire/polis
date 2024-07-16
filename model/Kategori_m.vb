Imports MySql.Data.MySqlClient

Public Class Kategori_m
    Dim idkat As Integer
    Dim kategori As String

    Public Function Lihat() As DataTable
        Dim dt As New DataTable
        Dim query As String = "SELECT idkat AS ID, KATEGORI FROM kategori"
        'create object k
        Dim k As New KoneksiDB
        dt = k.GetResult(query)
        Return dt
    End Function

    Public Function Tambah() As Boolean
        Dim query As String = "INSERT INTO kategori VALUES (NULL, @kategori)"
        Dim parameters As MySqlParameter() = {
            New MySqlParameter("@kategori", kategori)
        }

        Dim k As New KoneksiDB
        Dim status As Boolean = k.Execute(query, parameters)
        Return status
    End Function

    Public Sub SetKategori(kategori As String)
        Me.kategori = kategori
    End Sub
End Class
