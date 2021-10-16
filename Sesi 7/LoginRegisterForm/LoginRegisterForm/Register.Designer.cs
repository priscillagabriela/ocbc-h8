
namespace LoginRegisterForm
{
    partial class Register
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
            this.Btnregister = new System.Windows.Forms.Button();
            this.Btnexit = new System.Windows.Forms.Button();
            this.Lblnames = new System.Windows.Forms.Label();
            this.Lblusername = new System.Windows.Forms.Label();
            this.Lblpassword = new System.Windows.Forms.Label();
            this.Txtnames = new System.Windows.Forms.TextBox();
            this.Txtusername = new System.Windows.Forms.TextBox();
            this.Txtpassword = new System.Windows.Forms.TextBox();
            this.Label4 = new System.Windows.Forms.Label();
            this.Btnlogin = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.Lblregister = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // Btnregister
            // 
            this.Btnregister.Location = new System.Drawing.Point(132, 201);
            this.Btnregister.Name = "Btnregister";
            this.Btnregister.Size = new System.Drawing.Size(75, 23);
            this.Btnregister.TabIndex = 0;
            this.Btnregister.Text = "Register";
            this.Btnregister.UseVisualStyleBackColor = true;
            this.Btnregister.Click += new System.EventHandler(this.Btnregister_Click);
            // 
            // Btnexit
            // 
            this.Btnexit.Location = new System.Drawing.Point(223, 201);
            this.Btnexit.Name = "Btnexit";
            this.Btnexit.Size = new System.Drawing.Size(75, 23);
            this.Btnexit.TabIndex = 1;
            this.Btnexit.Text = "Exit";
            this.Btnexit.UseVisualStyleBackColor = true;
            this.Btnexit.Click += new System.EventHandler(this.Btnexit_Click);
            // 
            // Lblnames
            // 
            this.Lblnames.AutoSize = true;
            this.Lblnames.Location = new System.Drawing.Point(107, 91);
            this.Lblnames.Name = "Lblnames";
            this.Lblnames.Size = new System.Drawing.Size(40, 13);
            this.Lblnames.TabIndex = 2;
            this.Lblnames.Text = "Names";
            // 
            // Lblusername
            // 
            this.Lblusername.AutoSize = true;
            this.Lblusername.Location = new System.Drawing.Point(105, 124);
            this.Lblusername.Name = "Lblusername";
            this.Lblusername.Size = new System.Drawing.Size(55, 13);
            this.Lblusername.TabIndex = 3;
            this.Lblusername.Text = "Username";
            // 
            // Lblpassword
            // 
            this.Lblpassword.AutoSize = true;
            this.Lblpassword.Location = new System.Drawing.Point(105, 157);
            this.Lblpassword.Name = "Lblpassword";
            this.Lblpassword.Size = new System.Drawing.Size(53, 13);
            this.Lblpassword.TabIndex = 4;
            this.Lblpassword.Text = "Password";
            // 
            // Txtnames
            // 
            this.Txtnames.Location = new System.Drawing.Point(223, 84);
            this.Txtnames.Name = "Txtnames";
            this.Txtnames.Size = new System.Drawing.Size(100, 20);
            this.Txtnames.TabIndex = 5;
            // 
            // Txtusername
            // 
            this.Txtusername.Location = new System.Drawing.Point(223, 121);
            this.Txtusername.Name = "Txtusername";
            this.Txtusername.Size = new System.Drawing.Size(100, 20);
            this.Txtusername.TabIndex = 6;
            // 
            // Txtpassword
            // 
            this.Txtpassword.Location = new System.Drawing.Point(223, 154);
            this.Txtpassword.Name = "Txtpassword";
            this.Txtpassword.Size = new System.Drawing.Size(100, 20);
            this.Txtpassword.TabIndex = 7;
            // 
            // Label4
            // 
            this.Label4.AutoSize = true;
            this.Label4.Location = new System.Drawing.Point(107, 250);
            this.Label4.Name = "Label4";
            this.Label4.Size = new System.Drawing.Size(129, 13);
            this.Label4.TabIndex = 8;
            this.Label4.Text = "Sudah punya akun? Click";
            // 
            // Btnlogin
            // 
            this.Btnlogin.Location = new System.Drawing.Point(242, 245);
            this.Btnlogin.Name = "Btnlogin";
            this.Btnlogin.Size = new System.Drawing.Size(75, 23);
            this.Btnlogin.TabIndex = 9;
            this.Btnlogin.Text = "Login";
            this.Btnlogin.UseVisualStyleBackColor = true;
            this.Btnlogin.Click += new System.EventHandler(this.BtnLogin_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.panel1.Controls.Add(this.Lblregister);
            this.panel1.Location = new System.Drawing.Point(0, -1);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(446, 63);
            this.panel1.TabIndex = 10;
            // 
            // Lblregister
            // 
            this.Lblregister.AutoSize = true;
            this.Lblregister.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lblregister.Location = new System.Drawing.Point(176, 23);
            this.Lblregister.Name = "Lblregister";
            this.Lblregister.Size = new System.Drawing.Size(77, 20);
            this.Lblregister.TabIndex = 0;
            this.Lblregister.Text = "Register";
            // 
            // Register
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(445, 309);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.Btnlogin);
            this.Controls.Add(this.Label4);
            this.Controls.Add(this.Txtpassword);
            this.Controls.Add(this.Txtusername);
            this.Controls.Add(this.Txtnames);
            this.Controls.Add(this.Lblpassword);
            this.Controls.Add(this.Lblusername);
            this.Controls.Add(this.Lblnames);
            this.Controls.Add(this.Btnexit);
            this.Controls.Add(this.Btnregister);
            this.Name = "Register";
            this.Text = "Register";
            this.Load += new System.EventHandler(this.Register_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button Btnregister;
        private System.Windows.Forms.Button Btnexit;
        private System.Windows.Forms.Label Lblnames;
        private System.Windows.Forms.Label Lblusername;
        private System.Windows.Forms.Label Lblpassword;
        private System.Windows.Forms.TextBox Txtnames;
        private System.Windows.Forms.TextBox Txtusername;
        private System.Windows.Forms.TextBox Txtpassword;
        private System.Windows.Forms.Label Label4;
        private System.Windows.Forms.Button Btnlogin;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label Lblregister;
    }
}