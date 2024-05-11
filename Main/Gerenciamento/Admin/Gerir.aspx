<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="Gerir.aspx.cs" Inherits="VesteBem.Gerenciamento.Admin.Gerir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/Admin/GFornecedores.aspx">Novo Fornecedor</asp:LinkButton>
    <br />
    <asp:GridView ID="gdrFornecedor" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsFornecedor" ForeColor="Black" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TipoID" HeaderText="TipoID" SortExpression="TipoID" />
            <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Rua" HeaderText="Rua" SortExpression="Rua" />
            <asp:BoundField DataField="Numero" HeaderText="Numero" SortExpression="Numero" />
            <asp:BoundField DataField="Cidade" HeaderText="Cidade" SortExpression="Cidade" />
            <asp:BoundField DataField="Expr1" HeaderText="Pais" SortExpression="Expr1" />
            <asp:BoundField DataField="PaisID" HeaderText="PaisID" SortExpression="PaisID" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="sdsFornecedor" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="DELETE FROM [Fornecedores] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Fornecedores] ([Nome], [TipoID], [Tel], [Email], [PaisID], [MoradaID]) VALUES (@Nome, @TipoID, @Tel, @Email, @PaisID, @MoradaID)" SelectCommand="SELECT Fornecedores.Nome, Fornecedores.ID, Fornecedores.TipoID, Fornecedores.Tel, Fornecedores.Email, Morada.Rua, Morada.Numero, Morada.Cidade, Paises.Nome AS Expr1, Fornecedores.PaisID FROM Fornecedores INNER JOIN Morada ON Fornecedores.ID = Morada.ID INNER JOIN Paises ON Fornecedores.PaisID = Paises.ID AND Morada.PaisID = Paises.ID" UpdateCommand="UPDATE [Fornecedores] SET [Nome] = @Nome, [TipoID] = @TipoID, [Tel] = @Tel, [Email] = @Email, [PaisID] = @PaisID, [MoradaID] = @MoradaID WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="TipoID" Type="Int32" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PaisID" Type="Int32" />
            <asp:Parameter Name="MoradaID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="TipoID" Type="Int32" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PaisID" Type="Int32" />
            <asp:Parameter Name="MoradaID" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsPais" ForeColor="Black" GridLines="Vertical" Width="70%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Capital" HeaderText="Capital" SortExpression="Capital" />
            <asp:BoundField DataField="Nacionalidade" HeaderText="Nacionalidade" SortExpression="Nacionalidade" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="sdsPais" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="DELETE FROM [Paises] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Paises] ([Codigo], [Nome], [Capital], [Nacionalidade]) VALUES (@Codigo, @Nome, @Capital, @Nacionalidade)" SelectCommand="SELECT * FROM [Paises]" UpdateCommand="UPDATE [Paises] SET [Codigo] = @Codigo, [Nome] = @Nome, [Capital] = @Capital, [Nacionalidade] = @Nacionalidade WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Codigo" Type="String" />
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Capital" Type="String" />
            <asp:Parameter Name="Nacionalidade" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Codigo" Type="String" />
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Capital" Type="String" />
            <asp:Parameter Name="Nacionalidade" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/Admin/GFornProd.aspx">Novo Tipo de Fornecedor</asp:LinkButton>
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsProdForn" ForeColor="Black" GridLines="Vertical" Width="50%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="sdsProdForn" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="DELETE FROM [FornProduto] WHERE [ID] = @ID" InsertCommand="INSERT INTO [FornProduto] ([Nome]) VALUES (@Nome)" SelectCommand="SELECT * FROM [FornProduto]" UpdateCommand="UPDATE [FornProduto] SET [Nome] = @Nome WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nome" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="button" Text="Voltar" PostBackUrl="~/Gerenciamento/Menu.aspx" />

</asp:Content>
