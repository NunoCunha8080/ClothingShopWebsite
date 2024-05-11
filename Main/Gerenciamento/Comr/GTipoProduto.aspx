<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="GTipoProduto.aspx.cs" Inherits="VesteBem.Gerenciamento.GTipoProduto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 246px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Sexo:</p>
    <p>
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar Sexo" CssClass="button" />

        &nbsp;</p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="~/Gerenciamento/Comr/Gerir.aspx" Text="Voltar" CssClass="button" />
    </p>
    <p>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </p>
</asp:Content>
