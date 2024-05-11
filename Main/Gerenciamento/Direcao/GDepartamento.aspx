<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="GDepartamento.aspx.cs" Inherits="VesteBem.Gerenciamento.Direcao.GDepartamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Nome:</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnEnviar" runat="server" CssClass="button" OnClick="btnEnviar_Click" Text="Enviar" />
    </p>
    <p>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" CssClass="button" Text="Voltar" PostBackUrl="~/Gerenciamento/Direcao/Gerir.aspx" />
    </p>

</asp:Content>
