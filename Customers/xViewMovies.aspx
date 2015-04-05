<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xViewMovies.aspx.vb" Inherits="xViewMovies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:djleslie-Movies %>" DeleteCommand="DELETE FROM [djleslie-Movies] WHERE [MovieID] = @MovieID" InsertCommand="INSERT INTO [djleslie-Movies] ([MovieTitle], [Genre], [Year], [Rating], [description]) VALUES (@MovieTitle, @Genre, @Year, @Rating, @description)" SelectCommand="SELECT * FROM [djleslie-Movies]" UpdateCommand="UPDATE [djleslie-Movies] SET [MovieTitle] = @MovieTitle, [Genre] = @Genre, [Year] = @Year, [Rating] = @Rating, [description] = @description WHERE [MovieID] = @MovieID">
            <DeleteParameters>
                <asp:Parameter Name="MovieID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MovieTitle" Type="String" />
                <asp:Parameter Name="Genre" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Rating" Type="Int32" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MovieTitle" Type="String" />
                <asp:Parameter Name="Genre" Type="String" />
                <asp:Parameter Name="Rating" Type="Int32" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="MovieID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MovieTitle" HeaderText="MovieTitle" SortExpression="MovieTitle" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                <asp:HyperLinkField DataNavigateUrlFields="MovieID" DataNavigateUrlFormatString="xMovieDetails.aspx?MovieID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
