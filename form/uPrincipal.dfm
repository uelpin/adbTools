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
  OldCreateOrder = False
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
    ExplicitLeft = 26
    ExplicitTop = 64
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lblIP: TLabel
      Left = 21
      Top = 43
      Width = 10
      Height = 13
      Caption = 'IP'
    end
    object lblCmd: TLabel
      Left = 16
      Top = 5
      Width = 22
      Height = 13
      Caption = 'CMD'
    end
    object btnConectar: TButton
      Left = 75
      Top = 71
      Width = 75
      Height = 25
      Caption = 'Conectar'
      TabOrder = 4
    end
    object btnDesconectar: TButton
      Left = 75
      Top = 101
      Width = 75
      Height = 25
      Caption = 'Desconectar'
      TabOrder = 5
      TabStop = False
    end
    object btnKillServer: TButton
      Left = 75
      Top = 132
      Width = 75
      Height = 25
      Caption = 'Kill Server'
      TabOrder = 6
      TabStop = False
    end
    object edtIP1: TEdit
      Left = 44
      Top = 40
      Width = 32
      Height = 21
      MaxLength = 3
      TabOrder = 0
      OnChange = edtIP1Change
    end
    object RadioButton1: TRadioButton
      Left = 42
      Top = 3
      Width = 34
      Height = 17
      Caption = 'on'
      TabOrder = 7
    end
    object RadioButton2: TRadioButton
      Left = 82
      Top = 3
      Width = 33
      Height = 17
      Caption = 'off'
      TabOrder = 8
    end
    object edtIP2: TEdit
      Left = 86
      Top = 40
      Width = 32
      Height = 21
      MaxLength = 3
      TabOrder = 1
      OnChange = edtIP2Change
    end
    object edtIP3: TEdit
      Left = 128
      Top = 40
      Width = 32
      Height = 21
      MaxLength = 3
      TabOrder = 2
      OnChange = edtIP3Change
    end
    object edtIP4: TEdit
      Left = 170
      Top = 40
      Width = 32
      Height = 21
      MaxLength = 3
      TabOrder = 3
      OnChange = edtIP4Change
    end
  end
end
