<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroConvidados.aspx.cs" Inherits="ProjetoWeb_CadastroEventos.Paginas.CadastroConvidados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="eventoLabel" runat="server" Text="Evento:"></asp:Label><br />
            <asp:DropDownList ID="eventoDropDownList" runat="server"></asp:DropDownList><br />
            
          
            <asp:Label ID="cpfLabel" runat="server" Text="CPF:"></asp:Label><br />
            <asp:TextBox ID="cpfTextBox" runat="server"></asp:TextBox><br />

            <asp:Label ID="nomeLabel" runat="server" Text="Nome:"></asp:Label><br />
            <asp:TextBox ID="nomeTextBox" runat="server"></asp:TextBox><br />

            <asp:Label ID="telefoneLabel" runat="server" Text="Telefone:"></asp:Label><br />
            <asp:TextBox ID="telefoneTextBox" runat="server"></asp:TextBox><br />

             <asp:Label ID="emailLabel" runat="server" Text="Email:"></asp:Label><br />
            <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox><br />

            <asp:Button ID="incluirButton" runat="server" Text="Incluir Convidado" OnClick="incluirConvidado_ButtonClick" /><br />

            <asp:Label ID="mensagemLabel" runat="server" Text="Label"></asp:Label>
        </div>
      
    </form>
</body>
</html>
