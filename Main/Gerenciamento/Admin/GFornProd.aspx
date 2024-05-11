<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="GFornProd.aspx.cs" Inherits="VesteBem.Gerenciamento.Admin.GFornProd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Nome:</p>
    <p>
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnEnviar" runat="server" CssClass="button" OnClick="btnEnviar_Click" Text="Enviar" />
    </p>
    <p>
        <asp:Button ID="btnVoltar" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/Admin/Gerir.aspx" Text="Voltar" />
    </p>
    <p>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </p>
</asp:Content>
