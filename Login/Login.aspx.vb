
Partial Class Login_Login
    Inherits System.Web.UI.Page

    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn
        If Roles.IsUserInRole(Login1.UserName, "r_administrator") = True Then
            Response.Redirect("~/Admin/xViewMovies.aspx")
        Else : Response.Redirect("~/xViewMovies.aspx")
        End If
    End Sub
End Class
