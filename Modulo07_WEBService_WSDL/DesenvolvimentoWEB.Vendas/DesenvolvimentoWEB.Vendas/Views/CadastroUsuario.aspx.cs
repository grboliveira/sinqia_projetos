using DesenvolvimentoWEB.Vendas.Data;
using DesenvolvimentoWEB.Vendas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DesenvolvimentoWEB.Vendas.Views
{
    public partial class CadastroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var nomeUsuario = Request.QueryString["nome"];
            if(nomeUsuario != null)
            {
                nomeTextBox.Text = nomeUsuario;
            }
        }

        protected void enviarButton_Click(object sender, EventArgs e)
        {
            try
            {



                Usuarios usuario = new Usuarios()
                {
                    Nome = nomeTextBox.Text,
                    Senha = senhaTextBox.Text
                };

                UsuariosDao.IncluirUsuario(usuario);

                mensagemLabel.CssClass = "alert alert-sucess";
                mensagemLabel.Text = "Usuário <strong>" + usuario.Nome + "</strong> incluído com sucesso";
            }
            catch (Exception ex)
            {
                mensagemLabel.CssClass = "alert alert-danger";
                mensagemLabel.Text = ex.Message;
            }
        }
    }
}