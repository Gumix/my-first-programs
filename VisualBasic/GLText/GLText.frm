VERSION 5.00
Object = "{7115A980-41DC-11D0-B2C5-444553540000}#1.1#0"; "GLTEXT.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4620
   ClientLeft      =   60
   ClientTop       =   348
   ClientWidth     =   4908
   LinkTopic       =   "Form1"
   ScaleHeight     =   385
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   409
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   120
      Top             =   120
   End
   Begin GLText.GLText GLText1 
      Height          =   4452
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   4452
      Extrusion       =   0.3
      LightX          =   0
      LightY          =   15
      LightZ          =   25
      PositionX       =   0
      PositionY       =   0
      PositionZ       =   -3
      ScaleX          =   1
      ScaleY          =   1
      ScaleZ          =   1
      DegreeX         =   0
      DegreeY         =   5
      DegreeZ         =   -5
      BackColor       =   12632256
      ForeColor       =   192
      Enabled         =   -1  'True
      Text            =   "ILYA"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   26.4
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Alignment       =   1
      LineSpace       =   0
      Transparent     =   -1  'True
      ExtendWidth     =   7853
      ExtendHeight    =   7853
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
'GLText1.DegreeX = GLText1.DegreeX + 5
GLText1.DegreeY = GLText1.DegreeY + 5
'GLText1.DegreeZ = GLText1.DegreeZ + 5
End Sub
