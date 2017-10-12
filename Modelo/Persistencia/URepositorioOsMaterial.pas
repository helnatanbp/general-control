unit URepositorioOsMaterial;

interface

uses
    URepositorioDB
  , UOsMaterial
  , SQLExpr
  , URepositorioMaterial
  , UMaterial
  , Generics.Collections
  ;

type
  TRepositorioOsMaterial = class(TRepositorioDB<TOS_MATERIAL>)
  private
    FRepositorioMaterial: TRepositorioMaterial;

  protected
    procedure AtribuiDBParaEntidade (const coOS_MATERIAL: TOS_MATERIAL); override;
    procedure AtribuiEntidadeParaDB (const coOS_MATERIAL: TOS_MATERIAL;
                                     const coSQLQuery: TSQLQuery); override;
   public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
    SysUtils
  ;


{ TRepositorioOsMaterial }



{ TRepositorioOsMaterial }

procedure TRepositorioOsMaterial.AtribuiDBParaEntidade(
  const coOS_MATERIAL: TOS_MATERIAL);
begin
  inherited;
  with FSQLSelect do
    begin
      coOS_MATERIAL.MATERIAL    := TMaterial(FRepositorioMaterial.Retorna(FieldByName(FLD_OS_MATERIAL_ID_MATERIAL).AsInteger));
      coOS_MATERIAL.QUANTIDADE  := FieldByName(FLD_OS_MATERIAL_ID_MATERIAL).AsInteger;
    end;
end;

procedure TRepositorioOsMaterial.AtribuiEntidadeParaDB(
  const coOS_MATERIAL: TOS_MATERIAL; const coSQLQuery: TSQLQuery);
begin
  inherited;
   with coSQLQuery do
   begin
     ParamByName(FLD_OS_MATERIAL_ID_MATERIAL).AsInteger  := coOS_MATERIAL.MATERIAL.ID;
     ParamByName(FLD_OS_MATERIAL_QUANTIDADE).AsInteger   := coOS_MATERIAL.QUANTIDADE;
   end;
end;

constructor TRepositorioOsMaterial.Create;
begin
  FRepositorioMaterial := TRepositorioMaterial.Create;
end;

destructor TRepositorioOsMaterial.Destroy;
begin
    FreeAndNil(FRepositorioMaterial);
  inherited;
end;

end.
