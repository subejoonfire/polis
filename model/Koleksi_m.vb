Public Class Koleksi_m
    Dim kdbuku As String
    Dim idkat As Integer
    Dim kategori As String
    Dim judul As String
    Dim tahun As Integer
    Dim penerbit As String
    Dim pengarang As String
    Dim cover As Image
    Dim stok As Integer
    Dim tersedia As Integer
    Dim harga As Integer


    'Public Sub Tambah()


    'End Sub


    'Public Sub Ubah()


    'End Sub


    'Public Sub Hapus()


    'End Sub


    Public Function Lihat() As DataTable
        'siapkan variabel dt (datatable) untuk menampung semua data
        'kemudian siapkan kolom-kolom dt
        Dim dt As New DataTable
        dt.Columns.Add("ID")
        dt.Columns.Add("JUDUL")
        dt.Columns.Add("KATEGORI")
        dt.Columns.Add("TAHUN")
        dt.Columns.Add("PENERBIT")
        dt.Columns.Add("PENGARANG")
        dt.Columns.Add("STOK")


        'siapkan variabel dt_buku (datatable) untuk menampung hanya data buku
        Dim dt_buku As New DataTable


        Dim query As String = "SELECT * FROM koleksi JOIN kategori ON koleksi.idkat = kategori.idkat"


        'create object k_buku
        Dim k_buku As New KoneksiDB
        dt_buku = k_buku.GetResult(query)


        'mengambil data pengarang
        'sekaligus menyimpan semuanya ke dt
        For Each row As DataRow In dt_buku.Rows
            kdbuku = row.Item("kdbuku")
            judul = row.Item("judul")
            kategori = row.Item("kategori")
            tahun = row.Item("tahun")
            penerbit = row.Item("penerbit")
            stok = row.Item("stok")
            pengarang = ""  'sengaja dikosongkan untuk nanti ditambahkan pengarang


            'tulis query mendapatkan data pengarang berdasarkan kdbuku
            query = "SELECT * FROM detail_pengarang WHERE idkoleksi = '" & kdbuku & "'"
            Dim k_pengarang As New KoneksiDB
            Dim dt_pengarang As New DataTable
            dt_pengarang = k_pengarang.GetResult(query)
            Dim indx As Integer = 0     'cuma penanda saja
            For Each row2 As DataRow In dt_pengarang.Rows
                If indx = 0 Then
                    pengarang = row2.Item("nama")
                Else
                    pengarang &= ", " & row2.Item("nama")
                End If
                indx += 1
            Next


            dt.Rows.Add(kdbuku, judul, kategori, tahun, penerbit, pengarang, stok)
        Next


        Return dt
    End Function


    'Public Sub LihatByKategori()


    'End Sub


    'Public Sub SetKDBuku()


    'End Sub


    'Public Sub SetIDKat()


    'End Sub


    'Public Sub SetJudul()


    'End Sub


    'Public Sub SetTahun()


    'End Sub


    'Public Sub SetPenerbit()


    'End Sub


    'Public Sub SetCover()


    'End Sub


    'Public Sub SetStok()


    'End Sub


    'Public Sub SetTersedia()


    'End Sub


    'Public Sub SetHarga()


    'End Sub

End Class
