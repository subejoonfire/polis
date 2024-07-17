Imports System.Data.SqlClient

Public Class Member
    Inherits System.Web.UI.Page
    Dim Member_M As New Member_m
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindGridView()
        End If
    End Sub
    Private Sub BindGridView()
        Dim member_m As New Member_m
        Dim dt As DataTable = member_m.GetAllMembers()
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        Dim idmember As String = txtIdMember.Text
        Dim idprodi As String = ddlIdProdi.SelectedValue
        Dim idakun As String = ddlIdAkun.SelectedValue
        Dim nama As String = txtNama.Text
        Dim nohp As String = txtNoHp.Text
        Dim tempatlahir As String = txtTempatLahir.Text
        Dim tgllahir As Date = txtTglLahir.Text
        Dim jabatan As String = txtJabatan.Text

        If Member_M.CreateMember(idmember, idprodi, idakun, nama, nohp, tempatlahir, tgllahir, jabatan) Then
            Response.Redirect("/view user/Member.aspx")
        Else
            Response.Redirect("/view user/Member.aspx")
        End If
    End Sub

End Class