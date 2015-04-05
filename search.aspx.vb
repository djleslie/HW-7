
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub tb_search_TextChanged(sender As Object, e As EventArgs) Handles tb_search.TextChanged
        Dim searchWord As String
        searchWord = "Select * From djleslie-Movies where (MovieTitle Like '%" + tb_search.Text.ToString() + "%')"
        SearchDataSource.SelectCommand = searchWord
    End Sub

    Protected Sub tb_search2_TextChanged(sender As Object, e As EventArgs) Handles tb_search2.TextChanged
        Dim searchWord As String
        searchWord = "Select * From djleslie-Movies where (MovieTitle Like '%" + tb_search2.Text.ToString() + "%')"
        SearchDataSource.SelectCommand = searchWord
    End Sub

End Class


