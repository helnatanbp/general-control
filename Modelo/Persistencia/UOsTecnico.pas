unit UOsTecnico;

interface

uses
    UEntidade
  , UTecnico
  , UOS
  ;

type
  TOS_TECNICO = class(TENTIDADE)
  public
    TECNICO           : TTECNICO;
    OS                : TOS;
    DATA              : TDateTime;
    INICIO_MANHA      : TTime;
    TERMINO_MANHA     : TTime;
    INICIO_TARDE      : TTime;
    TERMINO_TARDE     : TTime;
    DESCRICAO_SERVICO : String;

  public
    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_OS_TECNICO                   = 'OS_TECNICO';
  FLD_OS_TECNICO_ID_TECNICO        = 'ID_TECNICO';
  FLD_OS_TECNICO_ID_OS             = 'ID_OS';
  FLD_OS_TECNICO_DATA              = 'DATA';
  FLD_OS_TECNICO_INICIO_MANHA      = 'INICIO_MANHA';
  FLD_OS_TECNICO_TERMINO_MANHA     = 'TERMINO_MANHA';
  FLD_OS_TECNICO_INICIO_TARDE      = 'INICIO_TARDE';
  FLD_OS_TECNICO_TERMINO_TARDE     = 'TERMINO_TARDE';
  FLD_OS_TECNICO_DESCRICAO_SERVICO = 'DESCRICAO_SERVICO';

  VW_OS_TECNICO                   = 'VW_OS_TECNICO';
  VW_OS_TECNICO_ID                = 'C�d.';
  VW_OS_TECNICO_ID_OS             = 'C�d. OS';
  VW_OS_TECNICO_ID_TECNICO        = 'C�d. Tecnico';
  VW_OS_TECNICO_NOME_TECNICO      = 'Nome Tecnico';
  VW_OS_TECNICO_DATA              = 'Data';
  VW_OS_TECNICO_INICIO_MANHA      = 'In�cio Manha';
  VW_OS_TECNICO_TERMINO_MANHA     = 'Termino Manha';
  VW_OS_TECNICO_INICIO_TARDE      = 'In�cio Tarde';
  VW_OS_TECNICO_TERMINO_TARDE     = 'Termino Tarde';
  VW_OS_TECNICO_DESCRICAO_SERVICO = 'Descri��o do Servi�o';

resourcestring
  STR_OS_TECNICO = 'Liga��o da OS com T�cnicos';

implementation

uses
    SysUtils
  ;

{ TOS_TECNICO }

constructor TOS_TECNICO.Create;
begin
  OS := TOS.Create;
end;

destructor TOS_TECNICO.Destroy;
begin
  if Assigned(OS) then
    FreeAndNil(OS);

  inherited;
end;

end.
