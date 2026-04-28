namespace Praktika01Uvarov
{
    partial class Report
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
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            label5 = new Label();
            label6 = new Label();
            txtCurator = new TextBox();
            GroupCB = new ComboBox();
            dtS = new DateTimePicker();
            dtPO = new DateTimePicker();
            txtInfo = new TextBox();
            btForm = new Button();
            button2 = new Button();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(12, 15);
            label1.Name = "label1";
            label1.Size = new Size(58, 17);
            label1.TabIndex = 0;
            label1.Text = "Куратор";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(12, 49);
            label2.Name = "label2";
            label2.Size = new Size(49, 17);
            label2.TabIndex = 1;
            label2.Text = "Группа";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(12, 77);
            label3.Name = "label3";
            label3.Size = new Size(130, 17);
            label3.TabIndex = 2;
            label3.Text = "Период проведения";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(12, 105);
            label4.Name = "label4";
            label4.Size = new Size(14, 17);
            label4.TabIndex = 3;
            label4.Text = "с";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(12, 140);
            label5.Name = "label5";
            label5.Size = new Size(23, 17);
            label5.TabIndex = 4;
            label5.Text = "по";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(12, 177);
            label6.Name = "label6";
            label6.Size = new Size(188, 17);
            label6.TabIndex = 5;
            label6.Text = "Дополнительная информация";
            // 
            // txtCurator
            // 
            txtCurator.Location = new Point(76, 12);
            txtCurator.Name = "txtCurator";
            txtCurator.Size = new Size(230, 25);
            txtCurator.TabIndex = 6;
            txtCurator.KeyPress += txtCurator_KeyPress;
            // 
            // GroupCB
            // 
            GroupCB.FormattingEnabled = true;
            GroupCB.Location = new Point(76, 46);
            GroupCB.Name = "GroupCB";
            GroupCB.Size = new Size(230, 25);
            GroupCB.TabIndex = 7;
            GroupCB.SelectedIndexChanged += GroupCB_SelectedIndexChanged;
            // 
            // dtS
            // 
            dtS.Format = DateTimePickerFormat.Custom;
            dtS.Location = new Point(76, 99);
            dtS.Name = "dtS";
            dtS.Size = new Size(230, 25);
            dtS.TabIndex = 8;
            // 
            // dtPO
            // 
            dtPO.Format = DateTimePickerFormat.Custom;
            dtPO.Location = new Point(76, 134);
            dtPO.Name = "dtPO";
            dtPO.Size = new Size(230, 25);
            dtPO.TabIndex = 9;
            // 
            // txtInfo
            // 
            txtInfo.Location = new Point(12, 197);
            txtInfo.Multiline = true;
            txtInfo.Name = "txtInfo";
            txtInfo.Size = new Size(294, 117);
            txtInfo.TabIndex = 10;
            // 
            // btForm
            // 
            btForm.FlatStyle = FlatStyle.Flat;
            btForm.Location = new Point(12, 328);
            btForm.Name = "btForm";
            btForm.Size = new Size(145, 44);
            btForm.TabIndex = 11;
            btForm.Text = "Сформировать отчёт";
            btForm.UseVisualStyleBackColor = true;
            btForm.Click += btForm_Click;
            // 
            // button2
            // 
            button2.FlatStyle = FlatStyle.Flat;
            button2.Location = new Point(163, 328);
            button2.Name = "button2";
            button2.Size = new Size(143, 44);
            button2.TabIndex = 12;
            button2.Text = "Отмена";
            button2.UseVisualStyleBackColor = true;
            button2.Click += button2_Click;
            // 
            // Report
            // 
            AutoScaleDimensions = new SizeF(7F, 17F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(316, 383);
            Controls.Add(button2);
            Controls.Add(btForm);
            Controls.Add(txtInfo);
            Controls.Add(dtPO);
            Controls.Add(dtS);
            Controls.Add(GroupCB);
            Controls.Add(txtCurator);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Font = new Font("Segoe UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 204);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Name = "Report";
            StartPosition = FormStartPosition.CenterParent;
            Text = "Формирование отчёта";
            Load += Report_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label label5;
        private Label label6;
        private Button btForm;
        private Button button2;
        public TextBox txtCurator;
        public ComboBox GroupCB;
        public DateTimePicker dtS;
        public DateTimePicker dtPO;
        public TextBox txtInfo;
    }
}