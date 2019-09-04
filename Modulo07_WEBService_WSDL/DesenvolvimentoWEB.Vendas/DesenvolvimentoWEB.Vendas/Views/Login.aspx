﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DesenvolvimentoWEB.Vendas.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Styles/EstilosLogin.css" rel="stylesheet" />
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top: 50px;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>

                    <div class="col-sm-4 alert alert-primary">
                        <div id="cabecalho">
                            <h1>Forneça suas credenciais</h1>
                        </div>
                        <%--Usuario --%>
                        <div class="form-group">
                            <asp:Label ID="usuarioLabel" runat="server" Text="Usuário"></asp:Label>
                            <asp:TextBox ID="usuarioTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <%--Senha--%>
                        <div class="form-group">
                            <asp:Label ID="senhaLabel" runat="server" Text="Senha"></asp:Label>
                            <asp:TextBox ID="senhaTextBox" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:Button ID="enviarButton" CssClass="btn btn-primary" runat="server" Text="Enviar" 
                                OnClick="enviarButton_Click" />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="mensagemLabel" runat="server"></asp:Label>
                        </div>
                    </div>

                    <div class="col-sm-4"></div>

                </div>

            </div>
        </div>

    </form>
</body>
</html>
