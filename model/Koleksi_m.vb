Imports MySql.Data.MySqlClient

Public Class Koleksi_m
    Dim kdbuku As String
    Dim idkat As Integer
    Dim kategori As String
    Dim judul As String
    Dim tahun As Integer
    Dim penerbit As String
    Dim pengarang As String
    Dim cover As Byte()
    Dim stok As Integer
    Dim tersedia As Integer
    Dim harga As Integer

    Public Function GetAllKoleksi() As DataTable
        Dim query As String = "SELECT * FROM koleksi"
        Dim k As New KoneksiDB
        Return k.GetResult(query)
    End Function

    Public Function CreateKoleksi(kdbuku As String, idkat As Integer, judul As String, tahun As Integer, penerbit As String, cover As Byte(), stok As Integer, tersedia As Integer, harga As Integer) As Boolean
        Dim query As String = "INSERT INTO koleksi (kdbuku, idkat, judul, tahun, penerbit, cover, stok, tersedia, harga) VALUES (@kdbuku, @idkat, @judul, @tahun, @penerbit, @cover, @stok, @tersedia, @harga)"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@kdbuku", kdbuku))
        parameters.Add(New MySqlParameter("@idkat", idkat))
        parameters.Add(New MySqlParameter("@judul", judul))
        parameters.Add(New MySqlParameter("@tahun", tahun))
        parameters.Add(New MySqlParameter("@penerbit", penerbit))
        parameters.Add(New MySqlParameter("@cover", cover))
        parameters.Add(New MySqlParameter("@stok", stok))
        parameters.Add(New MySqlParameter("@tersedia", tersedia))
        parameters.Add(New MySqlParameter("@harga", harga))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function

    Public Function GetKoleksi(kdbuku As String) As DataTable
        Dim query As String = "SELECT * FROM koleksi WHERE kdbuku = " & kdbuku
        Dim k As New KoneksiDB
        Return k.GetResult(query)
    End Function

    Public Function UpdateKoleksi(kdbuku As String, idkat As Integer, kategori As String, judul As String, tahun As Integer, penerbit As String, pengarang As String, cover As Byte(), stok As Integer, tersedia As Integer, harga As Integer) As Boolean
        Dim query As String = "UPDATE koleksi SET idkat = @idkat, kategori = @kategori, judul = @judul, tahun = @tahun, penerbit = @penerbit, pengarang = @pengarang, cover = @cover, stok = @stok, tersedia = @tersedia, harga = @harga WHERE kdbuku = @kdbuku"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@idkat", idkat))
        parameters.Add(New MySqlParameter("@kategori", kategori))
        parameters.Add(New MySqlParameter("@judul", judul))
        parameters.Add(New MySqlParameter("@tahun", tahun))
        parameters.Add(New MySqlParameter("@penerbit", penerbit))
        parameters.Add(New MySqlParameter("@pengarang", pengarang))
        parameters.Add(New MySqlParameter("@cover", cover))
        parameters.Add(New MySqlParameter("@stok", stok))
        parameters.Add(New MySqlParameter("@tersedia", tersedia))
        parameters.Add(New MySqlParameter("@harga", harga))
        parameters.Add(New MySqlParameter("@kdbuku", kdbuku))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function

    Public Function DeleteKoleksi(kdbuku As String) As Boolean
        Dim query As String = "DELETE FROM koleksi WHERE kdbuku = @kdbuku"
        Dim parameters As New List(Of MySqlParameter)
        parameters.Add(New MySqlParameter("@kdbuku", kdbuku))
        Dim k As New KoneksiDB
        Return k.Execute(query, parameters.ToArray())
    End Function

End Class