using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace QLDT
{
    public partial class ASK_FORM : Form
    {
        string query;
        public ASK_FORM()
        {
            InitializeComponent();
            
        }

        private void btnAdvanced_Click(object sender, EventArgs e)
        {
            if (pnlAdvance.Visible == true)
            {
                pnlAdvance.Visible = false;
                this.MinimumSize = new Size(this.Width, this.Height - pnlAdvance.Height);
                this.Height = this.Height - pnlAdvance.Height;
            }
            else if (pnlAdvance.Visible == false)
            {
                pnlAdvance.Visible = true;
                //this.Height = this.Height + pnlAdvance.Height;
                //this.MinimumSize = new Size(this.Width, this.Height);
            }
        }

        private void rbtnS1_CheckedChanged(object sender, EventArgs e)
        {
            gbQuestion.Enabled = true;
            gbSearch.Enabled = false;
        }

        private void rbtnS2_CheckedChanged(object sender, EventArgs e)
        {
            gbQuestion.Enabled = false;
            gbSearch.Enabled = true;
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            query = "Select * From [QLDT].[dbo].[cosodaotao] WHERE [QLDT].[dbo].[cosodaotao].TenTruong like N'%" + txtBoxSearch.Text + "%'";
            SHOW_FORM sf = new SHOW_FORM(query);
            sf.Show();
        }

        private void llblQ1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //Các trường đào tạo CNTT ?
            query = "Select * From [QLDT].[dbo].[cosodaotao] WHERE [QLDT].[dbo].[cosodaotao].TenTruong like N'%" + txtBoxSearch.Text + "%'";
            SHOW_FORM sf = new SHOW_FORM(query);
            sf.Show();
        }

        private void llblQ2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //new SHOW_FORM().Show(query);
        }

        private void llblQ3_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //new SHOW_FORM().Show(query);
        }

       
       

        

        

       
    }
}
