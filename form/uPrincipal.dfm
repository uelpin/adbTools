object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'adbTools'
  ClientHeight = 171
  ClientWidth = 229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 229
    Height = 171
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lblIP: TLabel
      Left = 21
      Top = 43
      Width = 10
      Height = 13
      Caption = 'IP'
    end
    object lblCmd: TLabel
      Left = 11
      Top = 5
      Width = 26
      Height = 13
      Caption = 'CMD:'
    end
    object btnConectar: TButton
      Left = 75
      Top = 71
      Width = 75
      Height = 25
      Caption = 'Conectar'
      TabOrder = 4
      OnClick = btnConectarClick
    end
    object btnDesconectar: TButton
      Left = 75
      Top = 101
      Width = 75
      Height = 25
      Caption = 'Desconectar'
      TabOrder = 5
      TabStop = False
      OnClick = btnDesconectarClick
    end
    object btnKillServer: TButton
      Left = 75
      Top = 132
      Width = 75
      Height = 25
      Caption = 'Kill Server'
      TabOrder = 6
      TabStop = False
      OnClick = btnKillServerClick
    end
    object edtIP1: TEdit
      AlignWithMargins = True
      Left = 44
      Top = 40
      Width = 32
      Height = 21
      MaxLength = 3
      TabOrder = 0
      OnKeyPress = edtIP1KeyPress
    end
    object rbtnOn: TRadioButton
      Left = 43
      Top = 4
      Width = 34
      Height = 17
      Caption = 'on'
      Checked = True
      TabOrder = 7
      TabStop = True
    end
    object rbtnOff: TRadioButton
      Left = 80
      Top = 4
      Width = 33
      Height = 17
      Caption = 'off'
      TabOrder = 8
    end
    object edtIP2: TEdit
      AlignWithMargins = True
      Left = 86
      Top = 40
      Width = 32
      Height = 21
      MaxLength = 3
      NumbersOnly = True
      TabOrder = 1
      OnKeyPress = edtIP2KeyPress
    end
    object edtIP3: TEdit
      AlignWithMargins = True
      Left = 128
      Top = 40
      Width = 32
      Height = 21
      MaxLength = 3
      NumbersOnly = True
      TabOrder = 2
      OnKeyPress = edtIP3KeyPress
    end
    object edtIP4: TEdit
      AlignWithMargins = True
      Left = 170
      Top = 40
      Width = 32
      Height = 21
      MaxLength = 3
      NumbersOnly = True
      TabOrder = 3
    end
  end
end
