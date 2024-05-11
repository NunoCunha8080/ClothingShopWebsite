<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="LojaHome.aspx.cs" Inherits="VesteBem.Loja.LojaHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 338px;
        }
        .auto-style5 {
            width: 193px;
            height: 26px;
        }
        .auto-style6 {
            width: 150px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table class="auto-style1">
        <tr>
            <td class="auto-style5">Filtros</td>
            <td class="auto-style6">Sexo:
                <asp:DropDownList AppendDataBoundItems="false" ID="ddlSexo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nome" DataValueField="ID" OnSelectedIndexChanged="ddlSexo_SelectedIndexChanged" Width="118px">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" SelectCommand="SELECT * FROM [Tipo_Produto] ORDER BY [Nome]"></asp:SqlDataSource>
                </td>
            <td>Tipo:
                <asp:DropDownList AppendDataBoundItems="false" ID="ddlTipo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Nome" DataValueField="ID" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged" Width="113px">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" SelectCommand="SELECT [ID], [Nome] FROM [TipoRoupa] WHERE ([TipoID] = @TipoID) ORDER BY [Nome]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlSexo" Name="TipoID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
        </tr>
    </table>
                        <asp:Panel ID="pnlProdutos" runat="server" Width="100%">
        
                    </asp:Panel>
                <div style="clear:both">                </div>





    
    

</asp:Content>
