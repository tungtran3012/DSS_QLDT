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
        public QLDT_MAIN()
        {
            InitializeComponent();
        }

        private void btnHien_Click(object sender, EventArgs e)
        {
            new SHOW_FORM().Show();
        }

        private void btnAsk_Click(object sender, EventArgs e)
        {
            new ASK_FORM().Show();
        }

        
    }
}
