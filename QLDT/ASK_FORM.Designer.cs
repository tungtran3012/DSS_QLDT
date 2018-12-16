namespace QLDT
{
    partial class ASK_FORM
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
            this.llblQ2 = new System.Windows.Forms.LinkLabel();
            this.gbQuestion = new System.Windows.Forms.GroupBox();
            this.llblQ3 = new System.Windows.Forms.LinkLabel();
            this.llblQ1 = new System.Windows.Forms.LinkLabel();
            this.rbtnS1 = new System.Windows.Forms.RadioButton();
            this.rbtnS2 = new System.Windows.Forms.RadioButton();
            this.lblNameUniver = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.pnlAdvance = new System.Windows.Forms.Panel();
            this.comboBox2 = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnAdvanced = new System.Windows.Forms.Button();
            this.gbSearch = new System.Windows.Forms.GroupBox();
            this.gbQuestion.SuspendLayout();
            this.pnlAdvance.SuspendLayout();
            this.gbSearch.SuspendLayout();
            this.SuspendLayout();
            // 
            // llblQ2
            // 
            this.llblQ2.AutoSize = true;
            this.llblQ2.Location = new System.Drawing.Point(79, 91);
            this.llblQ2.Name = "llblQ2";
            this.llblQ2.Size = new System.Drawing.Size(176, 13);
            this.llblQ2.TabIndex = 0;
            this.llblQ2.TabStop = true;
            this.llblQ2.Text = "Địa Chỉ các trường đào tạo CNTT ?";
            this.llblQ2.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblQ2_LinkClicked);
            // 
            // gbQuestion
            // 
            this.gbQuestion.Controls.Add(this.llblQ3);
            this.gbQuestion.Controls.Add(this.llblQ1);
            this.gbQuestion.Controls.Add(this.llblQ2);
            this.gbQuestion.Enabled = false;
            this.gbQuestion.Location = new System.Drawing.Point(52, 34);
            this.gbQuestion.Name = "gbQuestion";
            this.gbQuestion.Size = new System.Drawing.Size(516, 182);
            this.gbQuestion.TabIndex = 1;
            this.gbQuestion.TabStop = false;
            this.gbQuestion.Text = "QUESTION";
            // 
            // llblQ3
            // 
            this.llblQ3.AutoSize = true;
            this.llblQ3.Location = new System.Drawing.Point(79, 130);
            this.llblQ3.Name = "llblQ3";
            this.llblQ3.Size = new System.Drawing.Size(181, 13);
            this.llblQ3.TabIndex = 2;
            this.llblQ3.TabStop = true;
            this.llblQ3.Text = "Website các trường đào tạo CNTT ?";
            this.llblQ3.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblQ3_LinkClicked);
            // 
            // llblQ1
            // 
            this.llblQ1.AutoSize = true;
            this.llblQ1.Location = new System.Drawing.Point(79, 46);
            this.llblQ1.Name = "llblQ1";
            this.llblQ1.Size = new System.Drawing.Size(140, 13);
            this.llblQ1.TabIndex = 1;
            this.llblQ1.TabStop = true;
            this.llblQ1.Text = "Các trường đào tạo CNTT ?";
            this.llblQ1.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblQ1_LinkClicked);
            // 
            // rbtnS1
            // 
            this.rbtnS1.AutoSize = true;
            this.rbtnS1.Location = new System.Drawing.Point(39, 12);
            this.rbtnS1.Name = "rbtnS1";
            this.rbtnS1.Size = new System.Drawing.Size(133, 17);
            this.rbtnS1.TabIndex = 2;
            this.rbtnS1.TabStop = true;
            this.rbtnS1.Text = "DEFAULT QUESTION";
            this.rbtnS1.UseVisualStyleBackColor = true;
            this.rbtnS1.CheckedChanged += new System.EventHandler(this.rbtnS1_CheckedChanged);
            // 
            // rbtnS2
            // 
            this.rbtnS2.AutoSize = true;
            this.rbtnS2.Location = new System.Drawing.Point(39, 231);
            this.rbtnS2.Name = "rbtnS2";
            this.rbtnS2.Size = new System.Drawing.Size(72, 17);
            this.rbtnS2.TabIndex = 3;
            this.rbtnS2.TabStop = true;
            this.rbtnS2.Text = "SEARCH ";
            this.rbtnS2.UseVisualStyleBackColor = true;
            this.rbtnS2.CheckedChanged += new System.EventHandler(this.rbtnS2_CheckedChanged);
            // 
            // lblNameUniver
            // 
            this.lblNameUniver.AutoSize = true;
            this.lblNameUniver.Location = new System.Drawing.Point(27, 19);
            this.lblNameUniver.Name = "lblNameUniver";
            this.lblNameUniver.Size = new System.Drawing.Size(59, 13);
            this.lblNameUniver.TabIndex = 4;
            this.lblNameUniver.Text = "Tên trường";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(103, 15);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(254, 20);
            this.textBox1.TabIndex = 5;
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(371, 15);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(75, 23);
            this.btnSearch.TabIndex = 6;
            this.btnSearch.Text = "Search";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // pnlAdvance
            // 
            this.pnlAdvance.Controls.Add(this.comboBox2);
            this.pnlAdvance.Controls.Add(this.label2);
            this.pnlAdvance.Controls.Add(this.comboBox1);
            this.pnlAdvance.Controls.Add(this.label1);
            this.pnlAdvance.Location = new System.Drawing.Point(27, 75);
            this.pnlAdvance.Name = "pnlAdvance";
            this.pnlAdvance.Size = new System.Drawing.Size(448, 137);
            this.pnlAdvance.TabIndex = 7;
            this.pnlAdvance.Visible = false;
            // 
            // comboBox2
            // 
            this.comboBox2.FormattingEnabled = true;
            this.comboBox2.Location = new System.Drawing.Point(123, 66);
            this.comboBox2.Name = "comboBox2";
            this.comboBox2.Size = new System.Drawing.Size(138, 21);
            this.comboBox2.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(19, 69);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(92, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Đơn vị chủ quản :";
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(123, 25);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(138, 21);
            this.comboBox1.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(21, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(68, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tỉnh Thành :";
            // 
            // btnAdvanced
            // 
            this.btnAdvanced.Location = new System.Drawing.Point(27, 45);
            this.btnAdvanced.Name = "btnAdvanced";
            this.btnAdvanced.Size = new System.Drawing.Size(75, 23);
            this.btnAdvanced.TabIndex = 8;
            this.btnAdvanced.Text = "Advanced";
            this.btnAdvanced.UseVisualStyleBackColor = true;
            this.btnAdvanced.Click += new System.EventHandler(this.btnAdvanced_Click);
            // 
            // gbSearch
            // 
            this.gbSearch.Controls.Add(this.textBox1);
            this.gbSearch.Controls.Add(this.btnAdvanced);
            this.gbSearch.Controls.Add(this.lblNameUniver);
            this.gbSearch.Controls.Add(this.btnSearch);
            this.gbSearch.Controls.Add(this.pnlAdvance);
            this.gbSearch.Enabled = false;
            this.gbSearch.Location = new System.Drawing.Point(52, 254);
            this.gbSearch.Name = "gbSearch";
            this.gbSearch.Size = new System.Drawing.Size(516, 214);
            this.gbSearch.TabIndex = 9;
            this.gbSearch.TabStop = false;
            this.gbSearch.Text = "SEARCH ";
            // 
            // ASK_FORM
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(604, 480);
            this.Controls.Add(this.gbSearch);
            this.Controls.Add(this.rbtnS2);
            this.Controls.Add(this.rbtnS1);
            this.Controls.Add(this.gbQuestion);
            this.MinimizeBox = false;
            this.Name = "ASK_FORM";
            this.Text = "ASK_FORM";
            this.gbQuestion.ResumeLayout(false);
            this.gbQuestion.PerformLayout();
            this.pnlAdvance.ResumeLayout(false);
            this.pnlAdvance.PerformLayout();
            this.gbSearch.ResumeLayout(false);
            this.gbSearch.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.LinkLabel llblQ2;
        private System.Windows.Forms.GroupBox gbQuestion;
        private System.Windows.Forms.LinkLabel llblQ1;
        private System.Windows.Forms.LinkLabel llblQ3;
        private System.Windows.Forms.RadioButton rbtnS1;
        private System.Windows.Forms.RadioButton rbtnS2;
        private System.Windows.Forms.Label lblNameUniver;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Panel pnlAdvance;
        private System.Windows.Forms.Button btnAdvanced;
        private System.Windows.Forms.GroupBox gbSearch;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboBox2;
        private System.Windows.Forms.Label label2;
    }
}