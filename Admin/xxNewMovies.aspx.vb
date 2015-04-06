
Partial Class xxNewMovies
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("~/Admin/ViewMovies.aspx")
    End Sub
End Class
