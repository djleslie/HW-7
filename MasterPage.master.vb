
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Protected Sub lblDate_Load(sender As Object, e As EventArgs) Handles lblDate.Load
        lblDate.Text = Date.Today
    End Sub
End Class

