<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Layout.Master" AutoEventWireup="true" CodeBehind="CadastroPedido.aspx.cs" Inherits="DesenvolvimentoWEB.Vendas.Views.Cadastro_Pedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudo" runat="server">
    <<div class="container">
        <h2 class="text-center">Inclusão de Pedidos</h2>

        <div class="row">
            <div class="col-md-5">
                <h3 class="text-center">Forneça os dados</h3>

                <%-- Cliente --%>
                <div class="form-group container">
                    <asp:Label ID="clienteLabel" runat="server" Text="Cliente:"></asp:Label>
                    <asp:DropDownList ID="clienteDropDownList" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                <%-- Data --%>
                <div class="form-group container">
                    <asp:Label ID="dataLabel" runat="server" Text="Data:"></asp:Label>
                    <asp:TextBox ID="dataTextBox" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="dataRequiredFieldValidator" runat="server"
                        ErrorMessage="A data deve ser informada"
                        ControlToValidate="dataTextBox"
                        CssClass="text-danger"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>
                </div>

                <%-- Número Pedido --%>
                <div class="form-group container">
                    <asp:Label ID="pedidoLabel" runat="server" Text="Num. Pedido:"></asp:Label>
                    <asp:TextBox ID="pedidoTextBox" MaxLength="20" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="pedidoRequiredFieldValidator" runat="server"
                        ErrorMessage="O número do pedido deve ser informado"
                        ControlToValidate="pedidoTextBox"
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
                <%-- %><asp:Repeater ID="clientesRepeater" runat="server">
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
                </asp:Repeater>--%>
            </div>
        </div>
    </div>
</asp:Content>
