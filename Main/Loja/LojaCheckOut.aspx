<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="LojaCheckOut.aspx.cs" Inherits="VesteBem.Loja.LojaCheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnlCarrinho" runat="server"></asp:Panel>

    <table>
        <tr>
            <td><b>Total: </b></td>
            <td><asp:Literal ID="litTotal" runat="server" Text=""></asp:Literal></td>
        </tr>

        <tr>
<%--            <td><b>Vat: </b></td>--%>
<%--            <td><asp:Literal ID="litVat" runat="server" Text=""></asp:Literal></td>--%>
        </tr>

       <tr>
            <td><b>Envio: </b></td>
            <td>2€</td>
        </tr>

        <tr>
            <td><b>Quantidade Total: </b></td>
            <td><asp:Literal ID="litQuantTotal" runat="server" Text=""></asp:Literal></td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="linkContinuar" runat="server" PostBackUrl="~/Home.aspx" CssClass="button" Text="Continuar a Comprar"></asp:Button>
                ou
                <asp:Button ID="btnCheckOut" runat="server" PostBackUrl="~/Loja/Confirmacao.aspx" CssClass="button" Width="250px" Text="Confirmar a Comprar" />
            
                <br />
                            <asp:LinkButton ID="litPaypal" Text="" runat="server" />

            </td>
        </tr>
    </table>

</asp:Content>
