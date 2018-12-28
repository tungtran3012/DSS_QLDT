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
    public partial class ASK_FORM : Form
    {
        bool advanceClicked = false;
        string query;
        public ASK_FORM()
        {
            InitializeComponent();
            
        }

        private void btnAdvanced_Click(object sender, EventArgs e)
        {
            advanceClicked = true;
            loadToComboBox(cbbTinhThanh, getItem("TinhThanh"));
            loadToComboBox(cbbDVChuQuan, getItem("DVChuQuan"));
            if (pnlAdvance.Visible == true)
            {
                pnlAdvance.Visible = false;
                //this.MinimumSize = new Size(this.Width, this.Height - pnlAdvance.Height);
                //this.Height = this.Height - pnlAdvance.Height;
            }
            else if (pnlAdvance.Visible == false)
            {
                pnlAdvance.Visible = true;
                //this.Height = this.Height + pnlAdvance.Height;
                //this.MinimumSize = new Size(this.Width, this.Height);
            }
        }
        private void loadToComboBox(ComboBox cbb, List<String> list)
        {
            for (int i = 0; i < list.Count; i++)
            {
                ComboboxItem item = new ComboboxItem();
                item.Text = list.ElementAt(i);
                item.Value = i;
                cbb.Items.Add(item);
            }
            cbb.SelectedIndex = 0;
        }
        private List<String> getItem(String conditionQuery)
        {
            var list = new List<String>();
            list.Add("None");
            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            conn.Open();
            string sql = "SELECT * FROM [QLDT_V1].[dbo].[cosodaotao]";
            using (var command = new SqlCommand(sql, conn))
            {
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        bool isContain = false;
                        String item = reader[conditionQuery].ToString();
                        for (int i = 0; i < list.Count; i++)
                        {
                            if (item.Equals(list.ElementAt(i)))
                            {
                                isContain = true;
                                break;
                            }
                        }
                        if (!isContain)
                        {
                            list.Add(item);
                        }
                    }
                }
            }
            return list;
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
            SearchByTxtBox();
        }
        
        private void SearchByTxtBox() {
            //query = "Select * From [QLDT_V1].[dbo].[cosodaotao] WHERE [QLDT_V1].[dbo].[cosodaotao].TenTruong like N'%" + txtBoxSearch.Text + "%'";
            if (txtBoxSearch.Text != "") {
                String input = txtBoxSearch.Text;
                String query;
                if (!advanceClicked)
                {
                    query = "Select * From [QLDT_V1].[dbo].[cosodaotao] WHERE TenTruong LIKE N'%" + input + "%'";
                }
                else
                {
                    String cbbTextTinhThanh = cbbTinhThanh.SelectedItem.ToString();
                    String cbbTextDVChuQuan = cbbDVChuQuan.SelectedItem.ToString();
                    if (cbbTextDVChuQuan.Equals("None"))
                        cbbTextDVChuQuan = "";
                    if (cbbTextTinhThanh.Equals("None"))
                        cbbTextTinhThanh = "";
                    query = "Select * From [QLDT_V1].[dbo].[cosodaotao] WHERE TenTruong LIKE N'%" + input + "%' AND TinhThanh LIKE N'%" + cbbTextTinhThanh + "%' AND DVChuQuan LIKE N'%" + cbbTextDVChuQuan + "%';";
                }
                ShowResultInSHOW_FORM(query);
            }
            
        }

        private void txtBoxSearch_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                SearchByTxtBox();
            }
        }
        private void ShowResultInSHOW_FORM(string query)
        {
            SHOW_FORM sf = new SHOW_FORM(query);
            sf.ShowDialog();
        }
        private void llblQ1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //Các trường đào tạo CNTT ?
            query = "Select * From [QLDT_V1].[dbo].[cosodaotao]";
            ShowResultInSHOW_FORM(query);
        }

        private void llblQ2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            query = "SELECT [QLDT_V1].[dbo].[cosodaotao].DVChuquan,COUNT(*) as 'Số trường' FROM [QLDT_V1].[dbo].[cosodaotao] group by [QLDT_V1].[dbo].[cosodaotao].DVChuquan";
            ShowResultInSHOW_FORM(query);
        }

        private void llblQ3_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            query = "SELECT [QLDT_V1].[dbo].[cosodaotao].[TenTruong] ,[QLDT_V1].[dbo].[chuyennganhdaotao].[MaNganh] ,[QLDT_V1].[dbo].[chuyennganhdaotao].[TenChuyenNganh] ,[QLDT_V1].[dbo].[cosonganh].[DiemChuan] FROM [QLDT_V1].[dbo].[chuyennganhdaotao],[QLDT_V1].[dbo].[cosonganh],[QLDT_V1].[dbo].[cosodaotao] WHERE [QLDT_V1].[dbo].[chuyennganhdaotao].MaNganh=[QLDT_V1].[dbo].[cosonganh].MaNganh AND [QLDT_V1].[dbo].[cosonganh].[MaTruong]=[QLDT_V1].[dbo].[cosodaotao].[MaTruong]";
            ShowResultInSHOW_FORM(query);
        }
        private void llblQ4_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //Các chuyên ngành đào tạo công nghệ thông tin
            query = "Select * From [QLDT_V1].[dbo].[chuyennganhdaotao]";
            ShowResultInSHOW_FORM(query);
        }
        private void llblQ5_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //Các cơ sở đào tạo tại Tp.HCM
            query = "SELECT * FROM [QLDT_V1].[dbo].[cosodaotao] WHERE TinhThanh=N'TP. Hồ Chí Minh'";
            ShowResultInSHOW_FORM(query);
        }
        private void llblQ6_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //Các cơ sở đào tạo tại Hà Nội
            query = "SELECT * FROM [QLDT_V1].[dbo].[cosodaotao] WHERE TinhThanh=N'Hà Nội'";
            ShowResultInSHOW_FORM(query);
        }

        private void llblQ7_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //Chỉ tiêu các trường
            query = "SELECT [QLDT_V1].[dbo].[cosonganh].[MaTruong] ,[QLDT_V1].[dbo].[cosodaotao].[TenTruong] ,[QLDT_V1].[dbo].[cosonganh].[ChiTieu] FROM [QLDT_V1].[dbo].[cosonganh],[QLDT_V1].[dbo].[cosodaotao] WHERE [QLDT_V1].[dbo].[cosonganh].[MaTruong]=[QLDT_V1].[dbo].[cosodaotao].[MaTruong]";
            ShowResultInSHOW_FORM(query);
        }

        private void llblQ8_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            query = "SELECT [QLDT_V1].[dbo].[cosodaotao].[TinhThanh] ,COUNT([QLDT_V1].[dbo].[cosodaotao].[TenTruong]) as SLDV FROM [QLDT_V1].[dbo].[cosodaotao] Group by [QLDT_V1].[dbo].[cosodaotao].[TinhThanh]";
            ShowResultInSHOW_FORM(query);
        }
    }
    public class ComboboxItem
    {
        public string Text { get; set; }
        public object Value { get; set; }

        public override string ToString()
        {
            return Text;
        }
    }
}

