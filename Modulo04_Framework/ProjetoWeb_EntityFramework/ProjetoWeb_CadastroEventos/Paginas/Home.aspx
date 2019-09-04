<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroConvidados.aspx.cs" Inherits="ProjetoWeb_CadastroEventos.Paginas.CadastroConvidados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Gestão de Eventos</h1>
            <h2>Escolha uma opção</h2>
            <ul>
                <li>
                    <asp:HyperLink ID="eventosHyperLink" runat="server" NavigateUrl="~/Paginas/CadastroEventos.aspx">Cadastro de Eventos</asp:HyperLink></li>
                <li>  
                    <asp:HyperLink ID="convidadosHyperLink" runat="server" NavigateUrl="~/Paginas/CadastroConvidados.aspx">Cadastro de Convidados</asp:HyperLink></li>
            </ul>
        </div>
      
    </form>
</body>
</html>