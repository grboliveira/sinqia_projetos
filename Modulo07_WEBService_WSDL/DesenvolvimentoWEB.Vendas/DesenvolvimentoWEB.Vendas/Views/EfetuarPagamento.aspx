<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Layout.Master" AutoEventWireup="true" CodeBehind="EfetuarPagamento.aspx.cs" Inherits="DesenvolvimentoWEB.Vendas.Views.EfetuarPagamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudo" runat="server">
    <div class="container">
        <h2 class="text-center text-primary">Selecionar um item para pagar</h2>

        <%-- Pedido +cliente --%>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Pedido:"></asp:Label>
            <asp:DropDownList ID="pedidosDropDownList" CssClass="form-control" runat="server"></asp:DropDownList>
        </div>
        <hr />

        <div class="form-group">
            <asp:Label ID="pedidoLabel" runat="server" Text="Número do cartão:"></asp:Label>
            <asp:TextBox ID="cartaoTextBox" runat="server" MaxLength="16"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="cartaoRequiredFieldValidator"
                runat="server"
                ErrorMessage="Fornecer o número do cartão"
                ControlToValidate="cartaoTextBox"
                Display="Dynamic"
                CssClass="text-black-50 text-danger"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:Button
                ID="pagamentoButton" runat="server"
                Text="Efetuar Pagamento"
                CssClass="btn btn-primary" OnClick="pagamentoButton_Click" />
        </div>
        <div class="form-group">
            <asp:Label
                ID="mensagemLabel" runat="server"
                Text=""></asp:Label>

        </div>
    </div>
</asp:Content>
