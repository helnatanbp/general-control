inherited FrmCadastroOS: TFrmCadastroOS
  Caption = 'CADASTRO DE OS'
  ClientHeight = 487
  ClientWidth = 785
  Position = poDesigned
  ExplicitWidth = 801
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 785
    Color = clMedGray
    ParentBackground = False
    ExplicitWidth = 785
    inherited lbCabecalho: TLabel
      Width = 146
      Caption = 'CADASTRO DE OS'
      ExplicitWidth = 146
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 785
    Color = 11834629
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 785
    inherited lbCodigo: TLabel
      Left = 57
      Top = 21
      Width = 37
      Height = 14
      Font.Color = clWhite
      Font.Height = -12
      ExplicitLeft = 57
      ExplicitTop = 21
      ExplicitWidth = 37
      ExplicitHeight = 14
    end
    inherited edCodigo: TEdit
      Left = 100
      ExplicitLeft = 100
    end
  end
  inherited pnlBotoes: TPanel
    Top = 446
    Width = 785
    Color = clMedGray
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 446
    ExplicitWidth = 785
    DesignSize = (
      785
      41)
    inherited btnLimpar: TBitBtn
      Left = 550
      ExplicitLeft = 550
    end
    inherited btnExcluir: TBitBtn
      Left = 433
      ExplicitLeft = 433
    end
    inherited btnGravar: TBitBtn
      Left = 316
      ExplicitLeft = 316
    end
    inherited btnSair: TBitBtn
      Left = 667
      ExplicitLeft = 667
    end
  end
  object pgOrdemServico: TPageControl [3]
    Left = 0
    Top = 86
    Width = 785
    Height = 360
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 1
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object gbInformacoes: TGroupBox
        Left = 0
        Top = 0
        Width = 777
        Height = 332
        Align = alClient
        Caption = 'Informa'#231#245'es'
        Color = 11834629
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object lbDataEntrada: TLabel
          Left = 25
          Top = 34
          Width = 71
          Height = 14
          Caption = 'Data Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edCliente: TLabeledEdit
          Left = 100
          Top = 58
          Width = 150
          Height = 19
          Color = clBtnFace
          EditLabel.Width = 37
          EditLabel.Height = 14
          EditLabel.Caption = 'Cliente'
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
          MaxLength = 100
          ParentFont = False
          TabOrder = 1
          OnExit = edClienteExit
        end
        object edEquipamento: TLabeledEdit
          Left = 100
          Top = 83
          Width = 150
          Height = 19
          Color = clBtnFace
          EditLabel.Width = 72
          EditLabel.Height = 14
          EditLabel.Caption = 'Equipamento'
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
          MaxLength = 100
          ParentFont = False
          TabOrder = 2
          OnExit = edEquipamentoExit
        end
        object edDataEntrada: TDateTimePicker
          Left = 100
          Top = 31
          Width = 150
          Height = 21
          Date = 42997.834965393520000000
          Time = 42997.834965393520000000
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object stNomeCliente: TStaticText
          Left = 292
          Top = 58
          Width = 137
          Height = 19
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'stNomeCliente'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          Transparent = False
        end
        object btnLocalizarCliente: TButton
          Left = 256
          Top = 58
          Width = 30
          Height = 19
          Cursor = crHandPoint
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          TabStop = False
          OnClick = btnLocalizarClienteClick
        end
        object stNomeEquipamento: TStaticText
          Left = 292
          Top = 83
          Width = 137
          Height = 19
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'stNomeEquipamento'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          Transparent = False
        end
        object btnLocalizaEquipamento: TButton
          Left = 256
          Top = 83
          Width = 30
          Height = 19
          Cursor = crHandPoint
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          TabStop = False
          OnClick = btnLocalizaEquipamentoClick
        end
      end
    end
    object tsTecnicos: TTabSheet
      Caption = 'T'#233'cnicos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlTecnicos: TPanel
        Left = 0
        Top = 0
        Width = 777
        Height = 177
        Align = alTop
        Color = 11834629
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          777
          177)
        object lbData: TLabel
          Left = 68
          Top = 46
          Width = 25
          Height = 14
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbDescricaoServico: TLabel
          Left = 14
          Top = 93
          Width = 94
          Height = 14
          Caption = 'Descri'#231#227'o Servi'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbInicioManha: TLabel
          Left = 546
          Top = 19
          Width = 67
          Height = 14
          Caption = 'In'#237'cio Manh'#227
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbTerminoManha: TLabel
          Left = 529
          Top = 46
          Width = 84
          Height = 14
          Caption = 'Termino Manh'#227
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbInicioTarde: TLabel
          Left = 549
          Top = 73
          Width = 64
          Height = 14
          Caption = 'In'#237'cio Tarde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbTerminoTarde: TLabel
          Left = 536
          Top = 100
          Width = 77
          Height = 14
          Caption = 'Temino Tarde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edTecnico: TLabeledEdit
          Left = 96
          Top = 16
          Width = 121
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          EditLabel.Width = 72
          EditLabel.Height = 14
          EditLabel.Caption = 'Cod. Tecnico'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWhite
          EditLabel.Font.Height = -12
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          LabelPosition = lpLeft
          ParentCtl3D = False
          TabOrder = 0
          OnExit = edTecnicoExit
        end
        object edData: TDateTimePicker
          Left = 96
          Top = 42
          Width = 121
          Height = 21
          Date = 43003.880544618060000000
          Time = 43003.880544618060000000
          Color = clBtnFace
          TabOrder = 3
        end
        object btnLocalizarTecnico: TButton
          Left = 223
          Top = 17
          Width = 30
          Height = 19
          Cursor = crHandPoint
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = btnLocalizarTecnicoClick
        end
        object stNomeTecnico: TStaticText
          Left = 259
          Top = 16
          Width = 137
          Height = 19
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'stNomeTecnico'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          Transparent = False
        end
        object btnInserirOsTecnico: TBitBtn
          Left = 614
          Top = 144
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Adicionar'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFD18A62C4652FC76730CA6A30CA6A30DB9265FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4652FF3BC86EE
            9C4FEE9641F29E48D06E32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC4652FF3BC86E8934FE98E41F29E48CA6A30FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0622DF3BC86E6
            8E4DE98E41F29E48D06E32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC4652FF3BC86E68E4DE7893FF29E48CA6A30FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC3805EB3582AB3582AB95C2BB95C2BB95C2BF3BC86E6
            8E4DE7893FEE9641CA6A30CA6A30D06E32CA6A30D06E32D5804BAE5428F0B98A
            E69453E38740E38236E38236EE9641DC7A3DE38139ED943FF29E48F29E48F29E
            48F29E48F29E48CA6A30AE5428F0B98ADC824CD87339D87339DC7A3DDC7736DC
            7736DC7736E38139E7893FE7893FE7893FE98E41EE9641CA6A30AE5428F0B98A
            DF8C5ADA7E4BDC824CDC824CE0874FDD7D41DC7A3DE38740E69154E69154E894
            55EA9856EFA157C76730AE5428EFB98BF0B98AF0B98AF0B98AF0B98AF0B98AE6
            9154DC7A3DEB9D57F0B98AF4C08DF4C08DF4C08DF4C08DC4652FBF7C5DAE5428
            AE5428B15629B3582AB95C2BF0B98ADC824CDC7A3DE68E44C4652FC0622DC465
            2FC4652FC4652FD79976FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3582AF0B98ADC
            824CD87339E68E44B95C2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFB15629F0B98ADC824CD87339E68E44B95C2BFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE5428F0B98ADF
            8C5ADC824CE69453B3582AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFAE5428F0B98AF0B98AF0B98AF0B98AB3582AFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7C5DAE5428AE
            5428AE5428AE5428C3805EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 9
          OnClick = btnInserirOsTecnicoClick
        end
        object btnRemoverOsTecnico: TBitBtn
          Left = 695
          Top = 144
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Remover'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFF8F8FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD595AE97174F0FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF4E52EB4D4EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
            1E20CD0A08EC0D0EF94E51E3FFFFFFFFFFFFFFFFFFFFFFFF393BE10706F70403
            E83031CCFFFFFFFFFFFFFFFFFE1C1EC00301CF0000D40000E40605F45052E0FF
            FFFFFFFFFF383BDC0A08F50000E10000D30503CD2E2FC2FFFFFFE4E3F5534DDF
            0000B80000C30000D00000DA0503F06265E34A4DE00807F30000D70000CE0000
            C00000BE2621C9F5F4FAFFFFFFCBCCE50000B50000B70000BA0000C40000C827
            26F11D1DEF0000C70000C30000B80000BD0000ACE9EAF0FFFFFFFFFFFFFFFFFF
            D4D4E70000AF0000AE0000AC0000B40000B90000B70000B40000AA0000B70000
            A6EEEEF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6E50705AE0000A600009800
            009D00009D0000980000A90A08A5F0F0F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF4D4BA3504BED00009E0000A30000A200009F2823D25C5BA3FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3737660603B80000A60000AB00
            00AA0000AA0000AB0000AC0000A2505074FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            3535440806BF0000C90000C50000C31411D90303CF0000C40000C50000CD0000
            A84D4E51FFFFFFFFFFFFFFFFFF3734392520B91512E51A16DC1915DC1E19E854
            52DA2825D41D18E61A15DC1A16DC1815EA100BA14F4D4DFFFFFFD4D1D768589F
            564BFF4A41E94A40E95D52F60808C0EEEFF5D3D4E81612C5564CF34B41E94B41
            E9564BFF22146CEFEEEDFFFFFF9FA09526207E887DFF9085FD1616C3E8E8F5FF
            FFFFFFFFFFCACBEB2C27CD8A7FFC8D82FF16135EC5C7B7FFFFFFFFFFFFFFFFFF
            9B9CB8847DCC4140CFE1E2F4FFFFFFFFFFFFFFFFFFFFFFFFC3C4E95754D9433E
            A9C2C3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC8EDE8E8F9FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFDFDEF6D5D4F0FFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 10
          OnClick = btnRemoverOsTecnicoClick
        end
        object meDescricaoServico: TMemo
          Left = 14
          Top = 112
          Width = 494
          Height = 59
          Anchors = [akLeft, akBottom]
          Color = clBtnFace
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
        end
        object edInicioManha: TMaskEdit
          Left = 617
          Top = 16
          Width = 156
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          EditMask = '!90:00;1;_'
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 4
          Text = '  :  '
        end
        object edTerminoManha: TMaskEdit
          Left = 617
          Top = 43
          Width = 156
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          EditMask = '!90:00;1;_'
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 5
          Text = '  :  '
        end
        object edInicioTarde: TMaskEdit
          Left = 617
          Top = 70
          Width = 156
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          EditMask = '!90:00;1;_'
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 6
          Text = '  :  '
        end
        object edTerminoTarde: TMaskEdit
          Left = 617
          Top = 97
          Width = 156
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          EditMask = '!90:00;1;_'
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 7
          Text = '  :  '
        end
      end
      object dbgOSTecnicos: TDBGrid
        Left = 0
        Top = 177
        Width = 777
        Height = 155
        Align = alClient
        Color = clBtnFace
        FixedColor = clGradientInactiveCaption
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tsMateriais: TTabSheet
      Caption = 'Materiais'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 777
        Height = 135
        Align = alTop
        Color = 11834629
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          777
          135)
        object edMaterial: TLabeledEdit
          Left = 96
          Top = 17
          Width = 121
          Height = 20
          Color = clBtnFace
          Ctl3D = False
          EditLabel.Width = 70
          EditLabel.Height = 14
          EditLabel.Caption = 'Cod. Material'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWhite
          EditLabel.Font.Height = -12
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = edMaterialExit
        end
        object edQuantidade: TLabeledEdit
          Left = 96
          Top = 43
          Width = 121
          Height = 20
          Color = clBtnFace
          Ctl3D = False
          EditLabel.Width = 63
          EditLabel.Height = 14
          EditLabel.Caption = 'Quantidade'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWhite
          EditLabel.Font.Height = -12
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object btnRemoverOsMaterial: TBitBtn
          Left = 690
          Top = 104
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Remover'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFF8F8FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD595AE97174F0FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF4E52EB4D4EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
            1E20CD0A08EC0D0EF94E51E3FFFFFFFFFFFFFFFFFFFFFFFF393BE10706F70403
            E83031CCFFFFFFFFFFFFFFFFFE1C1EC00301CF0000D40000E40605F45052E0FF
            FFFFFFFFFF383BDC0A08F50000E10000D30503CD2E2FC2FFFFFFE4E3F5534DDF
            0000B80000C30000D00000DA0503F06265E34A4DE00807F30000D70000CE0000
            C00000BE2621C9F5F4FAFFFFFFCBCCE50000B50000B70000BA0000C40000C827
            26F11D1DEF0000C70000C30000B80000BD0000ACE9EAF0FFFFFFFFFFFFFFFFFF
            D4D4E70000AF0000AE0000AC0000B40000B90000B70000B40000AA0000B70000
            A6EEEEF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6E50705AE0000A600009800
            009D00009D0000980000A90A08A5F0F0F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF4D4BA3504BED00009E0000A30000A200009F2823D25C5BA3FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3737660603B80000A60000AB00
            00AA0000AA0000AB0000AC0000A2505074FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            3535440806BF0000C90000C50000C31411D90303CF0000C40000C50000CD0000
            A84D4E51FFFFFFFFFFFFFFFFFF3734392520B91512E51A16DC1915DC1E19E854
            52DA2825D41D18E61A15DC1A16DC1815EA100BA14F4D4DFFFFFFD4D1D768589F
            564BFF4A41E94A40E95D52F60808C0EEEFF5D3D4E81612C5564CF34B41E94B41
            E9564BFF22146CEFEEEDFFFFFF9FA09526207E887DFF9085FD1616C3E8E8F5FF
            FFFFFFFFFFCACBEB2C27CD8A7FFC8D82FF16135EC5C7B7FFFFFFFFFFFFFFFFFF
            9B9CB8847DCC4140CFE1E2F4FFFFFFFFFFFFFFFFFFFFFFFFC3C4E95754D9433E
            A9C2C3D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC8EDE8E8F9FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFDFDEF6D5D4F0FFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 5
          OnClick = btnRemoverOsMaterialClick
        end
        object btnInserirOsMaterial: TBitBtn
          Left = 609
          Top = 104
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Adicionar'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFD18A62C4652FC76730CA6A30CA6A30DB9265FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4652FF3BC86EE
            9C4FEE9641F29E48D06E32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC4652FF3BC86E8934FE98E41F29E48CA6A30FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0622DF3BC86E6
            8E4DE98E41F29E48D06E32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC4652FF3BC86E68E4DE7893FF29E48CA6A30FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC3805EB3582AB3582AB95C2BB95C2BB95C2BF3BC86E6
            8E4DE7893FEE9641CA6A30CA6A30D06E32CA6A30D06E32D5804BAE5428F0B98A
            E69453E38740E38236E38236EE9641DC7A3DE38139ED943FF29E48F29E48F29E
            48F29E48F29E48CA6A30AE5428F0B98ADC824CD87339D87339DC7A3DDC7736DC
            7736DC7736E38139E7893FE7893FE7893FE98E41EE9641CA6A30AE5428F0B98A
            DF8C5ADA7E4BDC824CDC824CE0874FDD7D41DC7A3DE38740E69154E69154E894
            55EA9856EFA157C76730AE5428EFB98BF0B98AF0B98AF0B98AF0B98AF0B98AE6
            9154DC7A3DEB9D57F0B98AF4C08DF4C08DF4C08DF4C08DC4652FBF7C5DAE5428
            AE5428B15629B3582AB95C2BF0B98ADC824CDC7A3DE68E44C4652FC0622DC465
            2FC4652FC4652FD79976FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3582AF0B98ADC
            824CD87339E68E44B95C2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFB15629F0B98ADC824CD87339E68E44B95C2BFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE5428F0B98ADF
            8C5ADC824CE69453B3582AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFAE5428F0B98AF0B98AF0B98AF0B98AB3582AFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7C5DAE5428AE
            5428AE5428AE5428C3805EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 4
          OnClick = btnInserirOsMaterialClick
        end
        object btnLocalizarMaterial: TButton
          Left = 223
          Top = 16
          Width = 30
          Height = 19
          Cursor = crHandPoint
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = btnLocalizarMaterialClick
        end
        object stDescricaoMaterial: TStaticText
          Left = 259
          Top = 16
          Width = 137
          Height = 19
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'stDescricaoMaterial'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          Transparent = False
        end
      end
      object dbgOSMateriais: TDBGrid
        Left = 0
        Top = 135
        Width = 777
        Height = 197
        Align = alClient
        Color = clBtnFace
        FixedColor = clGradientInactiveCaption
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 440
    Top = 32
  end
end
