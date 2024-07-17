Public Class Peminjaman
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindGridView()
        End If
    End Sub

    Private Sub BindGridView()
        Dim peminjaman_m As New Peminjaman_m
        Dim dt As DataTable = peminjaman_m.GetAllPeminjaman()
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim peminjaman_m As New Peminjaman_m
        Dim kdpeminjaman As String = txtKdPeminjaman.Text
        Dim idmember As String = ddlIdMember.SelectedValue
        Dim kdbuku As String = ddlKdBuku.SelectedValue
        Dim tgl_pinjam As Date = Convert.ToDateTime(txtTglPinjam.Text)
        Dim tgl_kembali As Date = Convert.ToDateTime(txtTglKembali.Text)
        Dim jumlah As Integer = Convert.ToInt32(txtJumlah.Text)
        Dim status As String = txtStatus.Text
        If peminjaman_m.AddPeminjaman(idmember, kdbuku, tgl_pinjam, tgl_kembali, jumlah, status) Then
            Response.Redirect("Peminjaman.aspx")
        End If
    End Sub

End Class