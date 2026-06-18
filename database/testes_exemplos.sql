
use luminebd

-- Exemplo caso o usuário quiser alterar a cor do fundo
    UPDATE configuracoes 
    SET tema_escuro = 1 
    WHERE id_usuario = 1;

-- Exemplo caso o usuário quiser alterar a fonte
    UPDATE configuracoes 
    SET tamanho_fonte = 3 
    WHERE id_usuario = 1;

-- Exemplo caso o usuário quiser alterar a cor das matérias
    UPDATE configuracoes 
    SET cores_materia = JSON_SET(cores_materia, '$.matematica', '#6200ee') 
    WHERE id_usuario = 101;


-- TESTES
    select nome_escolaridade from escolaridade where usuario.escolaridade_id = escolaridade.id_escolaridade;
    select * from materia;
    select * from conteudo;
