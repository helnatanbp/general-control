  unit UMensagens;

interface

resourcestring
  //Geral
  STR_ATENCAO                 = 'Aten��o';
  STR_CAPTION_ABA_CONSULTAS   = '%d - %s...';
  STR_TODOS                   = 'Todos';
  STR_ATUALIZADO              = 'atualizado(a)';
  STR_GRAVADO                 = 'gravado(a)';
  STR_EXCLUIDO                = 'excluido(a)';
  STR_OPERACAO_COM_SUCESSO    = '%s com c�digo %d %s com sucesso.';
  STR_ENTIDADE_NAO_ENCONTRADA = '%s com c�digo %d n�o foi encontrado(a)';

  //Entidade
  STR_ENTIDADE_GRAVADA_COM_SUCESSO    = '%s gravado(a) com sucesso! C�digo gerado: %d.';
  STR_ENTIDADE_ATUALIZADO_COM_SUCESSO = '%s atualizado(a) com sucesso!';
  STR_ENTIDADE_DESEJA_EXCLUIR         = 'Deseja realmente excluir este(a) %s?';

  //CRUD
  STR_CRUD_CABECALHO = 'Cadastro de %s';

  //Transa��o
  STR_JA_EXISTE_TRANSACAO_ATIVA   = 'N�o foi possivel abrir uma nova transa��o! Motivo: J� existe uma transa��o ativa.';
  STR_NAO_EXISTE_TRANSACAO_ATIVA  = 'N�o foi possivel %s a transa��o! Motivo: N�o existe uma transa��o ativa.';
  STR_VALIDA_TRANSACAO_ATIVA      = 'Opera��o abortada! Motivo: Para realizar esta opera��o � necess�rio ter uma transa��o ativa.';
  STR_ABORTAR                     = 'abortar';
  STR_FINALIZAR                   = 'finalizar';

  //Material
  STR_MATERIAL_DESCRICAO_NAO_INFORMADO      = 'Campo DESCRI��O n�o informado';
  STR_MATERIAL_VALOR_UNITARIO_NAO_INFORMADO = 'Campo VALOR UNIT�RIO n�o informado';

  //Cliente
  STR_CLIENTE_NOME_NAO_INFORMADO          = 'Campo NOME n�o informado';
  STR_CLIENTE_SOLICITANTE_NAO_INFORMADO   = 'Campo SOLICITANTE n�o informado';
  STR_CLIENTE_CPF_CNPJ_NAO_INFORMADO      = 'Campo CPF ou CNPJ n�o informado';
  STR_CLIENTE_TELEFONE_NAO_INFORMADO      = 'Campo TELEFONE n�o informado';
  STR_CLIENTE_CIDADE_NAO_INFORMADO        = 'Campo CIDADE n�o informado';
  STR_CLIENTE_ENDERECO_NAO_INFORMADO      = 'Campo ENDERE�O n�o informado';
  STR_CLIENTE_CPF                         = 'CPF';
  STR_CLIENTE_CNPJ                        = 'CNPJ';
  //Os
  STR_OS_CLIENTE_NAO_INFORMADO           = 'Campo CLIENTE n�o informado';
  STR_OS_EQUIPAMENTO_NAO_INFORMADO       = 'Campo EQUIPAMENTO n�o informado';
  STR_OS_DATA_ENTRADA_NAO_INFORMADO      = 'Campo DATA DE ENTRADA n�o informado';


  //Cidade
  STR_CIDADE_NOME_NAO_INFORMADO   = 'Campo CIDADE n�o informado';
  STR_CIDADE_ESTADO_NAO_INFORMADO = 'Campo ESTADO n�o informado';

  //Estado
  STR_ESTADO_PAIS_NAO_INFORMADO   = 'Campo PA�S n�o informado';
  STR_ESTADO_ESTADO_NAO_INFORMADO = 'Campo ESTADO n�o informado';
  STR_ESTADO_UF_NAO_INFORMADO     = 'Campo UF n�o informado';

  //Pais
  STR_PAIS_NAO_INFORMADO  = 'Campo PA�S n�o informado';
  STR_SIGLA_NAO_INFORMADO = 'Campo SIGLA n�o informado';

  //Equipamento
  STR_EQUIPAMENTO_NOME_NAO_INFORMADO    = 'Campo NOME n�o informado';
  STR_EQUIPAMENTO_MARCA_NAO_INFORMADO   = 'Campo MARCA n�o informado';
  STR_EQUIPAMENTO_N_SERIE_NAO_INFORMADO = 'Campo N� S�RIE n�o informado';

  //Tecnico
  STR_TECNICO_NOME_NAO_INFORMADO       = 'Campo NOME n�o inforamado';
  STR_TECNICO_VALOR_HORA_NAO_INFORMADO = 'Campo VALOR HORA n�o informado';

  //Usuario
  STR_SENHA_NAO_SEGURA           = 'Senha digitada n�o � segura, senha deve ter no m�nimo %d caracteres';
  STR_SENHAS_NAO_CONFEREM        = 'Senhas n�o conferem';
  STR_USUARIO_NOME_NAO_INFORMADO = 'Nome do usu�rio n�o foi informado';
  STR_SENHA_ATUAL_NAO_CONFERE    = 'Senha atual n�o confere';
  STR_USUSARIO_DESCRICAO_SERVICO_NAO_INFORMADO = 'Campo DESCRI��O SERVI�O n�o informado';

  //Login
  STR_USUARIO_OU_SENHA_SAO_INVALIDOS = 'Usu�rio ou senha s�o inv�lidos';

  //Os Tecnico
  STR_OS_TECNICO_HORARIO_INVALIDO   = 'ERRO. In�cio manh� n�o pode ser maior que termino manh�';
  STR_OS_TECNICO_HORARIO_INVALIDO_1 = 'ERRO. Termino manh� n�o pode ser maior que inicio tarde';
  STR_OS_TECNICO_HORARIO_INVALIDO_2 = 'ERRO. Inicio tarde n�o pode ser maior que termino tarde';

  implementation

end.
