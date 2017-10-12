unit URegraCRUDOs;

interface
  uses

    URegraCRUD
  , URepositorioDB
  , UEntidade
  , UCliente
  , UEquipamento
  , UOsMaterial
  , UOsTecnico
  , UOs
  , URepositorioOs
  , URepositorioOSTecnico
  , URepositorioOSMaterial
  ;

type
  TRegraCRUDOs = class(TRegraCRUD)
  private
    FRepositorioOSMaterial: TRepositorioOSMaterial;
    FRepositorioOSTecnico: TRepositorioOSTecnico;

    procedure ValidaCliente(const coCLIENTE: TCLIENTE);
    procedure ValidaEquipamento(const coEQUIPAMENTO: TEquipamento);

  protected
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;
    procedure ValidaAtualizacao(const coENTIDADE: TENTIDADE); override;

  public
    constructor Create; override;
    destructor Destroy; override;

    procedure RemoveMaterial(const ciIdOsMaterial: Integer);
    procedure InsereMaterial(const coOS_MATERIAL: TOS_MATERIAL);

    procedure RemoveTecnico(const ciIdOsTecnico: Integer);
    procedure InsereTecnico(const coOS_TECNICO: TOS_TECNICO);
  end;

implementation

uses

    SysUtils
  , UUtilitarios
  , UMensagens
  , UConstantes
  ;

{ TRegraCRUDOs }

constructor TRegraCRUDOs.Create;
begin
  inherited;
  FRepositorioDB        := TRepositorioDB<TENTIDADE>(TRepositorioOs.Create);
  FRepositorioOSMaterial:= TRepositorioOSMaterial.Create;
  FRepositorioOSTecnico := TRepositorioOSTecnico.Create;
end;

destructor TRegraCRUDOs.Destroy;
begin
  FreeAndNil(FRepositorioOSMaterial);
  FreeAndNil(FRepositorioOSTecnico);
  inherited;
end;

procedure TRegraCRUDOs.InsereMaterial(const coOS_MATERIAL: TOS_MATERIAL);
begin
  //Validações para inserir o material na OS.
  //TO-DO

  FRepositorioOSMaterial.Insere(coOS_MATERIAL);
end;

procedure TRegraCRUDOs.InsereTecnico(const coOS_TECNICO: TOS_TECNICO);
begin
    // if (((coOS_TECNICO.INICIO_MANHA) > (coOS_TECNICO.INICIO_TARDE)) AND
      //  ((coOS_TECNICO.INICIO_MANHA) > (coOS_TECNICO.TERMINO_MANHA)) AND
        //((coOS_TECNICO.INICIO_MANHA) > (coOS_TECNICO.TERMINO_TARDE)))then
       //raise EValidacaoNegocio.Create(STR_OS_TECNICO_HORARIO_INVALIDO);

     //if (((coOS_TECNICO.TERMINO_MANHA) > (coOS_TECNICO.INICIO_TARDE)) AND
        //((coOS_TECNICO.TERMINO_MANHA)  > (coOS_TECNICO.INICIO_TARDE))) then
      // raise EValidacaoNegocio.Create(STR_OS_TECNICO_HORARIO_INVALIDO_1 );

       //if (((coOS_TECNICO.INICIO_TARDE) > (coOS_TECNICO.TERMINO_TARDE))) then
      // raise EValidacaoNegocio.Create(STR_OS_TECNICO_HORARIO_INVALIDO_2 );
  //Validações para inserir o tecnico na OS.
  //TO-DO

  FRepositorioOSTecnico.Insere(coOS_TECNICO);
end;

procedure TRegraCRUDOs.RemoveMaterial(const ciIdOsMaterial: Integer);
begin
  FRepositorioOSMaterial.Exclui(ciIdOsMaterial);
end;

procedure TRegraCRUDOs.RemoveTecnico(const ciIdOsTecnico: Integer);
begin
  FRepositorioOSTecnico.Exclui(ciIdOsTecnico)
end;

procedure TRegraCRUDOs.ValidaAtualizacao(const coENTIDADE: TENTIDADE);
begin
  with TOs(coENTIDADE) do
    begin
      ValidaCliente(CLIENTE);
    end;
end;

procedure TRegraCRUDOs.ValidaCliente(const coCLIENTE: TCLIENTE);
begin
  if (coCLIENTE = nil) or (coCLIENTE.ID = 0) then
    raise EValidacaoNegocio.Create(STR_OS_CLIENTE_NAO_INFORMADO);
end;

procedure TRegraCRUDOs.ValidaEquipamento(const coEQUIPAMENTO: TEquipamento);
begin
  if (coEQUIPAMENTO = nil) or (coEQUIPAMENTO.ID = 0) then
    raise EValidacaoNegocio.Create(STR_OS_EQUIPAMENTO_NAO_INFORMADO);
end;

procedure TRegraCRUDOs.ValidaInsercao(const coENTIDADE: TENTIDADE);
var
  coOs: TOS;
begin
  inherited;
  coOs := TOS(coENTIDADE);

  if (coOs.DATA_ENTRADA) = 0 Then
    raise EValidacaoNegocio.Create(STR_OS_DATA_ENTRADA_NAO_INFORMADO);

  ValidaCliente(coOs.CLIENTE);
  ValidaEquipamento(coOs.EQUIPAMENTO);
end;

end.
