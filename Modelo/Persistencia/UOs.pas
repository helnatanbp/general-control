unit UOs;

interface

uses
    UEntidade
   ,UCliente
   ,UEquipamento
   ,Classes
   ;

type
  TOS = class  (TENTIDADE)
  public
    DATA_ENTRADA      : Tdate;
    CLIENTE           : TCLIENTE;
    EQUIPAMENTO       : TEQUIPAMENTO;
    TECNICOS          : TList;
    MATERIAIS         : TList;

    constructor Create;  override;
    destructor  Destroy; override;


  end;

const
  TBL_OS                   = 'OS';
  FLD_OS_DATA_ENTRADA      = 'DATA_ENTRADA';
  FLD_OS_ID_CLIENTE        = 'ID_CLIENTE';
  FLD_OS_ID_EQUIPAMENTO    = 'ID_EQUIPAMENTO';

  VW_OS                    = 'VW_OS';
  VW_OS_ID                 = 'Cód.';
  VW_OS_DATA_ENTRADA       = 'Entrada';

  VW_OS_ID_CLIENTE         = 'Cliente';
  VW_OS_ID_EQUIPAMENTO     = 'Equipamento';

resourcestring
  STR_OS = 'Os';


implementation

uses
    SysUtils
   ,Dialogs
   ;

{ TOS }

constructor TOS.Create;
begin
  inherited;
  CLIENTE:= TCLIENTE.Create;
  EQUIPAMENTO := TEQUIPAMENTO.Create;
  TECNICOS := TList.Create;
  MATERIAIS := TList.Create;
end;

destructor TOS.Destroy;
begin
  FreeAndNil(CLIENTE);
  FreeAndNil(EQUIPAMENTO);
  FreeAndNil(TECNICOS);
  FreeAndNil(MATERIAIS);
  inherited;
end;

end.
