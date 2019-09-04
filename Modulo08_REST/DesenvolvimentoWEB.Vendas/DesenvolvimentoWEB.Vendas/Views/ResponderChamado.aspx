<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/Views/Layout.Master" AutoEventWireup="true" CodeBehind="ResponderChamado.aspx.cs" Inherits="DesenvolvimentoWEB.Vendas.Views.ResponderChamado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudo" runat="server">
    <div class="container">
        <h2 class="text-center text-primary">Resposta a Chamados</h2>
        <div class="col-md-7">
            <div class="col-md-7">
                <div class="form-group">
                    <asp:Label ID="chamadoLabel" runat="server" Text="Chamado:"></asp:Label>
                </div>
                <asp:DropDownList ID="chamadosDropDownList" runat="server"
                    CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Button ID="buscarButton" CssClass="btn btn-info"
                    runat="server" Text="Buscar Chamado" OnClick="buscarButton_Click" />
            </div>
            <div class="form-group">
                <asp:Label ID="buscarLabel" runat="server" Text="Descrição:"></asp:Label>
                <asp:TextBox ID="descricaoTextBox" ReadOnly="true" CssClass="form-control text-primary"
                    runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="responderLabel" runat="server" Text="Responder:"></asp:Label>
                <asp:TextBox ID="responderTextBox" TextMode="MultiLine"
                    CssClass="form-control text-primary" runat="server"></asp:TextBox>
            </div>
        <div class="form-group">
            <asp:Button ID="enviarButton" CssClass="btn btn-info"
                runat="server" Text="Responder CHamado" OnClick="enviarButton_Click" />
        </div>
            <div class="form-group">
            <asp:Button ID="removerButton" CssClass="btn btn-info"
                runat="server" Text="Responder Chamado" OnClick="removerButton_Click" />
        </div>
        <div class="form-group" style="width=100%;">
            <asp:Label ID="mensagemLabel" runat="server"></asp:Label>
        </div>
    </div>


</asp:Content>
