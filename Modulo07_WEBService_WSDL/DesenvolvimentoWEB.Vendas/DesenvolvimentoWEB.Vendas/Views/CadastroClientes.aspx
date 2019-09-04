<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Layout.Master" AutoEventWireup="true" CodeBehind="CadastroClientes.aspx.cs" Inherits="DesenvolvimentoWEB.Vendas.Views.CadastroClientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudo" runat="server">
    <div class="container">
        <h2 class="text-center">Cadastro de Clientes</h2>

        <div class="row">
            <div class="col-md-5">
                <h3 class="text-center">Forneça os dados</h3>
                <div class="form-group container">
                    <asp:Label ID="documentoLabel" runat="server" Text="Documento"></asp:Label>
                    <asp:TextBox ID="documentoTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="documentoRequiredFieldValidator" runat="server" 
                        ErrorMessage="O documento deve ser informado" 
                        ControlToValidate="documentoTextBox"
                        CssClass="text-danger"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>
                </div>
                <div class="form-group container">
                    <asp:Label ID="nomeLabel" runat="server" Text="Nome"></asp:Label>
                    <asp:TextBox ID="nomeTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="nomeRequiredFieldValidator" runat="server"
                        CssClass="text-danger"
                        ErrorMessage="O nome deve ser informado" 
                        ControlToValidate="nomeTextBox"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>
                </div>
                <div class="form-group container">
                    <asp:Label ID="emailLabel" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="emailTextBox" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" 
                        ErrorMessage="O email deve ser informado" 
                        ControlToValidate="emailTextBox"
                        CssClass="text-danger"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" 
                        runat="server" 
                        ErrorMessage="Email inválido"
                        CssClass="alert-danger"
                        ControlToValidate="emailTextBox" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group container">
                    <asp:Label ID="telefoneLabel" runat="server" Text="Telefone"></asp:Label>
                    <asp:TextBox ID="telefoneTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="telefoneRequiredFieldValidator" runat="server" 
                        ErrorMessage="O telefone deve ser informado" 
                        ControlToValidate="telefoneTextBox"
                        CssClass="text-danger"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Button ID="enviarButton" CssClass="btn btn-primary" OnClick="enviarButton_Click" runat="server" Text="Enviar" />
                </div>
            </div>
            <asp:Label ID="mensagemLabel" runat="server"></asp:Label>
            <div class="col-md-7">
                <h3>Lista de clientes</h3>
                <asp:Repeater ID="clientesRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <td>CPF</td>
                                    <td>Nome</td>
                                    <td>Telefone</td>
                                    <td>Email</td>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text='<%# Eval("Documento") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label runat="server" Text='<%# Eval("Nome") %>'></asp:Label>

                            </td>
                            <td>
                                <asp:Label runat="server" Text='<%# Eval("Telefone") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </td>
                        </tr>
                    </ItemTemplate>

                    <FooterTemplate>
                        </tbody>
                    </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
