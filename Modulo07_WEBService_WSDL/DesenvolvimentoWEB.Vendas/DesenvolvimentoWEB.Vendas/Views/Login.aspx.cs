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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["session_usuario"] != null)
            {
                //Session.Remove("sessao_usuario");
                Session.Abandon();
            }
        }

        protected void enviarButton_Click(object sender, EventArgs e)
        {
            try
            {
 
                Usuarios usuario = UsuariosDao.ValidarUsuario(
                    usuarioTextBox.Text,
                    senhaTextBox.Text);
                if(usuario == null)
                {
                    throw new Exception("Usuário ou senha inválidos");
                }
                Session["sessao_usuario"] = usuario ?? throw new Exception("Usuario ou senha inválidos");
                //Session.Add("sessao_usuario", usuario);
                Response.Redirect("Home.aspx");
            }
            catch (Exception ex)
            {
                mensagemLabel.CssClass = "alert alert-danger";
                mensagemLabel.Text = ex.Message;
                
            }
        }
    }
}