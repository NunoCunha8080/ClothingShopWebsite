<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Registar.aspx.cs" Inherits="VesteBem.Conta.Registar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 211px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Literal ID="litStatus" runat="server"></asp:Literal>
</p>
<table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">Username:</td>
        <td>
    <asp:TextBox ID="txtUserName" runat="server" CssClass="inputs"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">Password:</td>
        <td>
    <asp:TextBox ID="txtPassword" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">Confirmar Password:</td>
        <td>
    <asp:TextBox ID="txtConfirPassword" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">Primeiro Nome:</td>
        <td id="txtPrimNome">
    <asp:TextBox ID="txtPrimNome" runat="server" CssClass="inputs" Width="195px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">Segundo Nome:</td>
        <td id="txtSegNome">
    <asp:TextBox ID="txtSegNome" runat="server" CssClass="inputs" Width="198px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">Morada:</td>
        <td id="txtMorada">
    <asp:TextBox ID="txtMorada" runat="server" CssClass="inputs" Width="254px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">Cod. Postal:</td>
        <td>
    <asp:TextBox ID="txtCodPostal" runat="server" CssClass="inputs"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">
    <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Registar" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
