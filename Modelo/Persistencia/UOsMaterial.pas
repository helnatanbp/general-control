unit UOsMaterial;

interface


uses
    UEntidade
  , UMaterial
  , UOS
  ;

type
  TOS_MATERIAL = class(TENTIDADE)
  public
    MATERIAL       : TMATERIAL;
    OS             : TOS;
    QUANTIDADE     : INTEGER;
  end;

const

  TBL_OS_MATERIAL               = 'OS_MATERIAL ';
  FLD_OS_MATERIAL_ID_MATERIAL   = 'ID_MATERIAL ';
  FLD_OS_MATERIAL_ID_OS         = 'ID_OS';
  FLD_OS_MATERIAL_QUANTIDADE    = 'QUANIDADE';

  VW_OS_MATERIAL                    = 'VW_OS_MATERIAL';
  VW_OS_MATERIAL_ID                 = 'C�d.';
  VW_OS_MATERIAL_ID_OS              = 'C�d. OS';
  VW_OS_MATERIAL_ID_MATERIA         = 'C�d. Material';
  VW_OS_MATERIAL_DESCRICAO_MATERIA  = 'Descri��o Material';
  VW_OS_MATERIAL_QUANTIDADE         = 'Quantidade';

implementation

end.
