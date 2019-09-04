<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Layout.Master" AutoEventWireup="true" CodeBehind="CadastroItem.aspx.cs" Inherits="DesenvolvimentoWEB.Vendas.Views.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudo" runat="server">
    <div class="container">
        <h2 class="text-center">Inclusão de Pedidos</h2>

        <div class="row">
            <div class="col-md-5">
                <h3 class="text-center">Forneça os dados</h3>

                <%-- Pedido -> Cliente --%>
                <div class="form-group container">
                    <asp:Label ID="pedidoLabel" runat="server" Text="Pedido:"></asp:Label>
                    <asp:DropDownList ID="pedidosDropDownList" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                <%-- Produto --%>
                <div class="form-group container">
                    <asp:Label ID="produtoLabel" runat="server" Text="Produto:"></asp:Label>
                    <asp:DropDownList ID="produtosDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>

                <%-- Quantidade --%>
                <div class="form-group container">
                    <asp:Label ID="quantidadeLabel" runat="server" Text="Quantidade:"></asp:Label>
                    <asp:TextBox ID="quantidadeTextBox" MaxLength="20" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="quantidadeRequiredFieldValidator" runat="server"
                        ErrorMessage="A quantidade deve ser informada"
                        ControlToValidate="quantidadeTextBox"
                        CssClass="text-danger"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="quantidadeRangeValidator"
                        runat="server"
                        ControlToValidate="quantidadeTextBox"
                        ErrorMessage="Deve ser um valor entre 1 e 100"
                        Type="Double" 
                        MinimumValue="1" MaximumValue="100" Display="Dynamic"></asp:RangeValidator>
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
