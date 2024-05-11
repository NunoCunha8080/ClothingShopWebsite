<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="LojaProduto.aspx.cs" Inherits="VesteBem.Loja.LojaProduto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p />
    <p />
    <table>
        <tr>
            <td rowspan="4">
                <asp:Image ID="imgProduto" runat="server" CssClass="detailsImage" /></td>
            <td><h2>
                <asp:Label ID="lblTitulo" runat="server" Text="Label"></asp:Label>
                <hr />
                </h2></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDesc" runat="server" CssClass="detailsDescription" ></asp:Label></td>
            <td>
                <asp:Label ID="lblPreco" runat="server" CssClass="detailsPrice" ></asp:Label>
            </td><br />
            Quantidade : <asp:DropDownList ID="ddlQuantidade" runat="server"></asp:DropDownList><br />
            Tamanho : <asp:DropDownList ID="ddlTamanho" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>S</asp:ListItem>
                    <asp:ListItem>M</asp:ListItem>
                    <asp:ListItem>L</asp:ListItem>
                    <asp:ListItem>XL</asp:ListItem>
                    <asp:ListItem>XXL</asp:ListItem>
                </asp:DropDownList>
            <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
        </tr>
        <tr>
            <td>Numero de Produto : <asp:Label ID="lblNumItem" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Addicionar ao Carrinho" CssClass="button" OnClick="btnAdd_Click" />
                <asp:Button id="btnVoltar" runat="server" Text="Voltar" CssClass="button" PostBackUrl="~/LojaHome.aspx" />
                <asp:Label ID="Label1" runat="server" Text="Disponivel" CssClass="productPrice"></asp:Label></td>
        </tr>

    </table>
</asp:Content>
