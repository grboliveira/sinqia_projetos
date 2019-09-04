<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Layout.Master" AutoEventWireup="true" CodeBehind="CadastroProdutos.aspx.cs" Inherits="DesenvolvimentoWEB.Vendas.Views.Cadastro_Produtos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudo" runat="server">
    <div class="container">
        <h2 class="text-center">Cadastro de Produtos</h2>

        <div class="row">
            <div class="col-md-5">
                <h3 class="text-center">Forneça os dados</h3>

                <%-- Categoria --%>
                <div class="form-group container">
                    <asp:Label ID="categoriaLabel" runat="server" Text="Categoria:"></asp:Label>
                    <asp:DropDownList ID="categoriaDropDownList" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                <%-- Descrição --%>
                <div class="form-group container">
                    <asp:Label ID="descricaoLabel" runat="server" Text="Descrição:"></asp:Label>
                    <asp:TextBox ID="descricaoTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="descricaoRequiredFieldValidator" runat="server"
                        ErrorMessage="A descrição deve ser informada"
                        ControlToValidate="descricaoTextBox"
                        CssClass="text-danger"
                        Display="Dynamic">

                    </asp:RequiredFieldValidator>
                </div>
                <%-- Unidade --%>
                <div class="form-group container">
                    <asp:Label ID="unidadeLabel" runat="server" Text="Unidade:"></asp:Label>
                    <asp:DropDownList ID="unidadeDropDownList" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                <%-- Preço --%>
                <div class="form-group container" display="Dynamic">
                    <asp:Label ID="precoLabel" runat="server" Text="Preço:"></asp:Label>
                    <asp:TextBox ID="precoTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="precoRequiredFieldValidator" runat="server"
                        ErrorMessage="O preço deve ser informado"
                        ControlToValidate="precoTextBox"
                        CssClass="text-danger"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator
                        ID="precoRangeValidator"
                        runat="server"
                        ErrorMessage="O valor deve ser entre 1 e 10000 reais"
                MaximumValue="10000" MinimumValue="1" Type="Double"></asp:RangeValidator> </div>
                <%-- Foto --%>
                <div class="form-group container">
                    <asp:Label ID="figuraLabel" runat="server" Text="Figura:"></asp:Label>
                    <asp:FileUpload ID="figuraFileUpload" CssClass="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <asp:Button ID="enviarButton" CssClass="btn btn-primary" OnClick="enviarButton_Click" runat="server" Text="Enviar" />
                </div>
            </div>
            <asp:Label ID="mensagemLabel" runat="server"></asp:Label>
            <div class="col-md-7">
                <h3>Lista de Produtos</h3>
                <asp:Repeater ID="produtosRepeater" runat="server" OnItemDataBound="produtosRepeater_ItemDataBound">
                    <HeaderTemplate>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <td>ID</td>
                                    <td>Descrição</td>
                                    <td>Preço</td>
                                    <td>Imagem</td>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label runat="server" Text='<%# Eval("Descricao") %>'></asp:Label>

                            </td>
                            <td>
                                <asp:Label runat="server" Text='<%# Eval("Preco") %>'></asp:Label>
                            </td>
                            <td>
                                <%--Estava faltando o simbolo # --%>
                                <asp:HiddenField runat="server" ID="idHiddenField" Value='<%# Eval("Id") %>' />
                                <asp:Image ID="produtoImage" runat="server" Width="100" />
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
