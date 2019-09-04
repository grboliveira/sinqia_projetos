using Projeto01_CadastroEventos.RepositoryDao;
using Projeto02_AcessoDados.DAL;
using Projeto02_AcessoDados.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Projeto01_CadastroEventos
{
    public partial class FormCadastro : Form
    {
        public FormCadastro()
        {
            InitializeComponent();
            ListarEventos();
        }

        private void IncluirEventobutton_Click(object sender, EventArgs e)
        {
            try
            {
                Evento evento = new Evento();
                evento.Descricao = descricaotextBox.Text;
                evento.Responsavel = ResponsaveltextBox.Text;
                evento.Data = Convert.ToDateTime(dataEventomaskedTextBox.Text);
                evento.Preco = Convert.ToDouble(PrecotextBox.Text);

                EventosDao dao = Repository.GetEventosDao();
                dao.Incluir(evento);

                ListarEventos();
                MessageBox.Show("Evento incluído com sucesso");
                descricaotextBox.Clear();
                ResponsaveltextBox.Clear();
                dataEventomaskedTextBox.Clear();
                PrecotextBox.Clear();

                descricaotextBox.Focus();
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void ListarEventos()
        {
            try
            {
                EventosDao dao = Repository.GetEventosDao();
                EventocomboBox.DataSource = dao.Listar();
                EventocomboBox.DisplayMember = "Descricao"; //Text
                EventocomboBox.ValueMember = "Id";//Value
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                this.Close();
            }
        }

        private void EventocomboBox_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void incluirConvidadobutton_Click(object sender, EventArgs e)
        {
            try
            {
                Convidado convidado = new Convidado();
                ConvidadosDao dao = Repository.GetConvidadosDao();

                convidado.CPF = CPFtextBox.Text;
                convidado.Nome = nomeConvidadotextBox.Text;
                convidado.Email = emailConvidadotextBox.Text;
                convidado.Telefone = telefoneConvidadotextBox.Text;

                int id = (int)EventocomboBox.SelectedValue;

                convidado.EventoInfo = Repository.GetEventosDao().Buscar(id);
                //incluindo o convidado no database
                dao.Incluir(convidado);
                if (dao.StatusInclusaoConvidado == 1)
                {
                    MessageBox.Show("Convidado alterado com sucesso");
                }
                else
                {
                    MessageBox.Show("Convidado incluído com sucesso!");
                }
                CPFtextBox.Clear();
                nomeConvidadotextBox.Clear();
                emailConvidadotextBox.Clear();
                emailConvidadotextBox.Clear();
                telefoneConvidadotextBox.Clear();
                CPFtextBox.Focus();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FormCadastro_Load(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void buscarConvidadosbutton_Click(object sender, EventArgs e)
        {
            try
            {
                int id = (int)EventocomboBox.SelectedValue;
                ConvidadosDao dao = Repository.GetConvidadosDao();
                //convidadosdataGridView.DataSource = dao.Listar(id);
                convidadosdataGridView.DataSource = dao.ListarConvidados(id);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                throw;
            }
        }
    }
}
