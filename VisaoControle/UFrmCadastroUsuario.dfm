inherited FrmCadastroUsuario: TFrmCadastroUsuario
  Caption = 'CADASTRO DE USU'#193'RIO'
  ClientHeight = 341
  ClientWidth = 636
  ExplicitWidth = 652
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 636
    Color = clMedGray
    ParentBackground = False
    ExplicitWidth = 636
    inherited lbCabecalho: TLabel
      Width = 201
      Caption = 'CADASTRO DE USU'#193'RIO'
      ExplicitWidth = 201
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 636
    Color = 11834629
    ParentBackground = False
    ParentColor = False
    ExplicitWidth = 636
    inherited lbCodigo: TLabel
      Width = 37
      Height = 14
      Font.Color = clWhite
      Font.Height = -12
      ExplicitWidth = 37
      ExplicitHeight = 14
    end
  end
  inherited pnlBotoes: TPanel
    Top = 300
    Width = 636
    Color = clMedGray
    ParentBackground = False
    ExplicitTop = 300
    ExplicitWidth = 636
    inherited btnLimpar: TBitBtn
      Left = 401
      ExplicitLeft = 401
    end
    inherited btnExcluir: TBitBtn
      Left = 284
      ExplicitLeft = 284
    end
    inherited btnGravar: TBitBtn
      Left = 167
      ExplicitLeft = 167
    end
    inherited btnSair: TBitBtn
      Left = 518
      ExplicitLeft = 518
    end
  end
  object gbInformacoes: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 636
    Height = 214
    Align = alClient
    Caption = 'Informa'#231#245'es'
    Color = 11834629
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object lbPapel: TLabel
      Left = 8
      Top = 136
      Width = 93
      Height = 14
      Caption = 'Papel no Sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edNome: TLabeledEdit
      Left = 104
      Top = 28
      Width = 385
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      EditLabel.Width = 32
      EditLabel.Height = 14
      EditLabel.Caption = 'Nome'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      MaxLength = 60
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object edSenhaAtual: TLabeledEdit
      Left = 104
      Top = 82
      Width = 129
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      EditLabel.Width = 66
      EditLabel.Height = 14
      EditLabel.Caption = 'Senha Atual'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      MaxLength = 60
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
    end
    object edLogin: TLabeledEdit
      Left = 104
      Top = 55
      Width = 129
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      EditLabel.Width = 29
      EditLabel.Height = 14
      EditLabel.Caption = 'Login'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      LabelPosition = lpLeft
      ParentCtl3D = False
      TabOrder = 1
    end
    object edSenha: TLabeledEdit
      Left = 104
      Top = 109
      Width = 129
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      EditLabel.Width = 34
      EditLabel.Height = 14
      EditLabel.Caption = 'Senha'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 3
    end
    object edConfirmacaoSenha: TLabeledEdit
      Left = 368
      Top = 109
      Width = 121
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      EditLabel.Width = 89
      EditLabel.Height = 14
      EditLabel.Caption = 'Confirmar Senha'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 4
    end
  end
  object cbPapel: TComboBox [4]
    Left = 104
    Top = 222
    Width = 385
    Height = 21
    Color = clBtnFace
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
  end
  inherited pmOpcoes: TPopupMenu
    Left = 520
  end
end
