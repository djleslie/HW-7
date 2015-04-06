<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="xxNewMovies.aspx.vb" Inherits="xxNewMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />




    <h5> Movie Title and Description Required**</h5>
   



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
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource1" DefaultMode="Insert"
    width="500px">
    <Fields>
        <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" />
        <asp:TemplateField HeaderText="MovieTitle" SortExpression="MovieTitle">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MovieTitle") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="MovieTitle" runat="server" Text='<%# Bind("MovieTitle") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**Movie Title Required" Font-Bold="True" ControlToValidate="MovieTitle"></asp:RequiredFieldValidator>

            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("MovieTitle") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
        <asp:TemplateField HeaderText="description" SortExpression="description">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="description" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**Description Required" ControlToValidate="description" Font-Bold="True"></asp:RequiredFieldValidator>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                 
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
</asp:Content>

