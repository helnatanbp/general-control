object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Login'
  ClientHeight = 276
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 367
    Height = 276
    Align = alClient
    Color = 11834629
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 227
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lbNome: TLabel
      Left = 40
      Top = 32
      Width = 284
      Height = 39
      Caption = 'GENERAL CONTROL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbSenha: TLabel
      Left = 11
      Top = 157
      Width = 38
      Height = 14
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lbUsuario: TLabel
      Left = 11
      Top = 108
      Width = 45
      Height = 14
      Caption = 'Usuario'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object edSenha: TEdit
      Left = 11
      Top = 179
      Width = 348
      Height = 25
      PasswordChar = '*'
      TabOrder = 1
    end
    object edUsuario: TEdit
      Left = 11
      Top = 130
      Width = 348
      Height = 25
      TabOrder = 0
    end
    object btnCancelar: TBitBtn
      Left = 284
      Top = 242
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6E6ECC3333BA3333BA3333BA3333BA6E6ECCFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7171C92525B00F0FAC1010B412
        12BD1818C61818C61E1EC02C2CB27171C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        6E6ECC1616AC0707B21212BD5050D15F5FD26767D86767D83F3FE02D2DE22525
        BC7171C9FFFFFFFFFFFFFFFFFF7171C93A3ABF1212B81E1EC05151C38181D0FF
        FFFFFFFFFF8181D06767D84040EC3B3BF22525BC7171C9FFFFFFFFFFFF3333BA
        3131C21010B45151C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D2DE23131E64B4B
        ED2D2DE22C2CB2FFFFFF6E6ECC5151C30707B21010B4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF1F1FD22424D82A2ADE7070DC4242E11E1EBD6E6ECC3333BA5C5CCE
        1010B46E6ECCFFFFFFFFFFFFFFFFFFFFFFFF1515C81A1ACD1F1FD2FFFFFF8181
        D06767E01818C63333BA3333BA6F6FD93131C2A2A2DEFFFFFFFFFFFFFFFFFF0E
        0EBF1212BD1515C8FFFFFFFFFFFFFFFFFF7C7CDE1818C63333BA3333BA7171D6
        4040C2A2A2DEFFFFFFFFFFFF0808B90808B90E0EBFFFFFFFFFFFFFFFFFFFFFFF
        FF6F6FD91212B83333BA3333BA6A6AD44040C27171D6FFFFFF3131C21E1EC012
        12B8FFFFFFFFFFFFFFFFFFFFFFFF8181D05050D11010B43333BA6E6ECC5C5CCE
        4E4EC93333BA3838C43838C43131C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C5C
        CE3131C21E1EB06E6ECCFFFFFF3333BA7171D64545C64040C23838C4FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF4747BF4747CA2525BC2C2CB2FFFFFFFFFFFF7171C9
        4040C26A6AD44545C63838C47171D6FFFFFFFFFFFF7171D62C2CB23838C43838
        C42525B07171C9FFFFFFFFFFFFFFFFFF7171C94747CA7C7CDE5151C34040C240
        40C23838C44040C23838C45F5FD23A3ABF6E6ECCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF7171C93333BA5F5FD27070DC7171D67171D66A6AD45F5FD23A3ABF7171
        C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E6ECC3333BA33
        33BA3333BA3333BA6E6ECCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnAcessar: TBitBtn
      Left = 193
      Top = 242
      Width = 75
      Height = 25
      Caption = 'Acessar'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF98D89A45BA4A57C15CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77CB7A45BA4AA8EDB290
        E29962C567FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF70C57039B53EA0E8A9A0E8A9B5F5BF72D37A9DDBA0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF68C36845BA4AA0E6A98EE59A84E6919D
        EFA9AFF3B94ABE50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF62C567
        39B53E98E1A184DD8F7ADE87A8EDB299ECA5ACF3B790E29962C567FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF70C37034B13890DB9979D6857FDA8B9FE6A879D685A8
        EDB291EA9EB5F5BF6CD07498D89AFFFFFFFFFFFFFFFFFFFFFFFF00960088D591
        77CB7A75D38097E0A042B94713A31584DD8F99ECA591EA9EA8EDB245BA4AFFFF
        FFFFFFFFFFFFFFFFFFFF00960079D68585D58E85D58E2FAF3262C567FFFFFF25
        AB28A0E6A987E494A0E8A987E4944ABE50FFFFFFFFFFFFFFFFFF70C57021A524
        44B64913A31568C368FFFFFFFFFFFF68C36858C45E98E1A180DD8CA5EAAE62C9
        698BD38EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF21A6218CDE958CDE957FDA8B98E1A13BB640FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FAF3290E2996BD4788CDE
        9579D68545BA4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF45B54567C96E8CDE955ACB6894DE9D58C45E88D18AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FA01085D58E66CC
        7266CC7288D59125AC2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF80CC803BB64088D59177CB7A88D59125AC2AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21A5244ABE
        5062C9694CBA5153BC54FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF61C06145B54568C368FFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnAcessarClick
      OnKeyDown = btnAcessarKeyDown
    end
  end
end
