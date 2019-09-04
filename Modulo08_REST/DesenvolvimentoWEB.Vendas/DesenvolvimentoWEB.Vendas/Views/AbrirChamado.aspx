<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/Views/Layout.Master" AutoEventWireup="true" CodeBehind="AbrirChamado.aspx.cs" Inherits="DesenvolvimentoWEB.Vendas.Views.AbrirChamado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudo" runat="server">
    <div class="container">
        <h2 class="text-center text-primary">Abertura de chamado</h2>
        <div class="row">
            <div class="col-md-7">
                <%-- Assunto --%>
                <div class="form-group container">
                    <asp:Label ID="assuntoLabel" runat="server" Text="Assunto:"></asp:Label>
                    <asp:DropDownList ID="assuntoDropDownList" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                <%-- Documento --%>
                <div class="form-group">
                    <asp:Label ID="documentoLabel" runat="server" Text="Documento:"></asp:Label>
                    <asp:TextBox ID="documentoTextBox"  CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="dataRequiredFieldValidator" runat="server"
                        ErrorMessage="A data deve ser informada"
                        ControlToValidate="documentoTextBox"
                        CssClass="text-danger"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>
                </div>
                <%-- Descrição --%>
                <div class="form-group">
                    <asp:Label ID="descricaoLabel" runat="server" Text="Descrição:"></asp:Label>
                    <asp:TextBox ID="descricaoTextBox" TextMode="MultiLine" CssClass="form-control"
                        Rows="4" Columns="50" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="A data deve ser informada"
                        ControlToValidate="descricaoTextBox"
                        CssClass="text-danger"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>

                    <div class="form-group">
                        <asp:Button ID="enviarButton" CssClass="btn btn-primary"
                            runat="server" Text="Abrir Chamado" OnClick="enviarButton_Click" />
                    </div>
                    <div class="form-group" style="wdith=100%;">
                        <asp:Label ID="mensagemLabel" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
