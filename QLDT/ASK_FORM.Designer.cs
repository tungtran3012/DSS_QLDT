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
            this.gbQuestion = new System.Windows.Forms.GroupBox();
            this.llblQ2 = new System.Windows.Forms.LinkLabel();
            this.llblQ3 = new System.Windows.Forms.LinkLabel();
            this.llblQ5 = new System.Windows.Forms.LinkLabel();
            this.llblQ8 = new System.Windows.Forms.LinkLabel();
            this.llblQ7 = new System.Windows.Forms.LinkLabel();
            this.llblQ6 = new System.Windows.Forms.LinkLabel();
            this.llblQ4 = new System.Windows.Forms.LinkLabel();
            this.llblQ1 = new System.Windows.Forms.LinkLabel();
            this.rbtnS1 = new System.Windows.Forms.RadioButton();
            this.rbtnS2 = new System.Windows.Forms.RadioButton();
            this.lblNameUniver = new System.Windows.Forms.Label();
            this.txtBoxSearch = new System.Windows.Forms.TextBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.pnlAdvance = new System.Windows.Forms.Panel();
            this.cbbDVChuQuan = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cbbTinhThanh = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnAdvanced = new System.Windows.Forms.Button();
            this.gbSearch = new System.Windows.Forms.GroupBox();
            this.gbQuestion.SuspendLayout();
            this.pnlAdvance.SuspendLayout();
            this.gbSearch.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbQuestion
            // 
            this.gbQuestion.Controls.Add(this.llblQ2);
            this.gbQuestion.Controls.Add(this.llblQ3);
            this.gbQuestion.Controls.Add(this.llblQ5);
            this.gbQuestion.Controls.Add(this.llblQ8);
            this.gbQuestion.Controls.Add(this.llblQ7);
            this.gbQuestion.Controls.Add(this.llblQ6);
            this.gbQuestion.Controls.Add(this.llblQ4);
            this.gbQuestion.Controls.Add(this.llblQ1);
            this.gbQuestion.Enabled = false;
            this.gbQuestion.Location = new System.Drawing.Point(52, 34);
            this.gbQuestion.Name = "gbQuestion";
            this.gbQuestion.Size = new System.Drawing.Size(516, 182);
            this.gbQuestion.TabIndex = 1;
            this.gbQuestion.TabStop = false;
            this.gbQuestion.Text = "GỢI Ý";
            // 
            // llblQ2
            // 
            this.llblQ2.AutoSize = true;
            this.llblQ2.LinkBehavior = System.Windows.Forms.LinkBehavior.NeverUnderline;
            this.llblQ2.Location = new System.Drawing.Point(27, 61);
            this.llblQ2.Name = "llblQ2";
            this.llblQ2.Size = new System.Drawing.Size(188, 13);
            this.llblQ2.TabIndex = 10;
            this.llblQ2.TabStop = true;
            this.llblQ2.Text = "Số cơ sở đào tạo theo DV chủ quản ?";
            this.llblQ2.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblQ2_LinkClicked);
            // 
            // llblQ3
            // 
            this.llblQ3.AutoSize = true;
            this.llblQ3.LinkBehavior = System.Windows.Forms.LinkBehavior.NeverUnderline;
            this.llblQ3.Location = new System.Drawing.Point(27, 95);
            this.llblQ3.Name = "llblQ3";
            this.llblQ3.Size = new System.Drawing.Size(222, 13);
            this.llblQ3.TabIndex = 9;
            this.llblQ3.TabStop = true;
            this.llblQ3.Text = "Điểm chuẩn từng chuyên ngành các trường ?";
            this.llblQ3.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblQ3_LinkClicked);
            // 
            // llblQ5
            // 
            this.llblQ5.AutoSize = true;
            this.llblQ5.LinkBehavior = System.Windows.Forms.LinkBehavior.NeverUnderline;
            this.llblQ5.Location = new System.Drawing.Point(299, 29);
            this.llblQ5.Name = "llblQ5";
            this.llblQ5.Size = new System.Drawing.Size(193, 13);
            this.llblQ5.TabIndex = 8;
            this.llblQ5.TabStop = true;
            this.llblQ5.Text = "Các cơ sở đào tạo CNTT tại Tp.HCM ?";
            this.llblQ5.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblQ5_LinkClicked);
            // 
            // llblQ8
            // 
            this.llblQ8.AutoSize = true;
            this.llblQ8.LinkBehavior = System.Windows.Forms.LinkBehavior.NeverUnderline;
            this.llblQ8.Location = new System.Drawing.Point(299, 129);
            this.llblQ8.Name = "llblQ8";
            this.llblQ8.Size = new System.Drawing.Size(198, 13);
            this.llblQ8.TabIndex = 7;
            this.llblQ8.TabStop = true;
            this.llblQ8.Text = "Số lượng cơ sở đào tạo các tỉnh thành ?";
            this.llblQ8.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblQ8_LinkClicked);
            // 
            // llblQ7
            // 
            this.llblQ7.AutoSize = true;
            this.llblQ7.LinkBehavior = System.Windows.Forms.LinkBehavior.NeverUnderline;
            this.llblQ7.Location = new System.Drawing.Point(299, 95);
            this.llblQ7.Name = "llblQ7";
            this.llblQ7.Size = new System.Drawing.Size(186, 13);
            this.llblQ7.TabIndex = 6;
            this.llblQ7.TabStop = true;
            this.llblQ7.Text = "Chỉ tiêu tuyển sinh tất cả các trường ?";
            this.llblQ7.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblQ7_LinkClicked);
            // 
            // llblQ6
            // 
            this.llblQ6.AutoSize = true;
            this.llblQ6.LinkBehavior = System.Windows.Forms.LinkBehavior.NeverUnderline;
            this.llblQ6.Location = new System.Drawing.Point(299, 61);
            this.llblQ6.Name = "llblQ6";
            this.llblQ6.Size = new System.Drawing.Size(186, 13);
            this.llblQ6.TabIndex = 4;
            this.llblQ6.TabStop = true;
            this.llblQ6.Text = "Các cơ sở đào tạo CNTT tại Hà Nội ?";
            this.llblQ6.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblQ6_LinkClicked);
            // 
            // llblQ4
            // 
            this.llblQ4.AutoSize = true;
            this.llblQ4.LinkBehavior = System.Windows.Forms.LinkBehavior.NeverUnderline;
            this.llblQ4.Location = new System.Drawing.Point(27, 129);
            this.llblQ4.Name = "llblQ4";
            this.llblQ4.Size = new System.Drawing.Size(178, 13);
            this.llblQ4.TabIndex = 3;
            this.llblQ4.TabStop = true;
            this.llblQ4.Text = "Các chuyên ngành đào tạo CNTT ?";
            this.llblQ4.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblQ4_LinkClicked);
            // 
            // llblQ1
            // 
            this.llblQ1.AutoSize = true;
            this.llblQ1.LinkBehavior = System.Windows.Forms.LinkBehavior.NeverUnderline;
            this.llblQ1.Location = new System.Drawing.Point(27, 29);
            this.llblQ1.Name = "llblQ1";
            this.llblQ1.Size = new System.Drawing.Size(187, 13);
            this.llblQ1.TabIndex = 1;
            this.llblQ1.TabStop = true;
            this.llblQ1.Text = "Thông tin các trường đào tạo CNTT ?";
            this.llblQ1.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblQ1_LinkClicked);
            // 
            // rbtnS1
            // 
            this.rbtnS1.AutoSize = true;
            this.rbtnS1.Location = new System.Drawing.Point(39, 12);
            this.rbtnS1.Name = "rbtnS1";
            this.rbtnS1.Size = new System.Drawing.Size(96, 17);
            this.rbtnS1.TabIndex = 2;
            this.rbtnS1.TabStop = true;
            this.rbtnS1.Text = "MẪU CÂU HỎI";
            this.rbtnS1.UseVisualStyleBackColor = true;
            this.rbtnS1.CheckedChanged += new System.EventHandler(this.rbtnS1_CheckedChanged);
            // 
            // rbtnS2
            // 
            this.rbtnS2.AutoSize = true;
            this.rbtnS2.Location = new System.Drawing.Point(39, 231);
            this.rbtnS2.Name = "rbtnS2";
            this.rbtnS2.Size = new System.Drawing.Size(73, 17);
            this.rbtnS2.TabIndex = 3;
            this.rbtnS2.TabStop = true;
            this.rbtnS2.Text = "TÌM KIẾM";
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
            // txtBoxSearch
            // 
            this.txtBoxSearch.Location = new System.Drawing.Point(103, 15);
            this.txtBoxSearch.Name = "txtBoxSearch";
            this.txtBoxSearch.Size = new System.Drawing.Size(254, 20);
            this.txtBoxSearch.TabIndex = 5;
            this.txtBoxSearch.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtBoxSearch_KeyDown);
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(371, 15);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(75, 23);
            this.btnSearch.TabIndex = 6;
            this.btnSearch.Text = "TÌM";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // pnlAdvance
            // 
            this.pnlAdvance.Controls.Add(this.cbbDVChuQuan);
            this.pnlAdvance.Controls.Add(this.label2);
            this.pnlAdvance.Controls.Add(this.cbbTinhThanh);
            this.pnlAdvance.Controls.Add(this.label1);
            this.pnlAdvance.Location = new System.Drawing.Point(27, 75);
            this.pnlAdvance.Name = "pnlAdvance";
            this.pnlAdvance.Size = new System.Drawing.Size(448, 137);
            this.pnlAdvance.TabIndex = 7;
            this.pnlAdvance.Visible = false;
            // 
            // cbbDVChuQuan
            // 
            this.cbbDVChuQuan.FormattingEnabled = true;
            this.cbbDVChuQuan.Location = new System.Drawing.Point(123, 66);
            this.cbbDVChuQuan.Name = "cbbDVChuQuan";
            this.cbbDVChuQuan.Size = new System.Drawing.Size(138, 21);
            this.cbbDVChuQuan.TabIndex = 3;
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
            // cbbTinhThanh
            // 
            this.cbbTinhThanh.FormattingEnabled = true;
            this.cbbTinhThanh.Location = new System.Drawing.Point(123, 25);
            this.cbbTinhThanh.Name = "cbbTinhThanh";
            this.cbbTinhThanh.Size = new System.Drawing.Size(138, 21);
            this.cbbTinhThanh.TabIndex = 1;
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
            this.btnAdvanced.Text = "NÂNG CAO";
            this.btnAdvanced.UseVisualStyleBackColor = true;
            this.btnAdvanced.Click += new System.EventHandler(this.btnAdvanced_Click);
            // 
            // gbSearch
            // 
            this.gbSearch.Controls.Add(this.txtBoxSearch);
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
            this.gbSearch.Text = "TIÊU CHÍ";
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
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MinimizeBox = false;
            this.Name = "ASK_FORM";
            this.Text = "TRUY VẤN";
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

        private System.Windows.Forms.GroupBox gbQuestion;
        private System.Windows.Forms.LinkLabel llblQ1;
        private System.Windows.Forms.RadioButton rbtnS1;
        private System.Windows.Forms.RadioButton rbtnS2;
        private System.Windows.Forms.Label lblNameUniver;
        private System.Windows.Forms.TextBox txtBoxSearch;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Panel pnlAdvance;
        private System.Windows.Forms.Button btnAdvanced;
        private System.Windows.Forms.GroupBox gbSearch;
        private System.Windows.Forms.ComboBox cbbTinhThanh;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbbDVChuQuan;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.LinkLabel llblQ8;
        private System.Windows.Forms.LinkLabel llblQ7;
        private System.Windows.Forms.LinkLabel llblQ6;
        private System.Windows.Forms.LinkLabel llblQ4;
        private System.Windows.Forms.LinkLabel llblQ5;
        private System.Windows.Forms.LinkLabel llblQ3;
        private System.Windows.Forms.LinkLabel llblQ2;
    }
}