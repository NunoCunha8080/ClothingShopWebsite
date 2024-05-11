<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="VesteBem.Gerenciamento.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
 <%--   <script src="jquery-1.9.1.js"></script>
    <SCRIPT type="text/javascript">
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
    </SCRIPT>--%>
    
    <style type="text/css">
        .auto-style2 {
            width: 40%;
        }
        .auto-style3 {
            width: 20%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <table align="center" class="auto-style2">
<%--        <tr>
            <td>
            </td>
        </tr>--%>
        <tr>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Direção" Width="433px" PostBackUrl="~/Gerenciamento/Direcao/Gerir.aspx" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Informatica" Width="433px" PostBackUrl="~/Gerenciamento/Info/Gerir.aspx" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Servicos Administrativos" Width="433px" PostBackUrl="~/Gerenciamento/Admin/Gerir.aspx" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button6" runat="server" PostBackUrl="~/Gerenciamento/Comr/Gerir.aspx" Text="Servicos Comerciais" Width="433px" OnClick="Button6_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click"  Text="Recursos Humanos" Width="433px" PostBackUrl="~/Gerenciamento/RH/Gerir.aspx" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <table align="center" class="auto-style3">
        <tr>
            <td>
                <asp:Button ID="Button8" runat="server" Text="Sair" Width="214px" PostBackUrl="~/Home.aspx" />
            </td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>
