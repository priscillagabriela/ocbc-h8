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
    public partial class Form1 : Form
    {
        Config db = new Config();
        public Form1()
        {
            InitializeComponent();
            db.Connect("userdata");
        }

        private void Btnlogin_Click(object sender, EventArgs e)
        {
            db.ExecuteSelect("SELECT * FROM `user_info` where username='" + Txtusername.Text + "' and password ='" + Txtpassword.Text + "'");

            if (db.Count() == 1)
            {
                MessageBox.Show("Success You will Login as " + db.Results(0, "names"));
            }
            else
            {
                MessageBox.Show("Wrong username and password combination");
            }
        }

        private void Btnexit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btnregister_Click(object sender, EventArgs e)
        {
            Register register = new Register();

            register.Show();
        }

    }
}
