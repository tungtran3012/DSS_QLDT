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
        public SHOW_FORM(string query)
        {
            InitializeComponent();
            ShowResult(query);
        }

        public void ShowResult(string query)
        {
            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            DataTable dt = new DataTable();
            
            SqlDataAdapter SDA = new SqlDataAdapter(query, conn);
            //DialogResult result = MessageBox.Show(query, "Print");
            SDA.Fill(dt);
            dataGridView1.DataSource = dt;
            dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
        }


        private void SHOW_FORM_FormClosing(object sender, FormClosingEventArgs e)
        {
            QLDT_MAIN qldt = new QLDT_MAIN();
            //DialogResult result = MessageBox.Show("DA TAT", "Print");
                
        }
    }
}
