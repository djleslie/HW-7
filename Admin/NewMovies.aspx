<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewMovies.aspx.vb" Inherits="NewMovies" %>

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
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="Rating" Type="Int32" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="MovieID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" />
                <asp:BoundField DataField="MovieTitle" HeaderText="MovieTitle" SortExpression="MovieTitle" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
