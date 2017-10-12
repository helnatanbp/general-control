unit URepositorioOS;

interface

uses
    UOs
  , UEquipamento
  , UCliente
  , UEntidade
  , URepositorioDB
  , URepositorioCliente
  , URepositorioEquipamento
  , URepositorioOSTecnico
  , SqlExpr
  ;

type
  TRepositorioOS = class (TRepositorioDB<TOS>)
  private
    FRepositorioCliente: TRepositorioCliente;
    FRepositorioEquipamento: TRepositorioEquipamento;
    FRepositorioOSTecnico: TRepositorioOSTecnico;

  public
    constructor Create;
    destructor Destroy; override;

    procedure AtribuiDBParaEntidade (const coOS: TOS); override;
    procedure AtribuiEntidadeParaDB (const coOS: TOS;
                                     const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
   UDM
 , SysUtils
 , UOsTecnico
 ;

{TRepositorioOS}

constructor TRepositorioOS.Create;
begin
  inherited Create (TOS, TBL_OS, FLD_ENTIDADE_ID, STR_OS);
  FRepositorioCliente     := TRepositorioCliente.Create;
  FRepositorioEquipamento := TRepositorioEquipamento.Create;
  FRepositorioOSTecnico   := TRepositorioOSTecnico.Create;
end;

destructor TRepositorioOS.Destroy;
begin
  FreeAndNil(FRepositorioCliente);
  FreeAndNil(FRepositorioEquipamento);
  FreeAndNil(FRepositorioOSTecnico);
  inherited;
end;

procedure TRepositorioOS.AtribuiDBParaEntidade(const coOS: TOS);
var
  loOS_TECNICO: TOS_TECNICO;
begin
  inherited;
  with FSQLSelect do
  begin
    coOS.DATA_ENTRADA      := FieldByName(FLD_OS_DATA_ENTRADA).AsDateTime;
    coOS.CLIENTE           := TCLIENTE(
      FRepositorioCliente.Retorna(FieldByName(FLD_OS_ID_CLIENTE).AsInteger));
    coOS.EQUIPAMENTO       := TEQUIPAMENTO (
      FRepositorioEquipamento.Retorna(FieldByName(FLD_OS_ID_EQUIPAMENTO).AsInteger));

    for loOS_TECNICO in FRepositorioOSTecnico.RetornaRegistroFilhos<TOS_TECNICO>(coOS.ID, TBL_OS_TECNICO, FLD_OS_TECNICO_ID_OS) do
      coOS.TECNICOS.Add(loOS_TECNICO);;

    //for loOS_MATERIAL in RetornaRegistroFilhos(coOS.ID, TBL_OS_MATERIAL, FLD_OS_MATERIAL_ID_OS, TOS_MATERIAL) do
    //  coOS.MATERIAIS.Add(loOS_MATERIAL);
  end;
end;

procedure TRepositorioOS.AtribuiEntidadeParaDB(const coOS: TOS; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_OS_DATA_ENTRADA).AsDateTime    := coOS.DATA_ENTRADA;
    ParamByName(FLD_OS_ID_CLIENTE).AsInteger       := coOS.CLIENTE.ID;
    ParamByName(FLD_OS_ID_EQUIPAMENTO).AsInteger   := coOS.EQUIPAMENTO.ID;
  end;
end;

end.
