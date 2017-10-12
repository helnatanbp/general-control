unit UFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Buttons;

type
  TfrmLogin = class(TForm)
    edUsuario: TEdit;
    edSenha: TEdit;
    lbUsuario: TLabel;
    lbSenha: TLabel;
    lbNome: TLabel;
    pnlFundo: TPanel;
    btnCancelar: TBitBtn;
    btnAcessar: TBitBtn;
    procedure btnAcessarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAcessarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private

  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses
    UUsuarioLogado
  , UDialogo
  ;

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
begin
  try
    TUsuarioLogado.Unico.RealizaLogin(edUsuario.Text, edSenha.Text);

    ModalResult := mrYes;
    CloseModal;
  except
    on E: Exception do
      TDialogo.Excecao(E);
  end;
end;

procedure TfrmLogin.btnAcessarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnAcessar.Click;
end;

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
   ModalResult := mrCancel;
   CloseModal;
end;

end.
