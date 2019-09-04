namespace Projeto01_CadastroEventos
{
    partial class FormCadastro
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.IncluirEventobutton = new System.Windows.Forms.Button();
            this.PrecotextBox = new System.Windows.Forms.TextBox();
            this.dataEventomaskedTextBox = new System.Windows.Forms.MaskedTextBox();
            this.ResponsaveltextBox = new System.Windows.Forms.TextBox();
            this.descricaotextBox = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.incluirConvidadobutton = new System.Windows.Forms.Button();
            this.emailConvidadotextBox = new System.Windows.Forms.TextBox();
            this.telefoneConvidadotextBox = new System.Windows.Forms.TextBox();
            this.nomeConvidadotextBox = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.CPFtextBox = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.EventocomboBox = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.buscarConvidadosbutton = new System.Windows.Forms.Button();
            this.convidadosdataGridView = new System.Windows.Forms.DataGridView();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.convidadosdataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.IncluirEventobutton);
            this.groupBox1.Controls.Add(this.PrecotextBox);
            this.groupBox1.Controls.Add(this.dataEventomaskedTextBox);
            this.groupBox1.Controls.Add(this.ResponsaveltextBox);
            this.groupBox1.Controls.Add(this.descricaotextBox);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 30);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(362, 309);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Dados do Evento";
            // 
            // IncluirEventobutton
            // 
            this.IncluirEventobutton.Location = new System.Drawing.Point(30, 177);
            this.IncluirEventobutton.Name = "IncluirEventobutton";
            this.IncluirEventobutton.Size = new System.Drawing.Size(99, 23);
            this.IncluirEventobutton.TabIndex = 8;
            this.IncluirEventobutton.Text = "Incluir Evento";
            this.IncluirEventobutton.UseVisualStyleBackColor = true;
            this.IncluirEventobutton.Click += new System.EventHandler(this.IncluirEventobutton_Click);
            // 
            // PrecotextBox
            // 
            this.PrecotextBox.Location = new System.Drawing.Point(134, 132);
            this.PrecotextBox.Name = "PrecotextBox";
            this.PrecotextBox.Size = new System.Drawing.Size(194, 20);
            this.PrecotextBox.TabIndex = 7;
            // 
            // dataEventomaskedTextBox
            // 
            this.dataEventomaskedTextBox.Location = new System.Drawing.Point(134, 99);
            this.dataEventomaskedTextBox.Mask = "00/00/0000";
            this.dataEventomaskedTextBox.Name = "dataEventomaskedTextBox";
            this.dataEventomaskedTextBox.Size = new System.Drawing.Size(100, 20);
            this.dataEventomaskedTextBox.TabIndex = 6;
            // 
            // ResponsaveltextBox
            // 
            this.ResponsaveltextBox.Location = new System.Drawing.Point(134, 64);
            this.ResponsaveltextBox.Name = "ResponsaveltextBox";
            this.ResponsaveltextBox.Size = new System.Drawing.Size(194, 20);
            this.ResponsaveltextBox.TabIndex = 5;
            // 
            // descricaotextBox
            // 
            this.descricaotextBox.Location = new System.Drawing.Point(134, 32);
            this.descricaotextBox.Name = "descricaotextBox";
            this.descricaotextBox.Size = new System.Drawing.Size(194, 20);
            this.descricaotextBox.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(27, 135);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(38, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Preço:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(27, 102);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(85, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Data do Evento:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(27, 67);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(72, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Responsável:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(27, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Descrição:";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.buscarConvidadosbutton);
            this.groupBox2.Controls.Add(this.incluirConvidadobutton);
            this.groupBox2.Controls.Add(this.emailConvidadotextBox);
            this.groupBox2.Controls.Add(this.telefoneConvidadotextBox);
            this.groupBox2.Controls.Add(this.nomeConvidadotextBox);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.CPFtextBox);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.EventocomboBox);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Location = new System.Drawing.Point(414, 30);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(359, 254);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Dados do Convidado";
            // 
            // incluirConvidadobutton
            // 
            this.incluirConvidadobutton.Location = new System.Drawing.Point(41, 217);
            this.incluirConvidadobutton.Name = "incluirConvidadobutton";
            this.incluirConvidadobutton.Size = new System.Drawing.Size(128, 23);
            this.incluirConvidadobutton.TabIndex = 10;
            this.incluirConvidadobutton.Text = "Incluir Convidado";
            this.incluirConvidadobutton.UseVisualStyleBackColor = true;
            this.incluirConvidadobutton.Click += new System.EventHandler(this.incluirConvidadobutton_Click);
            // 
            // emailConvidadotextBox
            // 
            this.emailConvidadotextBox.Location = new System.Drawing.Point(110, 180);
            this.emailConvidadotextBox.Name = "emailConvidadotextBox";
            this.emailConvidadotextBox.Size = new System.Drawing.Size(100, 20);
            this.emailConvidadotextBox.TabIndex = 9;
            // 
            // telefoneConvidadotextBox
            // 
            this.telefoneConvidadotextBox.Location = new System.Drawing.Point(110, 150);
            this.telefoneConvidadotextBox.Name = "telefoneConvidadotextBox";
            this.telefoneConvidadotextBox.Size = new System.Drawing.Size(100, 20);
            this.telefoneConvidadotextBox.TabIndex = 8;
            // 
            // nomeConvidadotextBox
            // 
            this.nomeConvidadotextBox.Location = new System.Drawing.Point(110, 113);
            this.nomeConvidadotextBox.Name = "nomeConvidadotextBox";
            this.nomeConvidadotextBox.Size = new System.Drawing.Size(100, 20);
            this.nomeConvidadotextBox.TabIndex = 7;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(38, 187);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(35, 13);
            this.label9.TabIndex = 6;
            this.label9.Text = "Email:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(38, 153);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(52, 13);
            this.label8.TabIndex = 5;
            this.label8.Text = "Telefone:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(38, 116);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(38, 13);
            this.label7.TabIndex = 4;
            this.label7.Text = "Nome:";
            this.label7.Click += new System.EventHandler(this.label7_Click);
            // 
            // CPFtextBox
            // 
            this.CPFtextBox.Location = new System.Drawing.Point(110, 79);
            this.CPFtextBox.Name = "CPFtextBox";
            this.CPFtextBox.Size = new System.Drawing.Size(100, 20);
            this.CPFtextBox.TabIndex = 3;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(38, 79);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(30, 13);
            this.label6.TabIndex = 2;
            this.label6.Text = "CPF:";
            // 
            // EventocomboBox
            // 
            this.EventocomboBox.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
            this.EventocomboBox.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.EventocomboBox.FormattingEnabled = true;
            this.EventocomboBox.Location = new System.Drawing.Point(110, 32);
            this.EventocomboBox.Name = "EventocomboBox";
            this.EventocomboBox.Size = new System.Drawing.Size(100, 21);
            this.EventocomboBox.TabIndex = 1;
            this.EventocomboBox.SelectedIndexChanged += new System.EventHandler(this.EventocomboBox_SelectedIndexChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(38, 35);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(41, 13);
            this.label5.TabIndex = 0;
            this.label5.Text = "Evento";
            // 
            // buscarConvidadosbutton
            // 
            this.buscarConvidadosbutton.CausesValidation = false;
            this.buscarConvidadosbutton.Location = new System.Drawing.Point(225, 25);
            this.buscarConvidadosbutton.Name = "buscarConvidadosbutton";
            this.buscarConvidadosbutton.Size = new System.Drawing.Size(76, 23);
            this.buscarConvidadosbutton.TabIndex = 11;
            this.buscarConvidadosbutton.Text = "Buscar";
            this.buscarConvidadosbutton.UseVisualStyleBackColor = true;
            this.buscarConvidadosbutton.Click += new System.EventHandler(this.buscarConvidadosbutton_Click);
            // 
            // convidadosdataGridView
            // 
            this.convidadosdataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.convidadosdataGridView.Location = new System.Drawing.Point(414, 290);
            this.convidadosdataGridView.Name = "convidadosdataGridView";
            this.convidadosdataGridView.Size = new System.Drawing.Size(359, 150);
            this.convidadosdataGridView.TabIndex = 2;
            this.convidadosdataGridView.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // FormCadastro
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.convidadosdataGridView);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "FormCadastro";
            this.Text = "Cadastro de Eventos e Convidados";
            this.Load += new System.EventHandler(this.FormCadastro_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.convidadosdataGridView)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button IncluirEventobutton;
        private System.Windows.Forms.TextBox PrecotextBox;
        private System.Windows.Forms.MaskedTextBox dataEventomaskedTextBox;
        private System.Windows.Forms.TextBox ResponsaveltextBox;
        private System.Windows.Forms.TextBox descricaotextBox;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox EventocomboBox;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox CPFtextBox;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox emailConvidadotextBox;
        private System.Windows.Forms.TextBox telefoneConvidadotextBox;
        private System.Windows.Forms.TextBox nomeConvidadotextBox;
        private System.Windows.Forms.Button incluirConvidadobutton;
        private System.Windows.Forms.Button buscarConvidadosbutton;
        private System.Windows.Forms.DataGridView convidadosdataGridView;
    }
}

