Public Class Pengguna
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindGridView()
        End If
    End Sub

    Private Sub BindGridView()
        Dim akunPengguna_m As New AkunPengguna_m
        Dim dt As DataTable = akunPengguna_m.GetAllAkunPengguna()
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim akunPengguna_m As New AkunPengguna_m
        Dim username As String = txtUsername.Text
        Dim password As String = txtPassword.Text
        Dim level As String = txtLevel.Text
        If akunPengguna_m.AddAkunPengguna(username, password, level) Then
            BindGridView()
        End If
    End Sub

End Class