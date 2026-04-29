namespace Praktika01Uvarov
{
    partial class Users
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
            dataGridView1 = new DataGridView();
            id_user = new DataGridViewTextBoxColumn();
            DTLogin = new DataGridViewTextBoxColumn();
            RoleUser = new DataGridViewTextBoxColumn();
            labelLogin = new Label();
            labelPass = new Label();
            labelRole = new Label();
            RoleCombBox = new ComboBox();
            txtPas = new TextBox();
            txtLLogin = new TextBox();
            btnSave = new Button();
            btnDelete = new Button();
            labelFIO = new Label();
            txtFIO = new TextBox();
            btnReserv = new Button();
            btnVostan = new Button();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            SuspendLayout();
            // 
            // dataGridView1
            // 
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.AllowUserToDeleteRows = false;
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Columns.AddRange(new DataGridViewColumn[] { id_user, DTLogin, RoleUser });
            dataGridView1.Location = new Point(12, 12);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.ReadOnly = true;
            dataGridView1.RowHeadersVisible = false;
            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataGridView1.Size = new Size(247, 305);
            dataGridView1.TabIndex = 0;
            // 
            // id_user
            // 
            id_user.HeaderText = "id_user";
            id_user.Name = "id_user";
            id_user.ReadOnly = true;
            id_user.Visible = false;
            // 
            // DTLogin
            // 
            DTLogin.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            DTLogin.HeaderText = "Логин";
            DTLogin.Name = "DTLogin";
            DTLogin.ReadOnly = true;
            // 
            // RoleUser
            // 
            RoleUser.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            RoleUser.HeaderText = "Статус";
            RoleUser.Name = "RoleUser";
            RoleUser.ReadOnly = true;
            // 
            // labelLogin
            // 
            labelLogin.AutoSize = true;
            labelLogin.Font = new Font("Segoe UI", 9.75F);
            labelLogin.Location = new Point(265, 54);
            labelLogin.Name = "labelLogin";
            labelLogin.Size = new Size(44, 17);
            labelLogin.TabIndex = 1;
            labelLogin.Text = "Логин";
            // 
            // labelPass
            // 
            labelPass.AutoSize = true;
            labelPass.Font = new Font("Segoe UI", 9.75F);
            labelPass.Location = new Point(265, 97);
            labelPass.Name = "labelPass";
            labelPass.Size = new Size(54, 17);
            labelPass.TabIndex = 2;
            labelPass.Text = "Пароль";
            // 
            // labelRole
            // 
            labelRole.AutoSize = true;
            labelRole.Font = new Font("Segoe UI", 9.75F);
            labelRole.Location = new Point(265, 140);
            labelRole.Name = "labelRole";
            labelRole.Size = new Size(37, 17);
            labelRole.TabIndex = 3;
            labelRole.Text = "Роль";
            // 
            // RoleCombBox
            // 
            RoleCombBox.FormattingEnabled = true;
            RoleCombBox.Location = new Point(325, 139);
            RoleCombBox.Name = "RoleCombBox";
            RoleCombBox.Size = new Size(261, 23);
            RoleCombBox.TabIndex = 4;
            RoleCombBox.KeyPress += RoleCombBox_KeyPress;
            // 
            // txtPas
            // 
            txtPas.Location = new Point(325, 96);
            txtPas.Name = "txtPas";
            txtPas.PlaceholderText = "Пароль*";
            txtPas.Size = new Size(261, 23);
            txtPas.TabIndex = 5;
            txtPas.KeyPress += txtPas_KeyPress;
            // 
            // txtLLogin
            // 
            txtLLogin.Location = new Point(325, 53);
            txtLLogin.Name = "txtLLogin";
            txtLLogin.PlaceholderText = "Логин*";
            txtLLogin.Size = new Size(261, 23);
            txtLLogin.TabIndex = 6;
            txtLLogin.KeyPress += txtLLogin_KeyPress;
            // 
            // btnSave
            // 
            btnSave.FlatStyle = FlatStyle.Flat;
            btnSave.Location = new Point(265, 288);
            btnSave.Name = "btnSave";
            btnSave.Size = new Size(156, 29);
            btnSave.TabIndex = 7;
            btnSave.Text = "Сохранить изменения";
            btnSave.UseVisualStyleBackColor = true;
            btnSave.Click += button1_Click;
            // 
            // btnDelete
            // 
            btnDelete.FlatStyle = FlatStyle.Flat;
            btnDelete.Location = new Point(430, 288);
            btnDelete.Name = "btnDelete";
            btnDelete.Size = new Size(156, 29);
            btnDelete.TabIndex = 8;
            btnDelete.Text = "Удалить пользователя";
            btnDelete.UseVisualStyleBackColor = true;
            btnDelete.Click += button2_Click;
            // 
            // labelFIO
            // 
            labelFIO.AutoSize = true;
            labelFIO.Font = new Font("Segoe UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 204);
            labelFIO.Location = new Point(265, 13);
            labelFIO.Name = "labelFIO";
            labelFIO.Size = new Size(37, 17);
            labelFIO.TabIndex = 9;
            labelFIO.Text = "ФИО";
            // 
            // txtFIO
            // 
            txtFIO.Location = new Point(325, 12);
            txtFIO.Name = "txtFIO";
            txtFIO.PlaceholderText = "Фамилия Имя Отчество*";
            txtFIO.Size = new Size(260, 23);
            txtFIO.TabIndex = 10;
            txtFIO.KeyPress += txtFIO_KeyPress;
            // 
            // btnReserv
            // 
            btnReserv.FlatStyle = FlatStyle.Flat;
            btnReserv.Location = new Point(430, 183);
            btnReserv.Name = "btnReserv";
            btnReserv.Size = new Size(113, 76);
            btnReserv.TabIndex = 11;
            btnReserv.Text = "Резервное копирование";
            btnReserv.UseVisualStyleBackColor = true;
            btnReserv.Click += button3_Click;
            // 
            // btnVostan
            // 
            btnVostan.FlatStyle = FlatStyle.Flat;
            btnVostan.Location = new Point(308, 183);
            btnVostan.Name = "btnVostan";
            btnVostan.Size = new Size(113, 76);
            btnVostan.TabIndex = 12;
            btnVostan.Text = "Восстановление ";
            btnVostan.UseVisualStyleBackColor = true;
            btnVostan.Click += button4_Click;
            // 
            // Users
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(598, 337);
            Controls.Add(btnVostan);
            Controls.Add(btnReserv);
            Controls.Add(txtFIO);
            Controls.Add(labelFIO);
            Controls.Add(btnDelete);
            Controls.Add(btnSave);
            Controls.Add(txtLLogin);
            Controls.Add(txtPas);
            Controls.Add(RoleCombBox);
            Controls.Add(labelRole);
            Controls.Add(labelPass);
            Controls.Add(labelLogin);
            Controls.Add(dataGridView1);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Name = "Users";
            StartPosition = FormStartPosition.CenterParent;
            Text = "Пользователи";
            Load += Users_Load;
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView dataGridView1;
        private Label labelLogin;
        private Label labelPass;
        private Label labelRole;
        private ComboBox RoleCombBox;
        private TextBox txtPas;
        private TextBox txtLLogin;
        private Button btnSave;
        private Button btnDelete;
        private Label labelFIO;
        private TextBox txtFIO;
        private DataGridViewTextBoxColumn id_user;
        private DataGridViewTextBoxColumn DTLogin;
        private DataGridViewTextBoxColumn RoleUser;
        private Button btnReserv;
        private Button btnVostan;
    }
}