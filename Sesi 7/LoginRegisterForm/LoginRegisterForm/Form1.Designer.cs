
namespace LoginRegisterForm
{
    partial class Form1
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
            this.Lblpassword = new System.Windows.Forms.Label();
            this.Lblusername = new System.Windows.Forms.Label();
            this.Txtusername = new System.Windows.Forms.TextBox();
            this.Txtpassword = new System.Windows.Forms.TextBox();
            this.Btnlogin = new System.Windows.Forms.Button();
            this.Btnexit = new System.Windows.Forms.Button();
            this.Label1 = new System.Windows.Forms.Label();
            this.Btnregister = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.Lbllogin = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // Lblpassword
            // 
            this.Lblpassword.AutoSize = true;
            this.Lblpassword.Location = new System.Drawing.Point(86, 87);
            this.Lblpassword.Name = "Lblpassword";
            this.Lblpassword.Size = new System.Drawing.Size(55, 13);
            this.Lblpassword.TabIndex = 0;
            this.Lblpassword.Text = "Username";
            // 
            // Lblusername
            // 
            this.Lblusername.AutoSize = true;
            this.Lblusername.Location = new System.Drawing.Point(86, 126);
            this.Lblusername.Name = "Lblusername";
            this.Lblusername.Size = new System.Drawing.Size(53, 13);
            this.Lblusername.TabIndex = 1;
            this.Lblusername.Text = "Password";
            // 
            // Txtusername
            // 
            this.Txtusername.Location = new System.Drawing.Point(191, 80);
            this.Txtusername.Name = "Txtusername";
            this.Txtusername.Size = new System.Drawing.Size(100, 20);
            this.Txtusername.TabIndex = 2;
            // 
            // Txtpassword
            // 
            this.Txtpassword.Location = new System.Drawing.Point(191, 123);
            this.Txtpassword.Name = "Txtpassword";
            this.Txtpassword.Size = new System.Drawing.Size(100, 20);
            this.Txtpassword.TabIndex = 3;
            // 
            // Btnlogin
            // 
            this.Btnlogin.Location = new System.Drawing.Point(110, 178);
            this.Btnlogin.Name = "Btnlogin";
            this.Btnlogin.Size = new System.Drawing.Size(75, 23);
            this.Btnlogin.TabIndex = 4;
            this.Btnlogin.Text = "Login";
            this.Btnlogin.UseVisualStyleBackColor = true;
            this.Btnlogin.Click += new System.EventHandler(this.Btnlogin_Click);
            // 
            // Btnexit
            // 
            this.Btnexit.Location = new System.Drawing.Point(191, 178);
            this.Btnexit.Name = "Btnexit";
            this.Btnexit.Size = new System.Drawing.Size(75, 23);
            this.Btnexit.TabIndex = 5;
            this.Btnexit.Text = "Exit";
            this.Btnexit.UseVisualStyleBackColor = true;
            this.Btnexit.Click += new System.EventHandler(this.Btnexit_Click);
            // 
            // Label1
            // 
            this.Label1.AutoSize = true;
            this.Label1.Location = new System.Drawing.Point(96, 231);
            this.Label1.Name = "Label1";
            this.Label1.Size = new System.Drawing.Size(106, 13);
            this.Label1.TabIndex = 6;
            this.Label1.Text = "Buat akun baru? Klik";
            // 
            // Btnregister
            // 
            this.Btnregister.Location = new System.Drawing.Point(208, 226);
            this.Btnregister.Name = "Btnregister";
            this.Btnregister.Size = new System.Drawing.Size(75, 23);
            this.Btnregister.TabIndex = 7;
            this.Btnregister.Text = "Register";
            this.Btnregister.UseVisualStyleBackColor = true;
            this.Btnregister.Click += new System.EventHandler(this.Btnregister_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.panel1.Controls.Add(this.Lbllogin);
            this.panel1.Location = new System.Drawing.Point(-2, -1);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(410, 51);
            this.panel1.TabIndex = 8;
            // 
            // Lbllogin
            // 
            this.Lbllogin.AutoSize = true;
            this.Lbllogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbllogin.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Lbllogin.Location = new System.Drawing.Point(173, 21);
            this.Lbllogin.Name = "Lbllogin";
            this.Lbllogin.Size = new System.Drawing.Size(53, 20);
            this.Lbllogin.TabIndex = 0;
            this.Lbllogin.Text = "Login";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(403, 281);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.Btnregister);
            this.Controls.Add(this.Label1);
            this.Controls.Add(this.Btnexit);
            this.Controls.Add(this.Btnlogin);
            this.Controls.Add(this.Txtpassword);
            this.Controls.Add(this.Txtusername);
            this.Controls.Add(this.Lblusername);
            this.Controls.Add(this.Lblpassword);
            this.Name = "Form1";
            this.Text = "Form1";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Lblpassword;
        private System.Windows.Forms.Label Lblusername;
        private System.Windows.Forms.TextBox Txtusername;
        private System.Windows.Forms.TextBox Txtpassword;
        private System.Windows.Forms.Button Btnlogin;
        private System.Windows.Forms.Button Btnexit;
        private System.Windows.Forms.Label Label1;
        private System.Windows.Forms.Button Btnregister;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label Lbllogin;
    }
}