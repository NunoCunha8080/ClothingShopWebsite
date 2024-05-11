<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="GTipoRoupa.aspx.cs" Inherits="VesteBem.Gerenciamento.Comr.GTipoRoupa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Sexo:</p>
    <p>
        <asp:DropDownList ID="ddlSexo" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nome" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" SelectCommand="SELECT * FROM [Tipo_Produto] ORDER BY [Nome]"></asp:SqlDataSource>
    </p>
    <p>
        Tipo de Roupa:</p>
    <p>
        <asp:TextBox ID="txtRoupa" runat="server"></asp:TextBox>
    </p>

        <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar" CssClass="button" />
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="~/Gerenciamento/Comr/Gerir.aspx" Text="Voltar" CssClass="button" />
    </p>
    <p>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </p>
</asp:Content>
