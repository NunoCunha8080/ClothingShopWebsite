<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="Gerir.aspx.cs" Inherits="VesteBem.Gerenciamento.RH.Gerir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/RH/GTrabalhadores.aspx">Novo Trabalhador</asp:LinkButton>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsTrabalhadores" ForeColor="Black" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="PrimeiroNome" HeaderText="PrimeiroNome" SortExpression="PrimeiroNome" />
            <asp:BoundField DataField="SegundoNome" HeaderText="SegundoNome" SortExpression="SegundoNome" />
            <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PaisID" HeaderText="PaisID" SortExpression="PaisID" />
            <asp:BoundField DataField="DataNascimento" HeaderText="DataNascimento" SortExpression="DataNascimento" />
            <asp:BoundField DataField="MoradaID" HeaderText="MoradaID" SortExpression="MoradaID" />
            <asp:BoundField DataField="DepartamentoID" HeaderText="DepartamentoID" SortExpression="DepartamentoID" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="sdsTrabalhadores" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="DELETE FROM [Trabalhadores] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Trabalhadores] ([PrimeiroNome], [SegundoNome], [Tel], [Email], [PaisID], [DataNascimento], [MoradaID], [DepartamentoID]) VALUES (@PrimeiroNome, @SegundoNome, @Tel, @Email, @PaisID, @DataNascimento, @MoradaID, @DepartamentoID)" SelectCommand="SELECT * FROM [Trabalhadores]" UpdateCommand="UPDATE [Trabalhadores] SET [PrimeiroNome] = @PrimeiroNome, [SegundoNome] = @SegundoNome, [Tel] = @Tel, [Email] = @Email, [PaisID] = @PaisID, [DataNascimento] = @DataNascimento, [MoradaID] = @MoradaID, [DepartamentoID] = @DepartamentoID WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PrimeiroNome" Type="String" />
            <asp:Parameter Name="SegundoNome" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PaisID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="DataNascimento" />
            <asp:Parameter Name="MoradaID" Type="Int32" />
            <asp:Parameter Name="DepartamentoID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PrimeiroNome" Type="String" />
            <asp:Parameter Name="SegundoNome" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PaisID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="DataNascimento" />
            <asp:Parameter Name="MoradaID" Type="Int32" />
            <asp:Parameter Name="DepartamentoID" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsDep" ForeColor="Black" GridLines="Vertical" Width="50%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="sdsDep" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" SelectCommand="SELECT * FROM [Departamentos] ORDER BY [Nome]"></asp:SqlDataSource>
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/RH/GPaises.aspx">Novo Pais</asp:LinkButton>
    <br />
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsPaises" ForeColor="Black" GridLines="Vertical" Width="70%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Capital" HeaderText="Capital" SortExpression="Capital" />
            <asp:BoundField DataField="Nacionalidade" HeaderText="Nacionalidade" SortExpression="Nacionalidade" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="sdsPaises" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="DELETE FROM [Paises] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Paises] ([Codigo], [Nome], [Capital], [Nacionalidade]) VALUES (@Codigo, @Nome, @Capital, @Nacionalidade)" SelectCommand="SELECT * FROM [Paises]" UpdateCommand="UPDATE [Paises] SET [Codigo] = @Codigo, [Nome] = @Nome, [Capital] = @Capital, [Nacionalidade] = @Nacionalidade WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Codigo" Type="String" />
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Capital" Type="String" />
            <asp:Parameter Name="Nacionalidade" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Codigo" Type="String" />
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Capital" Type="String" />
            <asp:Parameter Name="Nacionalidade" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="70%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Rua" HeaderText="Rua" SortExpression="Rua" />
            <asp:BoundField DataField="Numero" HeaderText="Numero" SortExpression="Numero" />
            <asp:BoundField DataField="Cidade" HeaderText="Cidade" SortExpression="Cidade" />
            <asp:BoundField DataField="PaisID" HeaderText="PaisID" SortExpression="PaisID" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="DELETE FROM [Morada] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Morada] ([ID], [Rua], [Numero], [Cidade], [PaisID]) VALUES (@ID, @Rua, @Numero, @Cidade, @PaisID)" SelectCommand="SELECT * FROM [Morada]" UpdateCommand="UPDATE [Morada] SET [Rua] = @Rua, [Numero] = @Numero, [Cidade] = @Cidade, [PaisID] = @PaisID WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Rua" Type="String" />
            <asp:Parameter Name="Numero" Type="String" />
            <asp:Parameter Name="Cidade" Type="String" />
            <asp:Parameter Name="PaisID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Rua" Type="String" />
            <asp:Parameter Name="Numero" Type="String" />
            <asp:Parameter Name="Cidade" Type="String" />
            <asp:Parameter Name="PaisID" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/Menu.aspx" Text="Voltar" />
</asp:Content>
