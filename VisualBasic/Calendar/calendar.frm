VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form1 
   BackColor       =   &H000040C0&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "  Made by Ilya in 2001"
   ClientHeight    =   1704
   ClientLeft      =   48
   ClientTop       =   216
   ClientWidth     =   2424
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1704
   ScaleWidth      =   2424
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton GradientButton1 
      Caption         =   "Показать календарь"
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   1200
      Width           =   2172
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H00FFFF80&
      Height          =   285
      Left            =   1320
      MaxLength       =   2
      TabIndex        =   4
      Text            =   "12"
      Top             =   240
      Width           =   375
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00FFFF80&
      Height          =   285
      Left            =   840
      MaxLength       =   2
      TabIndex        =   3
      Text            =   "03"
      Top             =   240
      Width           =   375
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00FFFF80&
      Height          =   285
      Left            =   1800
      MaxLength       =   4
      TabIndex        =   2
      Text            =   "2002"
      Top             =   240
      Width           =   495
   End
   Begin MSComCtl2.MonthView MonthView1 
      Height          =   2256
      Left            =   120
      TabIndex        =   0
      Top             =   1680
      Visible         =   0   'False
      Width           =   2160
      _ExtentX        =   3810
      _ExtentY        =   3979
      _Version        =   393216
      ForeColor       =   0
      BackColor       =   -2147483633
      Appearance      =   1
      StartOfWeek     =   28246018
      TitleBackColor  =   16576
      TitleForeColor  =   65535
      TrailingForeColor=   16711935
      CurrentDate     =   37593
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00000080&
      BackStyle       =   0  'Transparent
      Caption         =   "Привет"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF80&
      Height          =   372
      Left            =   720
      TabIndex        =   6
      Top             =   600
      Width           =   1692
   End
   Begin VB.Image Image1 
      Height          =   576
      Left            =   120
      Picture         =   "calendar.frx":0000
      ToolTipText     =   "About"
      Top             =   120
      Width           =   576
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00000080&
      BackStyle       =   0  'Transparent
      Caption         =   "!!!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF80&
      Height          =   372
      Left            =   720
      TabIndex        =   1
      Top             =   840
      Width           =   1692
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub GradientButton1_Click()
If MonthView1.Visible = False Then MonthView1.Visible = True _
Else: MonthView1.Visible = False

If GradientButton1.Caption = "Показать календарь" Then _
GradientButton1.Caption = "Спрятать календарь" Else _
GradientButton1.Caption = "Показать календарь"

If Form1.Height = 4416 Then Form1.Height = 2016 Else _
Form1.Height = 4416
End Sub

Private Sub Image1_Click()
AboutForm.Show
End Sub

Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image1.BorderStyle = 1
End Sub

Private Sub Image1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image1.BorderStyle = 0
End Sub

Private Sub Update()
Dim DofW As Integer
Label1.Caption = MonthView1.Day & "." & MonthView1.Month _
& "." & MonthView1.Year
DofW = MonthView1.DayOfWeek
If DofW = 2 Then Label2.Caption = "Понедельник"
If DofW = 3 Then Label2.Caption = "Вторник"
If DofW = 4 Then Label2.Caption = "Среда"
If DofW = 5 Then Label2.Caption = "Четверг"
If DofW = 6 Then Label2.Caption = "Пятница"
If DofW = 7 Then Label2.Caption = "Суббота"
If DofW = 1 Then Label2.Caption = "Воскресенье"
Form1.Caption = "  " & Label1.Caption
End Sub

Private Sub MonthView1_DateClick(ByVal DateClicked As Date)
Update
End Sub

Private Sub Text1_Change()
On Error Resume Next
MonthView1.Year = Text1.Text
Update
End Sub

Private Sub Text2_Change()
On Error Resume Next
MonthView1.Day = Text2.Text
Update
End Sub

Private Sub Text3_Change()
On Error Resume Next
MonthView1.Month = Text3.Text
Update
End Sub

