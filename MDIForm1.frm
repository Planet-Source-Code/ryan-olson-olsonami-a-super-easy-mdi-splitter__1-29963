VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "MDI Splitter by ::roProg::"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7680
   Icon            =   "MDIForm1.frx":0000
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture2 
      Align           =   3  'Align Left
      Height          =   3195
      Left            =   3360
      MousePointer    =   9  'Size W E
      ScaleHeight     =   3195
      ScaleWidth      =   45
      TabIndex        =   1
      Top             =   0
      Width           =   45
   End
   Begin VB.PictureBox Picture1 
      Align           =   3  'Align Left
      Height          =   3195
      Left            =   0
      ScaleHeight     =   3135
      ScaleWidth      =   3300
      TabIndex        =   0
      Top             =   0
      Width           =   3360
      Begin VB.PictureBox Picture3 
         Height          =   65
         Left            =   120
         ScaleHeight     =   0
         ScaleWidth      =   2715
         TabIndex        =   2
         Top             =   120
         Width           =   2775
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "«"
         Height          =   255
         Left            =   3000
         TabIndex        =   3
         Top             =   0
         Width           =   255
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer


Private Sub Label1_Click()
Picture1.Width = 300
Label1.BorderStyle = 0
End Sub

Private Sub Label1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.BorderStyle = 1
End Sub



Private Sub Label1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label1.BorderStyle = 0
End Sub

Private Sub Picture1_Resize()
On Error Resume Next
Picture3.Width = Picture1.Width - Picture3.Left - Label1.Width * 1.5
Label1.Left = Picture3.Width + Picture3.Left + (Label1.Width / 3)
End Sub

Private Sub Picture2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
i = 1
End Sub

Private Sub Picture2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
If i = 1 Then
Picture1.Width = X + Picture1.Width
Form1.Caption = "Side width=" & Picture1.Width
End If
End Sub

Private Sub Picture2_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
i = 0
End Sub
