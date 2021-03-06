########################################################################################################################################
#<Description>                                                                                                                         #
#This script will get following items:                                                                                                 #
#>Virus Total API key, score and evaluation duration.                                                                                  #
#>SQL details to fetch DB data or ET Search 8/9.                                                                                       #
#>SMTP Details for sending mail.                                                                                                       #
#                                                                                                                                      #
#<Output>                                                                                                                              #
#>XML configuraiton file will be created in scrpt path.                                                                                #
#                                                                                                                                      #
#CreatedBy:kumarnitesh@eventtracker.com                                                                                                #
#Created On:04/12/18                                                                                                                   #
########################################################################################################################################
########################################################################################################################################

$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
########################################################################

#Generated Form Function
function GenerateForm {
#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
[System.Windows.Forms.Application]::EnableVisualStyles()
#endregion

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form
$tabControl1 = New-Object System.Windows.Forms.TabControl
$tabPage1 = New-Object System.Windows.Forms.TabPage
$panel2 = New-Object System.Windows.Forms.Panel
$richTextBox1 = New-Object System.Windows.Forms.RichTextBox
$groupBox1 = New-Object System.Windows.Forms.GroupBox
$groupBox3 = New-Object System.Windows.Forms.GroupBox
$label13 = New-Object System.Windows.Forms.Label
$label14 = New-Object System.Windows.Forms.Label
$label15 = New-Object System.Windows.Forms.Label
$label16 = New-Object System.Windows.Forms.Label
$radioButton4 = New-Object System.Windows.Forms.RadioButton
$radioButton3 = New-Object System.Windows.Forms.RadioButton
$label6 = New-Object System.Windows.Forms.Label
$label5 = New-Object System.Windows.Forms.Label
$label4 = New-Object System.Windows.Forms.Label
$label3 = New-Object System.Windows.Forms.Label
$label2 = New-Object System.Windows.Forms.Label
$label1 = New-Object System.Windows.Forms.Label
$checkBox1 = New-Object System.Windows.Forms.CheckBox
$textBox3 = New-Object System.Windows.Forms.MaskedTextBox
$textBox2 = New-Object System.Windows.Forms.TextBox
$radioButton2 = New-Object System.Windows.Forms.RadioButton
$radioButton1 = New-Object System.Windows.Forms.RadioButton
$radioButton6 = New-Object System.Windows.Forms.RadioButton
$radioButton5 = New-Object System.Windows.Forms.RadioButton
$comboBox1 = New-Object System.Windows.Forms.ComboBox
$numericUpDown1 = New-Object System.Windows.Forms.NumericUpDown
$textBox1 = New-Object System.Windows.Forms.TextBox
$tabPage2 = New-Object System.Windows.Forms.TabPage
$panel1 = New-Object System.Windows.Forms.Panel
$richTextBox2 = New-Object System.Windows.Forms.RichTextBox
$groupBox2 = New-Object System.Windows.Forms.GroupBox
$checkBox3 = New-Object System.Windows.Forms.CheckBox
$label12 = New-Object System.Windows.Forms.Label
$label11 = New-Object System.Windows.Forms.Label
$label10 = New-Object System.Windows.Forms.Label
$label9 = New-Object System.Windows.Forms.Label
$label8 = New-Object System.Windows.Forms.Label
$label7 = New-Object System.Windows.Forms.Label
$checkBox2 = New-Object System.Windows.Forms.CheckBox
$textBox9 = New-Object System.Windows.Forms.MaskedTextBox
$textBox8 = New-Object System.Windows.Forms.TextBox
$textBox7 = New-Object System.Windows.Forms.TextBox
$textBox6 = New-Object System.Windows.Forms.TextBox
$textBox5 = New-Object System.Windows.Forms.TextBox
$textBox4 = New-Object System.Windows.Forms.TextBox
$textBox10 = New-Object System.Windows.Forms.TextBox
$button2 = New-Object System.Windows.Forms.Button
$button1 = New-Object System.Windows.Forms.Button
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$button1_OnClick= 
{
#TODO: Place custom script here
$button1.DialogResult = [System.Windows.Forms.DialogResult]::OK
}

$button2_OnClick= 
{
#TODO: Place custom script here
$button2.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
}

#$OnLoadForm_StateCorrection=
	$FormEvent_Load={
	
	}
	
	$checkbox3.Add_CheckStateChanged({
if ($checkbox3.Checked){ 
    $label7.Visible = $True
    $label8.Visible = $True
    $label9.Visible = $True
    $label10.Visible = $True
    $textBox4.Visible = $True
    $textBox5.Visible = $True
    $textBox6.Visible = $True
    $textBox7.Visible = $True
    $checkBox2.Visible = $True
    }
else { 
    $label7.Visible = $False
    $label8.Visible = $False
    $label9.Visible = $False
    $label10.Visible = $False
    $textBox4.Visible = $False
    $textBox5.Visible = $False
    $textBox6.Visible = $False
    $textBox7.Visible = $False
    $checkBox2.Visible = $False
    }
})
	$checkbox2.Add_CheckStateChanged({
if ($checkbox2.Checked){ 
    $label11.Visible = $True
    $label12.Visible = $True
    $textBox8.Visible = $True
    $textBox9.Visible = $True
    }
else { 
    $label11.Visible = $False
    $label12.Visible = $False
    $textBox8.Visible = $False
    $textBox9.Visible = $False
    }
})
	
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$form1.WindowState = $InitialFormWindowState
	}
	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$checkbox3.remove_CheckedChanged($checkbox3_CheckedChanged)

			$form1.remove_Load($FormEvent_Load)
			$form1.remove_Load($Form_StateCorrection_Load)
			$form1.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch [Exception]
		{ }
	}
	#endregion Generated Events
#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 560
$System_Drawing_Size.Width = 805
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Name = "form1"
$form1.Text = "VirusTotal Integrator"
$form1.TopMost = $true
$form1.MaximizeBox = $false 
$Form1.StartPosition = "CenterScreen" 
$Form1.FormBorderStyle = 'Fixed3D' 
$form1.Icon = New-Object system.drawing.icon ("$env:USERPROFILE\Downloads\biaetd1j_400x400_QBF_icon.ico") 
$form1.add_Load($FormEvent_Load)

$tabControl1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 13
$System_Drawing_Point.Y = 13
$tabControl1.Location = $System_Drawing_Point
$tabControl1.Name = "tabControl1"
$tabControl1.SelectedIndex = 0
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 500
$System_Drawing_Size.Width = 780
$tabControl1.Size = $System_Drawing_Size
$tabControl1.TabIndex = 2

$form1.Controls.Add($tabControl1)
$tabPage1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$tabPage1.Location = $System_Drawing_Point
$tabPage1.Name = "tabPage1"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$tabPage1.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 433
$System_Drawing_Size.Width = 772
$tabPage1.Size = $System_Drawing_Size
$tabPage1.TabIndex = 0
$tabPage1.Text = "VT"
$tabPage1.UseVisualStyleBackColor = $True

$tabControl1.Controls.Add($tabPage1)

$panel2.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 593
$System_Drawing_Point.Y = 7
$panel2.Location = $System_Drawing_Point
$panel2.Name = "panel2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 420
$System_Drawing_Size.Width = 173
$panel2.Size = $System_Drawing_Size
$panel2.TabIndex = 1

$tabPage1.Controls.Add($panel2)
$richTextBox1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 4
$richTextBox1.Location = $System_Drawing_Point
$richTextBox1.Name = "richTextBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 500
$System_Drawing_Size.Width = 166
$richTextBox1.Size = $System_Drawing_Size
$richTextBox1.TabIndex = 0
$richTextBox1.Text = "Enter the VT API key, select score above which event will be generated and execution frequency of script.

Pick the appropriate data source SQL or ET Search.

For SQL choose appropriate authentication mechanism, credentials and choose auto white-list if applicable.

For ET Search, select appropriate manager version. (8 or 9)

Enter the applicable company name to be used in HTML and CSV reports"

$panel2.Controls.Add($richTextBox1)


$groupBox1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 7
$groupBox1.Location = $System_Drawing_Point
$groupBox1.Name = "groupBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 215
$System_Drawing_Size.Width = 579
$groupBox1.Size = $System_Drawing_Size
$groupBox1.TabIndex = 0
$groupBox1.TabStop = $False
$groupBox1.Text = "General Settings"

$tabPage1.Controls.Add($groupBox1)

$groupBox3.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 224
$groupBox3.Location = $System_Drawing_Point
$groupBox3.Name = "groupBox3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 202
$System_Drawing_Size.Width = 579
$groupBox3.Size = $System_Drawing_Size
$groupBox3.TabIndex = 0
$groupBox3.TabStop = $False
$groupbox3.Visible = $false

$tabPage1.Controls.Add($groupBox3)

$label13.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 236
$label13.Location = $System_Drawing_Point
$label13.Name = "label13"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 113
$label13.Size = $System_Drawing_Size
$label13.TabIndex = 0
$label13.Text = "Authentication Type"
$label13.visible = $false

$tabpage1.Controls.Add($label13)

$label14.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 236
$label14.Location = $System_Drawing_Point
$label14.Name = "label14"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 113
$label14.Size = $System_Drawing_Size
$label14.TabIndex = 17
$label14.Text = "EventTracker Version"
$label14.visible = $False

$tabpage1.Controls.Add($label14)

$radioButton4.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 211
$System_Drawing_Point.Y = 187
$radioButton4.Location = $System_Drawing_Point
$radioButton4.Name = "radioButton4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 158
$radioButton4.Size = $System_Drawing_Size
$radioButton4.TabIndex = 16
$radioButton4.TabStop = $True
$radioButton4.Text = "EventTracker Database"
$radioButton4.UseVisualStyleBackColor = $True
$radioButton4.Add_Click({
    $label13.Visible = $true
    $radioButton1.Visible = $true
    $checkBox1.Visible = $true
    $radioButton2.Visible = $true
    $label14.Visible = $false
    $radioButton5.Visible = $false
    $radioButton6.Visible = $false
    $label15.Visible = $true
    $textBox11.visible = $true
})
$groupBox1.Controls.Add($radioButton4)


$radioButton3.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 211
$System_Drawing_Point.Y = 166
$radioButton3.Location = $System_Drawing_Point
$radioButton3.Name = "radioButton3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 180
$radioButton3.Size = $System_Drawing_Size
$radioButton3.TabIndex = 15
$radioButton3.TabStop = $True
$radioButton3.Text = "EventTracker Search"
$radioButton3.UseVisualStyleBackColor = $True
$radioButton3.Add_Click({
    $label14.Visible = $true
    $label13.Visible = $false
    $radioButton1.Visible = $false
    $radioButton5.Visible = $true
    $radioButton6.Visible = $true
    $label5.Visible = $false
    $label6.Visible = $false
    $textBox2.Visible = $false
    $textBox3.Visible = $false
    $checkBox1.Visible = $false
    $label15.Visible = $false
    $textBox11.visible = $false
})
$groupBox1.Controls.Add($radioButton3)

$label14.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 385
$label15.Location = $System_Drawing_Point
$label15.Name = "label14"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label15.Size = $System_Drawing_Size
$label15.TabIndex = 14
$label15.Text = "SQL Instance"
$label15.Visible = $False

$tabpage1.Controls.Add($label15)

$label6.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 333
$label6.Location = $System_Drawing_Point
$label6.Name = "label6"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label6.Size = $System_Drawing_Size
$label6.TabIndex = 14
$label6.Text = "SQL Password"
$label6.Visible = $False

$tabpage1.Controls.Add($label6)

$label5.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 283
$label5.Location = $System_Drawing_Point
$label5.Name = "label5"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label5.Size = $System_Drawing_Size
$label5.TabIndex = 13
$label5.Text = "SQL Username"
$label5.Visible = $False

$tabpage1.Controls.Add($label5)

$label4.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 168
$label4.Location = $System_Drawing_Point
$label4.Name = "label4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label4.Size = $System_Drawing_Size
$label4.TabIndex = 12
$label4.Text = "Data Input"

$groupBox1.Controls.Add($label4)

$label3.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 122
$label3.Location = $System_Drawing_Point
$label3.Name = "label3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 113
$label3.Size = $System_Drawing_Size
$label3.TabIndex = 11
$label3.Text = "Execution Frequency"

$groupBox1.Controls.Add($label3)

$label2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 77
$label2.Location = $System_Drawing_Point
$label2.Name = "label2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 138
$label2.Size = $System_Drawing_Size
$label2.TabIndex = 10
$label2.Text = "VirusTotal Score Threshold"

$groupBox1.Controls.Add($label2)

$label1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 29
$label1.Location = $System_Drawing_Point
$label1.Name = "label1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label1.Size = $System_Drawing_Size
$label1.TabIndex = 9
$label1.Text = "VirusTotal API Key"

$groupBox1.Controls.Add($label1)


$checkBox1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 211
$System_Drawing_Point.Y = 430
$checkBox1.Location = $System_Drawing_Point
$checkBox1.Name = "checkBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 169
$checkBox1.Size = $System_Drawing_Size
$checkBox1.TabIndex = 8
$checkBox1.Text = "Auto White-List MD5 Hashes"
$checkBox1.UseVisualStyleBackColor = $True
$checkBox1.Visible = $False

$tabPage1.Controls.Add($checkBox1)

$textBox11 = New-Object System.Windows.Forms.TextBox

$textBox10.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 211
$System_Drawing_Point.Y = 380
$textBox11.Location = $System_Drawing_Point
$textBox11.Name = "textBox11"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 270
$textBox11.Size = $System_Drawing_Size
$textBox11.TabIndex = 0
$textBox11.ForeColor = "lightgray"
$textBox11.Text = "eg. .\SQLEXPRESS"
$textbox11.add_click({if($textBox11.Text -eq "eg. .\SQLEXPRESS"){$textBox11.Text="";$textBox11.ForeColor = "black"}})
$textBox11.visible = $false

$tabPage1.Controls.Add($textBox11)

$textBox3.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 211
$System_Drawing_Point.Y = 333
$textBox3.Location = $System_Drawing_Point
$textBox3.Name = "textBox3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 270
$textBox3.Size = $System_Drawing_Size
$textBox3.TabIndex = 7
$textBox3.PasswordChar = "*"
$textBox3.Visible = $false

$tabpage1.Controls.Add($textBox3)

$textBox2.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 211
$System_Drawing_Point.Y = 283
$textBox2.Location = $System_Drawing_Point
$textBox2.Name = "textBox2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 270
$textBox2.Size = $System_Drawing_Size
$textBox2.TabIndex = 6
$textbox2.Visible = $False

$tabpage1.Controls.Add($textBox2)


$radioButton2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 375
$System_Drawing_Point.Y = 230
$radioButton2.Location = $System_Drawing_Point
$radioButton2.Name = "radioButton2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 132
$radioButton2.Size = $System_Drawing_Size
$radioButton2.TabIndex = 4
$radioButton2.TabStop = $True
$radioButton2.Text = "SQL Authentication"
$radioButton2.UseVisualStyleBackColor = $True
$radioButton2.Visible = $False
$radioButton2.Add_Click({
    $label5.Visible = $true
    $label6.Visible = $true
    $textBox2.Visible = $true
    $textBox3.Visible = $true
})

$tabpage1.Controls.Add($radioButton2)

$radioButton6.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 375
$System_Drawing_Point.Y = 230
$radioButton6.Location = $System_Drawing_Point
$radioButton6.Name = "radioButton2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 132
$radioButton6.Size = $System_Drawing_Size
$radioButton6.TabIndex = 4
$radioButton6.TabStop = $True
$radioButton6.Text = "9.X"
$radioButton6.UseVisualStyleBackColor = $True
$radioButton6.Visible = $False

$tabpage1.Controls.Add($radioButton6)

$radioButton1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 211
$System_Drawing_Point.Y = 230
$radioButton1.Location = $System_Drawing_Point
$radioButton1.Name = "radioButton1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 158
$radioButton1.Size = $System_Drawing_Size
$radioButton1.TabIndex = 3
$radioButton1.TabStop = $True
$radioButton1.Text = "Windows Authentication"
$radioButton1.UseVisualStyleBackColor = $True
$radioButton1.Visible = $False
$radioButton1.Add_Click({
    $label5.Visible = $false
    $label6.Visible = $false
    $textBox2.Visible = $false
    $textBox3.Visible = $false
})

$tabpage1.Controls.Add($radioButton1)

$radioButton5.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 211
$System_Drawing_Point.Y = 230
$radioButton5.Location = $System_Drawing_Point
$radioButton5.Name = "radioButton1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 158
$radioButton5.Size = $System_Drawing_Size
$radioButton5.TabIndex = 3
$radioButton5.TabStop = $True
$radioButton5.Text = "8.X"
$radioButton5.UseVisualStyleBackColor = $True
$radioButton5.Visible = $False
$radioButton5.Add_Click({
    $label5.Visible = $false
    $label6.Visible = $false
    $textBox2.Visible = $false
    $textBox3.Visible = $false
})

$tabpage1.Controls.Add($radioButton5)

$comboBox1.DataBindings.DefaultDataSourceUpdateMode = 0
$comboBox1.FormattingEnabled = $True
$comboBox1.Items.Add("1 Hour")|Out-Null
$comboBox1.Items.Add("6 Hours")|Out-Null
$comboBox1.Items.Add("12 Hours")|Out-Null
$comboBox1.Items.Add("24 Hours")|Out-Null
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 211
$System_Drawing_Point.Y = 122
$comboBox1.Location = $System_Drawing_Point
$comboBox1.Name = "comboBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 270
$comboBox1.Size = $System_Drawing_Size
$comboBox1.TabIndex = 2

$groupBox1.Controls.Add($comboBox1)

$numericUpDown1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 211
$System_Drawing_Point.Y = 77
$numericUpDown1.Location = $System_Drawing_Point
$numericUpDown1.Maximum = 10
$numericUpDown1.Minimum = 1
$numericUpDown1.Name = "numericUpDown1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 270
$numericUpDown1.Size = $System_Drawing_Size
$numericUpDown1.TabIndex = 1
$numericUpDown1.Value = 1

$groupBox1.Controls.Add($numericUpDown1)

$textBox1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 211
$System_Drawing_Point.Y = 29
$textBox1.Location = $System_Drawing_Point
$textBox1.Name = "textBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 270
$textBox1.Size = $System_Drawing_Size
$textBox1.TabIndex = 0

$groupBox1.Controls.Add($textBox1)



$tabPage2.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$tabPage2.Location = $System_Drawing_Point
$tabPage2.Name = "tabPage2"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$tabPage2.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 520
$System_Drawing_Size.Width = 772
$tabPage2.Size = $System_Drawing_Size
$tabPage2.TabIndex = 1
$tabPage2.Text = "SMTP"
$tabPage2.UseVisualStyleBackColor = $True

$tabControl1.Controls.Add($tabPage2)

$panel1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 594
$System_Drawing_Point.Y = 7
$panel1.Location = $System_Drawing_Point
$panel1.Name = "panel1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 420
$System_Drawing_Size.Width = 172
$panel1.Size = $System_Drawing_Size
$panel1.TabIndex = 1

$tabPage2.Controls.Add($panel1)
$richTextBox2.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 4
$richTextBox2.Location = $System_Drawing_Point
$richTextBox2.Name = "richTextBox2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 500
$System_Drawing_Size.Width = 165
$richTextBox2.Size = $System_Drawing_Size
$richTextBox2.TabIndex = 0
$richTextBox2.Text = "Configure appropriate SMTP settings to send HTML reports.

Provide credentials if applicable."

$panel1.Controls.Add($richTextBox2)



$groupBox2.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 7
$groupBox2.Location = $System_Drawing_Point
$groupBox2.Name = "groupBox2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 457
$System_Drawing_Size.Width = 581
$groupBox2.Size = $System_Drawing_Size
$groupBox2.TabIndex = 0
$groupBox2.TabStop = $False
$groupBox2.Text = "SMTP Settings"

$tabPage2.Controls.Add($groupBox2)

$checkBox3.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 48
$System_Drawing_Point.Y = 19
$checkBox3.Location = $System_Drawing_Point
$checkBox3.Name = "checkBox3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 140
$checkBox3.Size = $System_Drawing_Size
$checkBox3.TabIndex = 13
$checkBox3.Text = "Send Reports By Email"
$checkBox3.UseVisualStyleBackColor = $True

$groupBox2.Controls.Add($checkBox3)

$label12.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 38
$System_Drawing_Point.Y = 375
$label12.Location = $System_Drawing_Point
$label12.Name = "label12"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label12.Size = $System_Drawing_Size
$label12.TabIndex = 12
$label12.Text = "Password"
$label12.Visible = $False

$groupBox2.Controls.Add($label12)

$label16.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 38
$System_Drawing_Point.Y = 425
$label16.Location = $System_Drawing_Point
$label16.Name = "label12"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label16.Size = $System_Drawing_Size
$label16.TabIndex = 12
$label16.Text = "Company Name"
$label16.Visible = $true
#$label16.Visible = $false

$groupBox2.Controls.Add($label16)

$label11.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 38
$System_Drawing_Point.Y = 322
$label11.Location = $System_Drawing_Point
$label11.Name = "label11"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label11.Size = $System_Drawing_Size
$label11.TabIndex = 11
$label11.Text = "Username"
$label11.Visible = $False

$groupBox2.Controls.Add($label11)

$label10.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 38
$System_Drawing_Point.Y = 243
$label10.Location = $System_Drawing_Point
$label10.Name = "label10"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label10.Size = $System_Drawing_Size
$label10.TabIndex = 10
$label10.Text = "Receipent Address"
$label10.Visible = $False

$groupBox2.Controls.Add($label10)

$label9.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 38
$System_Drawing_Point.Y = 184
$label9.Location = $System_Drawing_Point
$label9.Name = "label9"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label9.Size = $System_Drawing_Size
$label9.TabIndex = 9
$label9.Text = "Sender Address"
$label9.Visible = $False

$groupBox2.Controls.Add($label9)

$label8.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 38
$System_Drawing_Point.Y = 122
$label8.Location = $System_Drawing_Point
$label8.Name = "label8"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label8.Size = $System_Drawing_Size
$label8.TabIndex = 8
$label8.Text = "Server Port"
$label8.Visible = $False

$groupBox2.Controls.Add($label8)

$label7.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 38
$System_Drawing_Point.Y = 59
$label7.Location = $System_Drawing_Point
$label7.Name = "label7"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label7.Size = $System_Drawing_Size
$label7.TabIndex = 7
$label7.Text = "Server IP/FQDN"
$label7.visible = $false

$groupBox2.Controls.Add($label7)


$checkBox2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 48
$System_Drawing_Point.Y = 281
$checkBox2.Location = $System_Drawing_Point
$checkBox2.Name = "checkBox2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 140
$checkBox2.Size = $System_Drawing_Size
$checkBox2.TabIndex = 6
$checkBox2.Text = "Enable Authentication"
$checkBox2.UseVisualStyleBackColor = $True
$checkBox2.Visible = $False

$groupBox2.Controls.Add($checkBox2)

$textBox9.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 236
$System_Drawing_Point.Y = 370
$textBox9.Location = $System_Drawing_Point
$textBox9.Name = "textBox9"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 258
$textBox9.Size = $System_Drawing_Size
$textBox9.TabIndex = 5
$textBox9.PasswordChar = "*"
$textBox9.Visible = $False

$groupBox2.Controls.Add($textBox9)

$textBox8.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 236
$System_Drawing_Point.Y = 322
$textBox8.Location = $System_Drawing_Point
$textBox8.Name = "textBox8"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 258
$textBox8.Size = $System_Drawing_Size
$textBox8.TabIndex = 4
$textBox8.Visible = $False

$groupBox2.Controls.Add($textBox8)

$textBox7.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 236
$System_Drawing_Point.Y = 243
$textBox7.Location = $System_Drawing_Point
$textBox7.Name = "textBox7"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 258
$textBox7.Size = $System_Drawing_Size
$textBox7.TabIndex = 3
$textBox7.Visible = $False

$groupBox2.Controls.Add($textBox7)

$textBox6.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 236
$System_Drawing_Point.Y = 184
$textBox6.Location = $System_Drawing_Point
$textBox6.Name = "textBox6"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 258
$textBox6.Size = $System_Drawing_Size
$textBox6.TabIndex = 2
$textBox6.Visible = $False

$groupBox2.Controls.Add($textBox6)

$textBox5.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 236
$System_Drawing_Point.Y = 122
$textBox5.Location = $System_Drawing_Point
$textBox5.Name = "textBox5"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 258
$textBox5.Size = $System_Drawing_Size
$textBox5.TabIndex = 1
$textBox5.Visible = $False

$groupBox2.Controls.Add($textBox5)

$textBox4.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 236
$System_Drawing_Point.Y = 59
$textBox4.Location = $System_Drawing_Point
$textBox4.Name = "textBox4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 258
$textBox4.Size = $System_Drawing_Size
$textBox4.TabIndex = 0
$textBox4.Visible = $False

$groupBox2.Controls.Add($textBox4)

$textBox10 = New-Object System.Windows.Forms.TextBox

$textBox10.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 236
$System_Drawing_Point.Y = 420
$textBox10.Location = $System_Drawing_Point
$textBox10.Name = "textBox10"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 258
$textBox10.Size = $System_Drawing_Size
$textBox10.TabIndex = 0
$textBox10.ForeColor = "lightgray"
$textBox10.Text = "eg. Netsurion"
$textbox10.add_click({if($textBox10.Text -eq "eg. Netsurion"){$textBox10.Text="";$textBox10.ForeColor = "black"}})

$groupBox2.Controls.Add($textBox10)

$button2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 399
$System_Drawing_Point.Y = 520
$button2.Location = $System_Drawing_Point
$button2.Name = "button2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button2.Size = $System_Drawing_Size
$button2.TabIndex = 1
$button2.Text = "Cancel"
$button2.UseVisualStyleBackColor = $True
$button2.add_Click($button2_OnClick)

$form1.Controls.Add($button2)


$button1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 318
$System_Drawing_Point.Y = 520
$button1.Location = $System_Drawing_Point
$button1.Name = "button1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button1.Size = $System_Drawing_Size
$button1.TabIndex = 0
$button1.Text = "OK"
$button1.UseVisualStyleBackColor = $True
$button1.add_Click($button1_OnClick)

$form1.Controls.Add($button1)


    #Save the initial state of the form
    $InitialFormWindowState = $form1.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$form1.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$form1.add_FormClosed($Form_Cleanup_FormClosed)
    #Show the Form
    $form1.ShowDialog()| Out-Null

$Output = @{
NINEX = ($radioButton6).Checked
EIGHTX = ($radioButton5).Checked
ETDB = ($radioButton4).Checked
ETSEARCH = ($radioButton3).Checked
SQLAUTH = ($radioButton2).Checked
WAUTH = ($radioButton1).Checked
SMTPEN = ($checkBox3).Checked
SMTPAU = ($checkBox2).Checked
WLHASH = ($checkBox1).Checked
SFREQ = ($comboBox1).Text
VTSCORE = ($numericUpDown1).Text
VTAPI = ($textBox1).Text
SQLUN = ($textBox2).Text
SQLPW = ($textBox3).Text | ConvertFrom-SecureString 
SQLINS = ($textBox11).text
SMTPIP = ($textBox4).Text
SMTPPO = ($textBox5).Text
SMTPFROM = ($textBox6).Text
SMTPTO = ($textBox7).Text
SMTPUN = ($textBox8).Text  
SMTPPW = ($textBox9).Text | ConvertFrom-SecureString 
CNAME = ($textBox10).Text
}
$output | Export-Clixml -Path "$scriptPath\CONF.xml"
} #End Function
GenerateForm
