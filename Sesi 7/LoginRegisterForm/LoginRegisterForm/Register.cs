using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LoginRegisterForm
{
    public partial class Register : Form
    {
        Config db = new Config();
        public Register()
        {
            InitializeComponent();
            db.Connect("userdata");
        }

        private void Register_Load(object sender, EventArgs e)
        {

        }

        private void Btnexit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btnregister_Click(object sender, EventArgs e)
        {
            db.Execute("INSERT INTO `user_info` (`id`,`names`,`username`,`password`) VALUES (NULL, '" + Txtnames.Text + "','" + Txtusername.Text + "','" + Txtpassword.Text + "');");

            this.Close();
        }

        private void BtnLogin_Click(object sender, EventArgs e)
        {
            Form1 login = new Form1();
            login.Show();
        }

    }
}
