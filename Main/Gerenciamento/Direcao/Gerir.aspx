<%@ Page Title="" Language="C#" MasterPageFile="~/Gerenciamento/BackO.Master" AutoEventWireup="true" CodeBehind="Gerir.aspx.cs" Inherits="VesteBem.Gerenciamento.Direcao.Gerir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsTrabalhadores" ForeColor="Black" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="DepartamentoID" HeaderText="DepartamentoID" SortExpression="DepartamentoID" />
            <asp:BoundField DataField="PaisID" HeaderText="PaisID" SortExpression="PaisID" />
            <asp:BoundField DataField="PrimeiroNome" HeaderText="PrimeiroNome" SortExpression="PrimeiroNome" />
            <asp:BoundField DataField="SegundoNome" HeaderText="SegundoNome" SortExpression="SegundoNome" />
            <asp:BoundField DataField="Nacionalidade" HeaderText="Nacionalidade" SortExpression="Nacionalidade" />
            <asp:BoundField DataField="DataNascimento" HeaderText="DataNascimento" SortExpression="DataNascimento" />
            <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Cidade" HeaderText="Cidade" SortExpression="Cidade" />
            <asp:BoundField DataField="Rua" HeaderText="Rua" SortExpression="Rua" />
            <asp:BoundField DataField="Numero" HeaderText="Numero" SortExpression="Numero" />
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
    <asp:SqlDataSource ID="sdsTrabalhadores" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="Delete        Trabalhadores.ID, Trabalhadores.DepartamentoID, Trabalhadores.PaisID, Trabalhadores.PrimeiroNome, Trabalhadores.SegundoNome, Paises.Nacionalidade, Trabalhadores.DataNascimento, Trabalhadores.Tel, 
                         Trabalhadores.Email, Departamentos.Nome, Morada.Cidade, Morada.Rua, Morada.Numero
FROM            Departamentos INNER JOIN
                         Morada ON Departamentos.ID = Morada.ID INNER JOIN
                         Paises ON Morada.PaisID = Paises.ID INNER JOIN
                         Trabalhadores ON Departamentos.ID = Trabalhadores.DepartamentoID AND Morada.ID = Trabalhadores.MoradaID AND Paises.ID = Trabalhadores.PaisID" InsertCommand="Insert        Trabalhadores.ID, Trabalhadores.DepartamentoID, Trabalhadores.PaisID, Trabalhadores.PrimeiroNome, Trabalhadores.SegundoNome, Paises.Nacionalidade, Trabalhadores.DataNascimento, Trabalhadores.Tel, 
                         Trabalhadores.Email, Departamentos.Nome, Morada.Cidade, Morada.Rua, Morada.Numero
FROM            Departamentos INNER JOIN
                         Morada ON Departamentos.ID = Morada.ID INNER JOIN
                         Paises ON Morada.PaisID = Paises.ID INNER JOIN
                         Trabalhadores ON Departamentos.ID = Trabalhadores.DepartamentoID AND Morada.ID = Trabalhadores.MoradaID AND Paises.ID = Trabalhadores.PaisID" SelectCommand="SELECT Trabalhadores.ID, Trabalhadores.DepartamentoID, Trabalhadores.PaisID, Trabalhadores.PrimeiroNome, Trabalhadores.SegundoNome, Paises.Nacionalidade, Trabalhadores.DataNascimento, Trabalhadores.Tel, Trabalhadores.Email, Departamentos.Nome, Morada.Cidade, Morada.Rua, Morada.Numero FROM Departamentos INNER JOIN Morada ON Departamentos.ID = Morada.ID INNER JOIN Paises ON Morada.PaisID = Paises.ID INNER JOIN Trabalhadores ON Departamentos.ID = Trabalhadores.DepartamentoID AND Morada.ID = Trabalhadores.MoradaID AND Paises.ID = Trabalhadores.PaisID" UpdateCommand="Update       Trabalhadores.ID, Trabalhadores.DepartamentoID, Trabalhadores.PaisID, Trabalhadores.PrimeiroNome, Trabalhadores.SegundoNome, Paises.Nacionalidade, Trabalhadores.DataNascimento, Trabalhadores.Tel, 
                         Trabalhadores.Email, Departamentos.Nome, Morada.Cidade, Morada.Rua, Morada.Numero
FROM            Departamentos INNER JOIN
                         Morada ON Departamentos.ID = Morada.ID INNER JOIN
                         Paises ON Morada.PaisID = Paises.ID INNER JOIN
                         Trabalhadores ON Departamentos.ID = Trabalhadores.DepartamentoID AND Morada.ID = Trabalhadores.MoradaID AND Paises.ID = Trabalhadores.PaisID"></asp:SqlDataSource>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/Direcao/GPaises.aspx">Novo Pais</asp:LinkButton>
    <br />
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsPais" ForeColor="Black" GridLines="Vertical">
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
&nbsp;<asp:SqlDataSource ID="sdsPais" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="DELETE FROM [Paises] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Paises] ([Codigo], [Nome], [Capital], [Nacionalidade]) VALUES (@Codigo, @Nome, @Capital, @Nacionalidade)" SelectCommand="SELECT * FROM [Paises] ORDER BY [Nome]" UpdateCommand="UPDATE [Paises] SET [Codigo] = @Codigo, [Nome] = @Nome, [Capital] = @Capital, [Nacionalidade] = @Nacionalidade WHERE [ID] = @ID">
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
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/Direcao/GDepartamento.aspx">Novo Departamento</asp:LinkButton>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsDepartamento" ForeColor="Black" GridLines="Vertical" Width="50%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    <asp:SqlDataSource ID="sdsDepartamento" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" DeleteCommand="DELETE FROM [Departamentos] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Departamentos] ([Nome]) VALUES (@Nome)" SelectCommand="SELECT * FROM [Departamentos] ORDER BY [Nome]" UpdateCommand="UPDATE [Departamentos] SET [Nome] = @Nome WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nome" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="sdsuser" ForeColor="Black" GridLines="Vertical" Width="90%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="PrimeiroNome" HeaderText="PrimeiroNome" SortExpression="PrimeiroNome" />
            <asp:BoundField DataField="UltimoNome" HeaderText="UltimoNome" SortExpression="UltimoNome" />
            <asp:BoundField DataField="Morada" HeaderText="Morada" SortExpression="Morada" />
            <asp:BoundField DataField="CodPostal" HeaderText="CodPostal" SortExpression="CodPostal" />
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
    <asp:SqlDataSource ID="sdsuser" runat="server" ConnectionString="<%$ ConnectionStrings:VesteBemDBConnectionString %>" SelectCommand="SELECT [ID], [PrimeiroNome], [UltimoNome], [Morada], [CodPostal] FROM [UserInfo]"></asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="button" PostBackUrl="~/Gerenciamento/Menu.aspx" Text="Voltar" />
</asp:Content>
