
namespace WindowsFormsApp
{
    partial class UC_ReportHangTon
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.DataTable3BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.DataSet1 = new WindowsFormsApp.DataSet1();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnQuaylai = new FontAwesome.Sharp.IconButton();
            this.panel2 = new System.Windows.Forms.Panel();
            this.lblTk = new System.Windows.Forms.Label();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            ((System.ComponentModel.ISupportInitialize)(this.DataTable3BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSet1)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // DataTable3BindingSource
            // 
            this.DataTable3BindingSource.DataMember = "DataTable3";
            this.DataTable3BindingSource.DataSource = this.DataSet1;
            // 
            // DataSet1
            // 
            this.DataSet1.DataSetName = "DataSet1";
            this.DataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnQuaylai);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Controls.Add(this.reportViewer1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1254, 834);
            this.panel1.TabIndex = 0;
            // 
            // btnQuaylai
            // 
            this.btnQuaylai.BackColor = System.Drawing.SystemColors.ControlLight;
            this.btnQuaylai.FlatAppearance.BorderSize = 0;
            this.btnQuaylai.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnQuaylai.Font = new System.Drawing.Font("Times New Roman", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnQuaylai.ForeColor = System.Drawing.Color.Gray;
            this.btnQuaylai.IconChar = FontAwesome.Sharp.IconChar.ArrowAltCircleLeft;
            this.btnQuaylai.IconColor = System.Drawing.Color.Gray;
            this.btnQuaylai.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnQuaylai.IconSize = 35;
            this.btnQuaylai.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnQuaylai.Location = new System.Drawing.Point(2, 59);
            this.btnQuaylai.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnQuaylai.Name = "btnQuaylai";
            this.btnQuaylai.Padding = new System.Windows.Forms.Padding(8, 0, 0, 0);
            this.btnQuaylai.Size = new System.Drawing.Size(71, 40);
            this.btnQuaylai.TabIndex = 224;
            this.btnQuaylai.Text = "        ";
            this.btnQuaylai.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnQuaylai.UseVisualStyleBackColor = false;
            this.btnQuaylai.Click += new System.EventHandler(this.btnQuaylai_Click);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.White;
            this.panel2.Controls.Add(this.lblTk);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1254, 54);
            this.panel2.TabIndex = 223;
            // 
            // lblTk
            // 
            this.lblTk.AutoSize = true;
            this.lblTk.Font = new System.Drawing.Font("Sitka Banner", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTk.Location = new System.Drawing.Point(12, 10);
            this.lblTk.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblTk.Name = "lblTk";
            this.lblTk.Size = new System.Drawing.Size(196, 29);
            this.lblTk.TabIndex = 14;
            this.lblTk.Text = "Xuất báo giá hàng hóa\r\n";
            // 
            // reportViewer1
            // 
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.DataTable3BindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "WindowsFormsApp.Report.ReportHangTon.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(245, 58);
            this.reportViewer1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(777, 776);
            this.reportViewer1.TabIndex = 222;
            // 
            // UC_ReportHangTon
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(120F, 120F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.BackColor = System.Drawing.SystemColors.ControlLight;
            this.Controls.Add(this.panel1);
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "UC_ReportHangTon";
            this.Size = new System.Drawing.Size(1254, 834);
            ((System.ComponentModel.ISupportInitialize)(this.DataTable3BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSet1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.BindingSource DataTable3BindingSource;
        private DataSet1 DataSet1;
        private System.Windows.Forms.Panel panel1;
        private FontAwesome.Sharp.IconButton btnQuaylai;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label lblTk;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
    }
}
