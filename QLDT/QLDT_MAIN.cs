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
    public partial class QLDT_MAIN : Form
    {
        string query = "Select * From [QLDT_V1].[dbo].[cosodaotao]";
        public QLDT_MAIN()
        {
            InitializeComponent();
        }

        private void btnShow_Click(object sender, EventArgs e)
        {
            SHOW_FORM sf = new SHOW_FORM(query);
            sf.Show();
            btnShow.Enabled = false;
        }

        private void btnAsk_Click(object sender, EventArgs e)
        {
            new ASK_FORM().Show();
            btnAsk.Enabled = false;
        }
        public void ActiveBtnShow() {
            //InitializeComponent();
            btnShow.Enabled = true;
            //DialogResult result = MessageBox.Show(btnShow.Enabled.ToString(), "Print");
        }
        public void ActiveBtnAsk()
        {
            btnAsk.Enabled = true;
        }
    }
}
