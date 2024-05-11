<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="Gerir.aspx.cs" Inherits="VesteBem.Gerenciamento.Gerir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 602px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/Comr/GProduto.aspx">Adicionar novo produto</asp:LinkButton>
<br />
<asp:GridView ID="grdProdutos" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsProdutos" ForeColor="Black" GridLines="Vertical" OnRowEditing="grdProdutos_RowEditing" Width="100%">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="TipoID" HeaderText="TipoID" SortExpression="TipoID" />
        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
        <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
        <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
        <asp:BoundField DataField="TipoRID" HeaderText="TipoRID" SortExpression="TipoRID" />
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
<asp:SqlDataSource ID="sdsProdutos" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="DELETE FROM [Produto] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Produto] ([TipoID], [Nome], [Preco], [Descricao], [Image]) VALUES (@TipoID, @Nome, @Preco, @Descricao, @Image)" SelectCommand="SELECT * FROM [Produto]" UpdateCommand="UPDATE [Produto] SET [TipoID] = @TipoID, [Nome] = @Nome, [Preco] = @Preco, [Descricao] = @Descricao, [Image] = @Image WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TipoID" Type="Int32" />
        <asp:Parameter Name="Nome" Type="String" />
        <asp:Parameter Name="Preco" Type="Double" />
        <asp:Parameter Name="Descricao" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TipoID" Type="Int32" />
        <asp:Parameter Name="Nome" Type="String" />
        <asp:Parameter Name="Preco" Type="Double" />
        <asp:Parameter Name="Descricao" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
<asp:LinkButton ID="LinkButton2" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/Comr/GTipoProduto.aspx">Adicionar novo tipo de produto</asp:LinkButton>
<asp:GridView ID="grdTipoProduto" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsTipoProduto" ForeColor="Black" GridLines="Vertical" Width="86%">
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
<asp:SqlDataSource ID="sdsTipoProduto" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="DELETE FROM [Tipo_Produto] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Tipo_Produto] ([Nome]) VALUES (@Nome)" SelectCommand="SELECT * FROM [Tipo_Produto]" UpdateCommand="UPDATE [Tipo_Produto] SET [Nome] = @Nome WHERE [ID] = @ID">
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
            </td>
            <td>
<asp:LinkButton ID="LinkButton3" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/Comr/GTipoRoupa.aspx">Adicionar novo tipo de Roupa</asp:LinkButton>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsTipoRoupa" ForeColor="Black" GridLines="Vertical" Width="91%">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="TipoID" HeaderText="TipoID" SortExpression="TipoID" />
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
                <asp:SqlDataSource ID="sdsTipoRoupa" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="DELETE FROM [TipoRoupa] WHERE [ID] = @ID" InsertCommand="INSERT INTO [TipoRoupa] ([Nome], [TipoID]) VALUES (@Nome, @TipoID)" SelectCommand="SELECT * FROM [TipoRoupa]" UpdateCommand="UPDATE [TipoRoupa] SET [Nome] = @Nome, [TipoID] = @TipoID WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nome" Type="String" />
                        <asp:Parameter Name="TipoID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nome" Type="String" />
                        <asp:Parameter Name="TipoID" Type="Int32" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Gerenciamento/Menu.aspx" Text="Voltar" CssClass="button" />
</asp:Content>
