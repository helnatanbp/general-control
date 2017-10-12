unit UFrmCadastroOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, ExtCtrls
  , UUtilitarios
  , UOS
  , UCliente
  , UEquipamento
  , URegraCRUDOs
  , URegraCRUDCliente
  , URegraCRUDEquipamento
  , URegraCRUDMaterial
  , ComCtrls
  , UTecnico
  , URegraCRUDTecnico
  , UMaterial
  , URepositorioOsTecnico
  , URepositorioMaterial
  , DB
  , DBClient
  , Provider
  , SQLExpr, Grids, DBGrids, Mask
  ;

type
  TFrmCadastroOS = class(TFrmCRUD)
    pgOrdemServico: TPageControl;
    tsGeral: TTabSheet;
    gbInformacoes: TGroupBox;
    lbDataEntrada: TLabel;
    edCliente: TLabeledEdit;
    edEquipamento: TLabeledEdit;
    edDataEntrada: TDateTimePicker;
    stNomeCliente: TStaticText;
    btnLocalizarCliente: TButton;
    stNomeEquipamento: TStaticText;
    btnLocalizaEquipamento: TButton;
    tsTecnicos: TTabSheet;
    tsMateriais: TTabSheet;
    pnlTecnicos: TPanel;
    Panel1: TPanel;
    edTecnico: TLabeledEdit;
    edData: TDateTimePicker;
    lbData: TLabel;
    btnLocalizarTecnico: TButton;
    stNomeTecnico: TStaticText;
    btnInserirOsTecnico: TBitBtn;
    btnRemoverOsTecnico: TBitBtn;
    edMaterial: TLabeledEdit;
    edQuantidade: TLabeledEdit;
    meDescricaoServico: TMemo;
    lbDescricaoServico: TLabel;
    btnRemoverOsMaterial: TBitBtn;
    btnInserirOsMaterial: TBitBtn;
    btnLocalizarMaterial: TButton;
    stDescricaoMaterial: TStaticText;
    dbgOSTecnicos: TDBGrid;
    dbgOSMateriais: TDBGrid;
    lbInicioManha: TLabel;
    edInicioManha: TMaskEdit;
    edTerminoManha: TMaskEdit;
    lbTerminoManha: TLabel;
    edInicioTarde: TMaskEdit;
    lbInicioTarde: TLabel;
    edTerminoTarde: TMaskEdit;
    lbTerminoTarde: TLabel;
    procedure edEquipamentoExit(Sender: TObject);
    procedure btnLocalizarClienteClick(Sender: TObject);
    procedure btnLocalizaEquipamentoClick(Sender: TObject);
    procedure btnLocalizarTecnicoClick(Sender: TObject);
    procedure edClienteExit(Sender: TObject);
    procedure edTecnicoExit(Sender: TObject);
    procedure btnInserirOsTecnicoClick(Sender: TObject);
    procedure btnRemoverOsTecnicoClick(Sender: TObject);
    procedure btnLocalizarMaterialClick(Sender: TObject);
    procedure btnInserirOsMaterialClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRemoverOsMaterialClick(Sender: TObject);
    procedure edMaterialExit(Sender: TObject);
  private
    FOS: TOS;
    FRegraCRUDOs: TRegraCRUDOs;
    FRegraCRUDCliente: TRegraCRUDCliente;
    FRegraCRUDTecnico: TRegraCRUDTecnico;
    FREgraCRUDMaterial: TRegraCRUDMaterial;
    FRegraCRUDEquipamento: TRegraCRUDEquipamento;
    FModoConsulta: Boolean;
    FTecnicosQuery: TSQLQuery;
    FMateriaisQuery: TSQLQuery;

  protected
    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;

    function RetonaDataSource(const csNome: String; const coQuery: TSQLQuery): TDataSource;

  public
    constructor Create(AOwner: TComponent; const cbModoConsulta: Boolean = false); reintroduce;
  end;

var
  FrmCadastroOS: TFrmCadastroOS;

implementation

{$R *.dfm}

uses
    UOpcaoPesquisa
  , UEntidade
  , UDialogo
  , UFrmPesquisa
  , StrUtils
  , UOsTecnico
  , UOsMaterial
  , UDM
  , UUsuarioLogado
  ;

{ TFrmCadastroOS }

procedure TFrmCadastroOS.btnInserirOsMaterialClick(Sender: TObject);
var
  loOS_MATERIAL : TOS_MATERIAL;
begin
  inherited;
  loOS_MATERIAL            := TOS_MATERIAL.Create;
  loOS_MATERIAL.MATERIAL   := TMaterial(FREgraCRUDMaterial.Retorna(StrToIntDef(edMaterial.Text, 0)));
  loOS_MATERIAL.QUANTIDADE := StrToInt(edQuantidade.Text);

  FRegraCRUDOs.InsereMaterial(loOS_MATERIAL);
  dbgOSMateriais.DataSource.DataSet.Refresh;

  TUtilitario.LimpaFormulario(pnlTecnicos);
  edTecnico.SetFocus;
end;

procedure TFrmCadastroOS.btnInserirOsTecnicoClick(Sender: TObject);
var
  loOS_TECNICO: TOS_TECNICO;
begin
  inherited;
  loOS_TECNICO                   := TOS_TECNICO.Create;
  loOS_TECNICO.TECNICO           := TTECNICO(FRegraCRUDTecnico.Retorna(StrToIntDef(edTecnico.Text, 0)));
  loOS_TECNICO.DATA              := edData.DateTime;
  loOS_TECNICO.INICIO_MANHA      := StrToTimeDef(edInicioManha.Text,0);
  loOS_TECNICO.TERMINO_MANHA     := StrToTime(edTerminoManha.Text);
  loOS_TECNICO.INICIO_TARDE      := StrToTime(edInicioTarde.Text);
  loOS_TECNICO.TERMINO_TARDE     := StrToTime(edTerminoTarde.Text);
  loOS_TECNICO.DESCRICAO_SERVICO := meDescricaoServico.Text;
  loOS_TECNICO.OS.ID             := StrToInt(edCodigo.Text);

  FRegraCRUDOs.InsereTecnico(loOS_TECNICO);
  dbgOSTecnicos.DataSource.DataSet.Refresh;

  TUtilitario.LimpaFormulario(pnlTecnicos);
  edTecnico.SetFocus;
  meDescricaoServico.Clear;
end;

procedure TFrmCadastroOS.btnLocalizaEquipamentoClick(Sender: TObject);
begin
  inherited;
  edEquipamento.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(VW_EQUIPAMENTO)
    .DefineNomeCampoRetorno(VW_EQUIPAMENTO_ID)
    .DefineNomePesquisa(STR_EQUIPAMENTO)
    .AdicionaFiltro(VW_EQUIPAMENTO_NOME));

  if Trim(edEquipamento.Text) <> EmptyStr then
    edEquipamento.OnExit(btnLocalizaEquipamento);
end;

procedure TFrmCadastroOS.btnLocalizarClienteClick(Sender: TObject);
begin
  inherited;
  edCliente.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(VW_CLIENTE)
    .DefineNomeCampoRetorno(VW_CLIENTE_ID)
    .DefineNomePesquisa(STR_CLIENTE)
    .AdicionaFiltro(VW_CLIENTE_NOME));

  if Trim(edCliente.Text) <> EmptyStr then
    edCliente.OnExit(btnLocalizarCliente);
end;

procedure TFrmCadastroOS.btnLocalizarMaterialClick(Sender: TObject);
begin
  inherited;
   edMaterial.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(VW_MATERIAL)
    .DefineNomeCampoRetorno(VW_MATERIAL_ID)
    .DefineNomePesquisa(STR_MATERIAL)
    .AdicionaFiltro(VW_MATERIAL_DESCRICAO));

  if Trim(edMaterial.Text) <> EmptyStr then
    edMaterial.OnExit(btnLocalizarMaterial);
end;

procedure TFrmCadastroOS.btnLocalizarTecnicoClick(Sender: TObject);
begin
  inherited;
  edTecnico.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(VW_TECNICO)
    .DefineNomeCampoRetorno(VW_TECNICO_ID)
    .DefineNomePesquisa(STR_TECNICO)
    .AdicionaFiltro(VW_TECNICO_NOME));

  if Trim(edTecnico.Text) <> EmptyStr then
    edTecnico.OnExit(btnLocalizarTecnico);
end;

procedure TFrmCadastroOS.btnRemoverOsMaterialClick(Sender: TObject);
begin
  with dbgOSMateriais.DataSource.DataSet do
  begin
    FRegraCRUDOs.RemoveMaterial(FieldByName(VW_OS_MATERIAL_ID).AsInteger);
    dbgOSMateriais.Refresh;
  end;
end;

procedure TFrmCadastroOS.btnRemoverOsTecnicoClick(Sender: TObject);
begin
   with dbgOSTecnicos.DataSource.DataSet do
  begin
    FRegraCRUDOs.RemoveTecnico(FieldByName(VW_OS_TECNICO_ID).AsInteger);
    dbgOSTecnicos.Refresh;
  end;
end;

constructor TFrmCadastroOS.Create(AOwner: TComponent; const cbModoConsulta: Boolean = false);
begin
  FModoConsulta := cbModoConsulta;
  inherited Create(AOwner);
end;

procedure TFrmCadastroOS.edClienteExit(Sender: TObject);
begin
  inherited;
  stNomeCliente.Caption := EmptyStr;
  if Trim(edCliente.Text) <> EmptyStr then
    try
      FRegraCRUDCliente.ValidaExistencia(StrToIntDef(edCliente.Text, 0));
      FOS.CLIENTE := TCLIENTE(
      FRegraCRUDCliente.Retorna(StrToIntDef(edCliente.Text, 0)));

      stNomeCliente.Caption := FOS.CLIENTE.NOME;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edCliente.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroOS.edEquipamentoExit(Sender: TObject);
begin
  stNomeEquipamento.Caption := EmptyStr;
  if Trim(edEquipamento.Text) <> EmptyStr then
    try
      FRegraCRUDEquipamento.ValidaExistencia(StrToIntDef(edEquipamento.Text, 0));
      FOS.EQUIPAMENTO := TEQUIPAMENTO(
      FRegraCRUDEquipamento.Retorna(StrToIntDef(edEquipamento.Text, 0)));

      stNomeEquipamento.Caption := FOS.EQUIPAMENTO.NOME;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edEquipamento.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroOS.edMaterialExit(Sender: TObject);
var
  loMATERIAL: TMATERIAL;
begin
  stDescricaoMaterial.Caption := EmptyStr;
  if Trim(edMaterial.Text) <> EmptyStr then
    try
      FREgraCRUDMaterial.ValidaExistencia(StrToIntDef(edMaterial.Text, 0));
      loMATERIAL := TMATERIAL(FREgraCRUDMaterial.Retorna(StrToIntDef(edMaterial.Text, 0)));

      stDescricaoMaterial.Caption := loMATERIAL.DESCRICAO;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edMaterial.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroOS.edTecnicoExit(Sender: TObject);
var
  loTECNICO: TTECNICO;
begin
  stNomeTecnico.Caption := EmptyStr;
  if Trim(edTecnico.Text) <> EmptyStr then
    try
      FRegraCRUDTecnico.ValidaExistencia(StrToIntDef(edTecnico.Text, 0));
      loTECNICO := TTECNICO(FRegraCRUDTecnico.Retorna(StrToIntDef(edTecnico.Text, 0)));

      stNomeTecnico.Caption := loTECNICO.NOME;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edTecnico.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroOS.Finaliza;
begin
  inherited;
  FreeAndNil(FRegraCRUDOs);
  FreeAndNil(FRegraCRUDCliente);
  FreeAndNil(FRegraCRUDEquipamento);
  FreeAndNil(FRegraCRUDTecnico);
  FreeAndNil(FREgraCRUDMaterial);
end;

procedure TFrmCadastroOS.FormCreate(Sender: TObject);
begin
  inherited;
  tsGeral.TabVisible           := not TUsuarioLogado.PossuiPapel(tpluTecnico);
  btnInserirOsTecnico.Enabled  := TUsuarioLogado.PossuiPapel(tpluTecnico);
  btnRemoverOsTecnico.Enabled  := TUsuarioLogado.PossuiPapel(tpluTecnico);
  btnInserirOsMaterial.Enabled := TUsuarioLogado.PossuiPapel(tpluTecnico);
  btnRemoverOsMaterial.Enabled := TUsuarioLogado.PossuiPapel(tpluTecnico);
  if tsGeral.TabVisible then
    pgOrdemServico.ActivePage := tsGeral
  else
    pgOrdemServico.ActivePage := tsTecnicos;
end;

procedure TFrmCadastroOS.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbInformacoes.Enabled := (FTipoOperacaoUsuario In [touInsercao, touAtualizacao]) and not FModoConsulta;
  btnGravar.Enabled     := btnGravar.Enabled
                       and not FModoConsulta
                       and TUsuarioLogado.PossuiAoMenosUmDosPapeis([tpluAdministrativo, tpluAuxiliarAdministrativo]);
  btnExcluir.Enabled    := btnExcluir.Enabled
                       and not FModoConsulta
                       and TUsuarioLogado.PossuiAoMenosUmDosPapeis([tpluAdministrativo, tpluAuxiliarAdministrativo]);
  btnNovo.Enabled       := btnNovo.Enabled
                       and not FModoConsulta
                       and TUsuarioLogado.PossuiAoMenosUmDosPapeis([tpluAdministrativo, tpluAuxiliarAdministrativo]);;

  lbCabecalho.Caption := IfThen(FModoConsulta, lbCabecalho.Caption + ' - SOMENTE CONSULTA', lbCabecalho.Caption);
end;

procedure TFrmCadastroOS.Inicializa;
begin
  inherited;

  DefineEntidade(@FOS, TOS);
  DefineRegraCRUD(@FRegraCRUDOs, TRegraCRUDOs);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa
    .Create
    .AdicionaFiltro(VW_OS_ID)
    .DefineNomeCampoRetorno(VW_OS_ID)
    .DefineNomePesquisa(STR_OS)
    .DefineVisao(VW_OS));

  FRegraCRUDCliente     := TRegraCRUDCliente.Create;
  FRegraCRUDEquipamento := TRegraCRUDEquipamento.Create;
  FRegraCRUDTecnico     := TRegraCRUDTecnico.Create;
  FREgraCRUDMaterial    := TRegraCRUDMaterial.Create;

  FTecnicosQuery               := TSQLQuery.Create(Self);
  FTecnicosQuery.SQLConnection := dmEntra21.SQLConnection;
  dbgOSTecnicos.DataSource     := RetonaDataSource(dbgOSTecnicos.Name, FTecnicosQuery);

  FMateriaisQuery               := TSQLQuery.Create(Self);
  FMateriaisQuery.SQLConnection := dmEntra21.SQLConnection;
  dbgOSMateriais.DataSource     := RetonaDataSource(dbgOSMateriais.Name, FMateriaisQuery);
end;

procedure TFrmCadastroOS.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  if edDataEntrada.CanFocus then
    edDataEntrada.SetFocus
  else
    edTecnico.SetFocus;
end;

procedure TFrmCadastroOS.PreencheEntidade;
begin
  inherited;
  FOS.DATA_ENTRADA      := edDataEntrada.DateTime;
end;

procedure TFrmCadastroOS.PreencheFormulario;
begin
  inherited;
  edDataEntrada.DateTime      := FOS.DATA_ENTRADA;
  edCliente.Text              := IntToStr(FOS.CLIENTE.ID);
  stNomeCliente.Caption       := FOS.CLIENTE.NOME;
  edEquipamento.Text          := IntToStr(FOS.EQUIPAMENTO.ID);
  stNomeEquipamento.Caption   := FOS.EQUIPAMENTO.NOME;
  FTecnicosQuery.CommandText  := Format('select * from vw_os_tecnico where "%s" = %d'
                                      , [VW_OS_TECNICO_ID_OS, FOS.ID]);
  FMateriaisQuery.CommandText := Format('select * from vw_os_material where "%s" = %d'
                                      , [VW_OS_MATERIAL_ID_OS, FOS.ID]);

  dbgOSTecnicos.DataSource.DataSet.Active := True;
  dbgOSTecnicos.DataSource.DataSet.Refresh;

  dbgOSMateriais.DataSource.DataSet.Active := True;
  dbgOSMateriais.DataSource.DataSet.Refresh;
end;

function TFrmCadastroOS.RetonaDataSource(const csNome: String; const coQuery: TSQLQuery): TDataSource;
var
  loDataSetProvider: TDataSetProvider;
  loClientDataSet  : TClientDataSet;
  loDataSource     : TDataSource;


begin
  loDataSetProvider         := TDataSetProvider.Create(Self);
  loDataSetProvider.Name    := CNT_DATA_SET_PROVIDER_NAME+csNome;
  loDataSetProvider.DataSet := coQuery;

  loClientDataSet              := TClientDataSet.Create(Self);
  loClientDataSet.ProviderName := CNT_DATA_SET_PROVIDER_NAME+csNome;;
  loClientDataSet.ReadOnly     := True;

  loDataSource         := TDataSource.Create(Self);
  loDataSource.DataSet := loClientDataSet;
  loDataSource.Enabled := True;

  Result := loDataSource;
end;

end.
