<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="GProduto.aspx.cs" Inherits="VesteBem.Gerenciamento.GTipo_Produto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 50%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Nome:</p>
    <p>
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    </p>
    <p>
        Sexo:</p>
    <p>
        <asp:DropDownList ID="ddlSexo" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nome" DataValueField="ID" AutoPostBack="True">
            <asp:ListItem Value="0">Selecionar</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" SelectCommand="SELECT * FROM [Tipo_Produto] ORDER BY [Nome]"></asp:SqlDataSource>
    </p>
    <p>
        Tipo:</p>
    <p>
        <asp:DropDownList ID="ddlTipo" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nome" DataValueField="ID" EnableViewState="False">
            <asp:ListItem Value="0">Selecionar</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" SelectCommand="SELECT [ID], [Nome] FROM [TipoRoupa] WHERE ([TipoID] = @TipoID) ORDER BY [Nome]">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlSexo" Name="TipoID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        Preco:</p>
    <p>
        <asp:TextBox ID="txtPreco" runat="server"></asp:TextBox>
    </p>
    <p>
        Imagem:</p>
    <p>
        <asp:DropDownList ID="ddlImg" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        Descricao:</p>
    <p>
        <asp:TextBox ID="txtDesc" runat="server" Height="111px" TextMode="MultiLine" Width="250px"></asp:TextBox>
    </p>
<table class="auto-style1">
    <tr>
        <td>
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" CssClass="button" />
        </td>
        <td>
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Atualizar" CssClass="button" />
        </td>
    </tr>
</table>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="~/Gerenciamento/Comr/Gerir.aspx" Text="Voltar" CssClass="button" />
    </p>
    <p>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </p>
</asp:Content>
