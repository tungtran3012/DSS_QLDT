using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace QLDT
{
    public partial class SHOW_FORM : Form
    {
        public SHOW_FORM()
        {
            InitializeComponent();
        }

        private void btnShow_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-RB4V9TR\\SQLEXPRESS;Initial Catalog=QLDT;Integrated Security=True");
            DataTable dt = new DataTable();
            string query = "Select * From [QLDT].[dbo].[cosodaotao]";
            SqlDataAdapter SDA = new SqlDataAdapter(query, conn);
            //DialogResult result = MessageBox.Show(query, "Print");
            SDA.Fill(dt);
            dataGridView1.DataSource = dt;
        }
    }
}
