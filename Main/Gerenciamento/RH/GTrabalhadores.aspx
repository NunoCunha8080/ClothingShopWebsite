<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="GTrabalhadores.aspx.cs" Inherits="VesteBem.Gerenciamento.RH.GTrabalhadores1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <p>
            Primeiro
        Nome:</p>
    <p>
        <asp:TextBox ID="txtPrimNome" runat="server"></asp:TextBox>
    </p>
        <p>
            Segundo Nome:</p>
        <p>
        <asp:TextBox ID="txtSegNome" runat="server"></asp:TextBox>
    </p>
        <p>
            Data de Nascimento:</p>
        <p>
            <asp:Calendar ID="Calendar1" ShowYearSelector="true" YearSelectorType="DropDownList" DateMin="1/1/1980" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
    </p>
    <p>
        Departamento:</p>
    <p>
        <asp:DropDownList ID="ddlDep" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nome" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" SelectCommand="SELECT * FROM [Departamentos] ORDER BY [Nome]"></asp:SqlDataSource>
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
        <asp:Button ID="btnVoltar" PostBackUrl="~/Gerenciamento/RH/Gerir.aspx" runat="server" CssClass="button" Text="Voltar" />
    </p>
    <p>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </p>
</asp:Content>
