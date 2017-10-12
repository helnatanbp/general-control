unit URepositorioOsTecnico;

interface

uses
    URepositorioDB
  , UOsTecnico
  , SQLExpr
  , URepositorioTecnico
  , UTecnico
  , Generics.Collections
  ;

type
  TRepositorioOsTecnico = class(TRepositorioDB<TOS_TECNICO>)
  private
    FRepositorioTecnico: TRepositorioTecnico;

  protected
    procedure AtribuiDBParaEntidade (const coOS_TECNICO: TOS_TECNICO); override;
    procedure AtribuiEntidadeParaDB (const coOS_TECNICO: TOS_TECNICO;
                                     const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
    SysUtils
  , UEntidade
  ;

{ TRepositorioOsTecnico }

constructor TRepositorioOsTecnico.Create;
begin
  Inherited Create(TOS_TECNICO, TBL_OS_TECNICO, FLD_ENTIDADE_ID, STR_OS_TECNICO);
  FRepositorioTecnico := TRepositorioTecnico.Create;
end;

destructor TRepositorioOsTecnico.Destroy;
begin
  FreeAndNil(FRepositorioTecnico);
  inherited;
end;

procedure TRepositorioOsTecnico.AtribuiDBParaEntidade(
  const coOS_TECNICO: TOS_TECNICO);
begin
  inherited;
  with FSQLSelect do
  begin
    coOS_TECNICO.TECNICO           := TTECNICO(FRepositorioTecnico.Retorna(FieldByName(FLD_OS_TECNICO_ID_TECNICO).AsInteger));
    coOS_TECNICO.DATA              := FieldByName(FLD_OS_TECNICO_DATA).AsDateTime;
    coOS_TECNICO.INICIO_MANHA      := FieldByName(FLD_OS_TECNICO_INICIO_MANHA).AsDateTime;
    coOS_TECNICO.INICIO_TARDE      := FieldByName(FLD_OS_TECNICO_INICIO_TARDE).AsDateTime;
    coOS_TECNICO.TERMINO_MANHA     := FieldByName(FLD_OS_TECNICO_TERMINO_MANHA).AsDateTime;
    coOS_TECNICO.TERMINO_TARDE     := FieldByName(FLD_OS_TECNICO_TERMINO_TARDE).AsDateTime;
    coOS_TECNICO.DESCRICAO_SERVICO := FieldByName(FLD_OS_TECNICO_DESCRICAO_SERVICO).AsString;
  end;
end;

procedure TRepositorioOsTecnico.AtribuiEntidadeParaDB(
  const coOS_TECNICO: TOS_TECNICO; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_OS_TECNICO_DATA).AsDateTime              := coOS_TECNICO.DATA;
    ParamByName(FLD_OS_TECNICO_INICIO_MANHA).AsDateTime      := coOS_TECNICO.INICIO_MANHA;
    ParamByName(FLD_OS_TECNICO_INICIO_TARDE).AsDateTime      := coOS_TECNICO.INICIO_TARDE;
    ParamByName(FLD_OS_TECNICO_TERMINO_MANHA).AsDateTime     := coOS_TECNICO.TERMINO_MANHA;
    ParamByName(FLD_OS_TECNICO_TERMINO_TARDE).AsDateTime     := coOS_TECNICO.TERMINO_TARDE;
    ParamByName(FLD_OS_TECNICO_ID_OS).AsInteger              := coOS_TECNICO.OS.ID;
    ParamByName(FLD_OS_TECNICO_ID_TECNICO).AsInteger         := coOS_TECNICO.TECNICO.ID;
    ParamByName(FLD_OS_TECNICO_DESCRICAO_SERVICO).AsString   := coOS_TECNICO.DESCRICAO_SERVICO;
  end;
end;

end.
