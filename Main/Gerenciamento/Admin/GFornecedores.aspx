<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="GFornecedores.aspx.cs" Inherits="VesteBem.Gerenciamento.Admin.GFornecedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 103px;
        }
        .auto-style3 {
            width: 221px;
        }
        .auto-style4 {
            width: 245px;
        }
        .auto-style5 {
            width: 98px;
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
        Tipo:</p>
    <p>
        <asp:DropDownList ID="ddlTipo" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nome" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" SelectCommand="SELECT * FROM [FornProduto] ORDER BY [Nome]"></asp:SqlDataSource>
    </p>
    <p>
        Email:</p>
    <p>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    </p>
    <p>
        Tel:</p>
    <p>
        <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
    </p>
    <p>
        Pais:</p>
    <p>
        <asp:DropDownList ID="ddlPais" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nome" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" SelectCommand="SELECT * FROM [Paises] ORDER BY [Nome]"></asp:SqlDataSource>
    </p>
    <p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Morada:</td>
                <td class="auto-style3">
        <asp:TextBox ID="txtCidade" PlaceHolder="Cidade" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style4">
        <asp:TextBox ID="txtRua" PlaceHolder="Rua" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style5">
        <asp:TextBox ID="txtNr" PlaceHolder="Nr" runat="server" Width="57px"></asp:TextBox>
                </td>
                <td>
        <asp:TextBox ID="txtId" PlaceHolder="ID" runat="server" Width="57px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnEnviar" runat="server" CssClass="button" OnClick="btnEnviar_Click" Text="Enviar" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
        <asp:Button ID="btnVoltar" runat="server" CssClass="button" Text="Voltar" PostBackUrl="~/Gerenciamento/Admin/Gerir.aspx" />
    </p>
    <p>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </p>
</asp:Content>
