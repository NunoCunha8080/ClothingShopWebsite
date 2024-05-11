<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="GPaises.aspx.cs" Inherits="VesteBem.Gerenciamento.Direcao.GNacionalidade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Pais:
    </p>
    <p>
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    </p>
    <p>
        Capital:</p>
    <p>
        <asp:TextBox ID="txtCapital" runat="server"></asp:TextBox>
    </p>
    <p>
        Nacionalidade:</p>
    <p>
        <asp:TextBox ID="txtNacionalidade" runat="server"></asp:TextBox>
    </p>
    <p>
        Codigo:</p>
    <p>
        <asp:TextBox ID="txtCod" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnEnviar" runat="server" CssClass="button" OnClick="btnEnviar_Click" Text="Enviar" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/Direcao/Gerir.aspx" Text="Voltar" />
    </p>
</asp:Content>
