using DesenvolvimentoWEB.Vendas.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DesenvolvimentoWEB.Vendas.Views
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        public string NomeUsuario { get; set; }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuarios usuario = (Usuarios)Session["sessao_usuario"];
            if (usuario == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                NomeUsuario = usuario.Nome;
            }
        }
    }
}