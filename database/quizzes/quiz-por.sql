USE luminebd;

-- =========================================================================
-- MATÉRIA 2: PORTUGUÊS (CONTEÚDOS 13 A 22)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 13: Interpretação de Texto
-- -------------------------------------------------------------------------

-- Quiz 13.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Compreensão Básica e Ideia Central', 1, 13);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Leia: "O sol brilhava forte, mas o vento frio obrigava todos a usarem casacos." Qual é a ideia principal da frase?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Apesar do sol, fazia frio e as pessoas se agasalhavam.', 1, 0),
(@p, 'O sol estava fraco e não aquecia ninguém.', 0, 0),
(@p, 'Ninguém gostava de usar casacos no verão.', 0, 0),
(@p, 'O vento frio impediu o sol de aparecer.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um texto informativo tem como objetivo principal emocionar o leitor por meio de rimas e versos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 0, 0),
(@p, 'Falso', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamado o elemento textual que resume o assunto principal de uma notícia logo no topo? (Uma palavra)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Título', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais elementos ajudam a identificar o contexto de uma narrativa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tempo em que a história ocorre', 1, 0),
(@p, 'Espaço ou lugar dos acontecimentos', 1, 0),
(@p, 'Personagens envolvidos', 1, 0),
(@p, 'Apenas o número de páginas do livro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a estrutura clássica de uma narrativa do início ao fim:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Introdução (apresentação)', 1, 1),
(@p, 'Desenvolvimento (conflito)', 1, 2),
(@p, 'Clímax (momento de maior tensão)', 1, 3),
(@p, 'Desfecho (conclusão)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Relacione cada gênero textual à sua finalidade principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Receita culinária', 1, 1, 'Instruir o preparo de um alimento'),
(@p, 'Notícia', 1, 2, 'Informar um fato real e recente'),
(@p, 'Fábula', 1, 3, 'Narrar história curta com moral');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'No trecho "Pedro correu tanto que perdeu o fôlego", a palavra "tanto" indica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Intensidade', 1, 0),
(@p, 'Tempo', 0, 0),
(@p, 'Lugar', 0, 0),
(@p, 'Dúvida', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Inferir significa deduzir uma informação que está implícita nas entrelinhas do texto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 13.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Coesão, Coerência e Inferência', 2, 13);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Leia: "Estudou muito; contudo, não alcançou a nota mínima." O conectivo "contudo" estabelece relação de:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Oposição / Adversidade', 1, 0),
(@p, 'Conclusão', 0, 0),
(@p, 'Explicação', 0, 0),
(@p, 'Adição', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Selecione os conectivos que expressam ideia de conclusão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Portanto', 1, 0),
(@p, 'Logo', 1, 0),
(@p, 'Por conseguinte', 1, 0),
(@p, 'Todavia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um texto pode ser coeso (bem ligado gramaticalmente), mas incoerente (sem sentido lógico).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo designa a relação lógica e harmônica entre as ideias de um texto?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Coerência', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o conectivo ao seu sentido no texto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Embora', 1, 1, 'Concessão'),
(@p, 'Porque', 1, 2, 'Causa / Explicação'),
(@p, 'Portanto', 1, 3, 'Conclusão');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as frases para formar um parágrafo coerente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A chuva começou forte no fim da tarde.', 1, 1),
(@p, 'Por causa disso, o trânsito ficou lento.', 1, 2),
(@p, 'Consequentemente, muitos atrasaram-se.', 1, 3),
(@p, 'Apenas à noite o fluxo voltou ao normal.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em "Maria comprou um livro e o emprestou a João", o pronome "o" retoma:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um livro', 1, 0),
(@p, 'Maria', 0, 0),
(@p, 'João', 0, 0),
(@p, 'Comprou', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A ambiguidade é sempre um recurso positivo em textos jurídicos e manuais técnicos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 0, 0),
(@p, 'Falso', 1, 0);

-- Quiz 13.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Tipologia Textual e Funções da Linguagem', 2, 13);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual função da linguagem predomina em poemas focados na estética da mensagem?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Função Poética', 1, 0),
(@p, 'Função Referencial', 0, 0),
(@p, 'Função Fática', 0, 0),
(@p, 'Função Metalinguística', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a função da linguagem ao seu foco principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Referencial', 1, 1, 'Informação objetiva e contexto'),
(@p, 'Emotiva', 1, 2, 'Sentimentos do emissor'),
(@p, 'Conativa / Apelativa', 1, 3, 'Convencer o receptor');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um dicionário é o exemplo clássico de função metalinguística (o código explicando o próprio código).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais características pertencem ao texto dissertativo-argumentativo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Defesa de uma tese (ponto de vista)', 1, 0),
(@p, 'Uso de argumentos e dados', 1, 0),
(@p, 'Predomínio da 3ª pessoa do discurso', 1, 0),
(@p, 'Diálogos diretos entre personagens fictícios', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual função da linguagem ocorre quando testamos o canal de comunicação, como dizer "Alô, está me ouvindo?"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Fática', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas de construção de uma redação dissertativa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Apresentação do tema e da tese', 1, 1),
(@p, 'Desenvolvimento do argumento 1', 1, 2),
(@p, 'Desenvolvimento do argumento 2', 1, 3),
(@p, 'Conclusão com retomada da tese', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Propagandas comerciais utilizam majoritariamente qual função da linguagem?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Conativa (Apelativa)', 1, 0),
(@p, 'Fática', 0, 0),
(@p, 'Metalinguística', 0, 0),
(@p, 'Emotiva', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A linguagem conotativa emprega as palavras em seu sentido figurado e subjetivo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 13.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Intertextualidade e Análise Crítica', 3, 13);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando um texto reescreve outro de forma bem-humorada ou crítica, ocorre uma:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Paródia', 1, 0),
(@p, 'Paráfrase', 0, 0),
(@p, 'Epígrafe', 0, 0),
(@p, 'Citação literal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Relacione os tipos de intertextualidade às suas definições:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Paráfrase', 1, 1, 'Reprodução da ideia original com outras palavras'),
(@p, 'Paródia', 1, 2, 'Subversão crítica ou irônica do texto-fonte'),
(@p, 'Citação', 1, 3, 'Transcrição fiel marcada por aspas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A ironia consiste em dizer exatamente o oposto do que se pensa, exigindo atenção ao contexto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os fatores que garantem a textualidade segundo a linguística textual:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Intencionalidade', 1, 0),
(@p, 'Aceitabilidade', 1, 0),
(@p, 'Situacionalidade', 1, 0),
(@p, 'Rima obrigatória', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como se chama o sentido literal e dicionarizado de uma palavra, oposto ao sentido conotativo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Denotativo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de leitura crítica de um texto argumentativo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificar o tema central', 1, 1),
(@p, 'Localizar a tese do autor', 1, 2),
(@p, 'Avaliar a validade dos argumentos', 1, 3),
(@p, 'Verificar possíveis pressupostos e subentendidos', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Ele finalmente parou de fumar", o pressuposto lógico é que:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ele fumava anteriormente.', 1, 0),
(@p, 'Ele nunca fumou na vida.', 0, 0),
(@p, 'Ele voltará a fumar amanhã.', 0, 0),
(@p, 'Ele odeia cigarros desde criança.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Pressupostos são informações marcadas linguisticamente no texto, enquanto subentendidos dependem da interpretação do leitor.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 14: Ortografia
-- -------------------------------------------------------------------------

-- Quiz 14.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Uso de S, Z, X e CH', 1, 14);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Assinale a alternativa em que todas as palavras estão grafadas corretamente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pesquisa, análise, empresa', 1, 0),
(@p, 'Pesquiza, análise, empreza', 0, 0),
(@p, 'Pesquisa, análize, empresa', 0, 0),
(@p, 'Pesquiza, análize, empreza', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Após ditongos (encontro de duas vogais na mesma sílaba), emprega-se normalmente a letra X, como em "caixa" e "peixe".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Escreva corretamente a forma substantiva derivada do adjetivo "belo" (terminada em -eza):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Beleza', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais palavras abaixo são escritas corretamente com X?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Enxada', 1, 0),
(@p, 'Mexer', 1, 0),
(@p, 'Abacaxi', 1, 0),
(@p, 'Enxer (encher)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a palavra à letra que completa corretamente a lacuna:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Pure_a (substantivo abstrato)', 1, 1, 'Z'),
(@p, 'Prince_a (título feminino)', 1, 2, 'S'),
(@p, 'En_ergar (após sílaba en-)', 1, 3, 'X');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras em ordem alfabética rigorosa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Chácara', 1, 1),
(@p, 'Chave', 1, 2),
(@p, 'Xadrez', 1, 3),
(@p, 'Xícara', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a grafia correta do verbo derivado de "análise"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Analisar', 1, 0),
(@p, 'Analizar', 0, 0),
(@p, 'Anallisar', 0, 0),
(@p, 'Analissar', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A palavra "exceção" é escrita com X e Ç.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 14.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Uso dos Porquês e Homônimos', 2, 14);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Complete: "Não sei _____ ele não veio à reunião hoje."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'por que', 1, 0),
(@p, 'porque', 0, 0),
(@p, 'porquê', 0, 0),
(@p, 'por quê', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada "porquê" à sua regra de uso:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Por que', 1, 1, 'Início de perguntas ou equivalente a "pelo qual"'),
(@p, 'Porque', 1, 2, 'Conjunção explicativa ou causal (respostas)'),
(@p, 'Porquê', 1, 3, 'Substantivo acompanhado de artigo ("o porquê")');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No final de frases interrogativas, usa-se "por quê" (separado e com acento circunflexo).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases em que "mal" ou "mau" foram usados corretamente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ele é um mau motorista.', 1, 0),
(@p, 'Ela passou mal durante a viagem.', 1, 0),
(@p, 'Mal chegou em casa, começou a chover.', 1, 0),
(@p, 'O lobo mal fugiu da floresta.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a lacuna com "mas" ou "mais": "Estudou muito, _____ não passou."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'mas', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma frase gramaticalmente correta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ninguém', 1, 1),
(@p, 'entendeu', 1, 2),
(@p, 'o porquê', 1, 3),
(@p, 'daquela discussão.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual termo indica o ato de colocar algo em algum lugar ou uma vaga de emprego?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sessão', 0, 0),
(@p, 'Seção', 1, 0),
(@p, 'Cessão', 0, 0),
(@p, 'Secção', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: "A fim de" (separado) indica finalidade, enquanto "afim" (junto) indica afinidade ou semelhança.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 14.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Acentuação Gráfica', 2, 14);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual palavra abaixo é acentuada por ser uma proparoxítona?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Lâmpada', 1, 0),
(@p, 'Café', 0, 0),
(@p, 'Caráter', 0, 0),
(@p, 'Saúde', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na língua portuguesa, todas as palavras proparoxítonas são acentuadas graficamente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Selecione as palavras oxítonas que levam acento gráfico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sofá', 1, 0),
(@p, 'Vocês', 1, 0),
(@p, 'Parabéns', 1, 0),
(@p, 'Caju', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Classifique cada palavra quanto à posição da sílaba tônica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cajá', 1, 1, 'Oxítona'),
(@p, 'Fácil', 1, 2, 'Paroxítona'),
(@p, 'Médico', 1, 3, 'Proparoxítona');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual acento gráfico marca a vogal tônica fechada, como em "você" e "avô"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Circunflexo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene pela posição da sílaba tônica (da última para a antepenúltima):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Oxítona (última)', 1, 1),
(@p, 'Paroxítona (penúltima)', 1, 2),
(@p, 'Proparoxítona (antepenúltima)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a palavra "saída" recebe acento agudo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Regra do hiato (I tônico sozinho na sílaba)', 1, 0),
(@p, 'É uma proparoxítona', 0, 0),
(@p, 'É uma oxítona terminada em A', 0, 0),
(@p, 'É um monossílabo tônico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Após o Novo Acordo Ortográfico, ditongos abertos "ei" e "oi" perderam o acento em palavras paroxítonas como "ideia" e "heroico".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 14.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Novo Acordo Ortográfico e Hífen', 3, 14);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Assinale a forma correta segundo o Novo Acordo Ortográfico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Anti-inflamatório', 1, 0),
(@p, 'Antiinflamatório', 0, 0),
(@p, 'Antisocial', 0, 0),
(@p, 'Auto-escola', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando o prefixo termina com a mesma vogal com que se inicia o segundo elemento, usa-se hífen (ex.: micro-ondas).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais palavras são escritas SEM hífen e com consoante dobrada (RR ou SS)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Antissocial', 1, 0),
(@p, 'Autorretrato', 1, 0),
(@p, 'Minissaia', 1, 0),
(@p, 'Micro-ônibus', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a formação de palavras à regra do hífen:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Super-homem', 1, 1, 'Usa hífen (segundo elemento começa com H)'),
(@p, 'Autoestima', 1, 2, 'Junta tudo (vogais diferentes)'),
(@p, 'Contrarregra', 1, 3, 'Dobra o R (prefixo termina em vogal + R)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual sinal gráfico deixou de existir na língua portuguesa (exceto em nomes próprios estrangeiros) com o Novo Acordo Ortográfico?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Trema', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as letras que foram oficialmente incorporadas ao alfabeto português pelo Novo Acordo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'K', 1, 1),
(@p, 'W', 1, 2),
(@p, 'Y', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual destas palavras manteve o acento diferencial obrigatório?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pôde (passado de poder)', 1, 0),
(@p, 'Pêlo (substantivo)', 0, 0),
(@p, 'Pêra (fruta)', 0, 0),
(@p, 'Pára (verbo parar)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A palavra "dia a dia" não utiliza mais hífen segundo as regras vigentes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 15: Pontuação
-- -------------------------------------------------------------------------

-- Quiz 15.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sinais Básicos de Pontuação', 1, 15);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual sinal de pontuação encerra uma frase declarativa simples?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ponto final (.)', 1, 0),
(@p, 'Ponto de interrogação (?)', 0, 0),
(@p, 'Dois-pontos (:)', 0, 0),
(@p, 'Reticências (...)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada sinal de pontuação ao seu uso principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ponto de interrogação (?)', 1, 1, 'Perguntas diretas'),
(@p, 'Ponto de exclamação (!)', 1, 2, 'Espanto, alegria ou ordem'),
(@p, 'Reticências (...)', 1, 3, 'Interrupção de pensamento ou hesitação');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A vírgula serve para separar itens em uma enumeração (ex.: comprei maçã, banana, uva e pera).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual sinal de pontuação é usado antes de uma enumeração ou da fala direta de um personagem?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Dois-pontos', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Selecione os sinais utilizados para marcar falas no discurso direto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Travessão (—)', 1, 0),
(@p, 'Aspas (" ")', 1, 0),
(@p, 'Ponto e vírgula (;)', 0, 0),
(@p, 'Parênteses ( )', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os sinais para montar um diálogo correto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O professor perguntou:', 1, 1),
(@p, '— Todos entenderam a matéria?', 1, 2),
(@p, '— Sim, professor!', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Maria, venha cá!", a vírgula foi usada para separar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vocativo (chamamento)', 1, 0),
(@p, 'Sujeito e verbo', 0, 0),
(@p, 'Aposto explicativo', 0, 0),
(@p, 'Adjunto adverbial', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os parênteses servem para inserir explicações acessórias ou datas em um texto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 15.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Usos da Vírgula no Período Simples', 2, 15);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual regra fundamental proíbe o uso da vírgula na ordem direta da oração?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Nunca separar o sujeito do seu verbo.', 1, 0),
(@p, 'Nunca usar vírgula antes de "mas".', 0, 0),
(@p, 'Nunca isolar o vocativo.', 0, 0),
(@p, 'Nunca separar datas de locais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na frase "São Paulo, 19 de novembro de 2026", a vírgula separa corretamente o local da data.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases pontuadas CORRETAMENTE:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Brasília, capital do Brasil, foi inaugurada em 1960.', 1, 0),
(@p, 'Ontem à noite, fomos ao cinema.', 1, 0),
(@p, 'Os alunos da turma, estudaram para a prova.', 0, 0),
(@p, 'João comprou, um carro novo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o termo isolado por vírgulas à sua classificação sintática:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Dom Pedro I, imperador do Brasil, proclamou a independência.', 1, 1, 'Aposto explicativo'),
(@p, 'Filho, traga o livro para mim.', 1, 2, 'Vocativo'),
(@p, 'Na semana passada, viajamos para o litoral.', 1, 3, 'Adjunto adverbial deslocado');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo sintático explica ou especifica um substantivo anterior e vem geralmente entre vírgulas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Aposto', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os termos da oração na ordem direta (sem necessidade de vírgula):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os estudantes', 1, 1),
(@p, 'entregaram', 1, 2),
(@p, 'o trabalho', 1, 3),
(@p, 'ontem.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Uns gostam de frio; outros, de calor", a vírgula após "outros" indica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Elipse (omissão) do verbo "gostam"', 1, 0),
(@p, 'Um vocativo', 0, 0),
(@p, 'Um erro gramatical', 0, 0),
(@p, 'Uma pergunta indireta', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Expressões explicativas como "isto é", "ou seja" e "por exemplo" devem ficar entre vírgulas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 15.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ponto e Vírgula, Aspas e Travessão', 2, 15);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual sinal de pontuação representa uma pausa maior que a vírgula e menor que o ponto final?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ponto e vírgula (;)', 1, 0),
(@p, 'Dois-pontos (:)', 0, 0),
(@p, 'Hífen (-)', 0, 0),
(@p, 'Apóstrofo ('')', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Em quais situações o uso das aspas é adequado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Citações textuais de outros autores', 1, 0),
(@p, 'Destacar gírias, neologismos ou estrangeirismos', 1, 0),
(@p, 'Marcar ironia em uma palavra', 1, 0),
(@p, 'Separar sujeito e predicado', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O travessão duplo pode substituir vírgulas ou parênteses para destacar uma explicação no meio da frase.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o sinal ao contexto de aplicação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ponto e vírgula (;)', 1, 1, 'Separar itens de uma lei ou lista longa'),
(@p, 'Aspas (" ")', 1, 2, 'Indicar citação direta'),
(@p, 'Colchetes ([ ])', 1, 3, 'Inserir observação do editor dentro de citação');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual sinal gráfico de pontuação é representado por três pontos consecutivos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Reticências', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a estrutura de uma citação acadêmica simples:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Segundo Machado de Assis:', 1, 1),
(@p, '"A leitura é uma fonte inesgotável', 1, 2),
(@p, 'de prazer e conhecimento."', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Antes de conjunções adversativas deslocadas no meio da oração (ex.: "Estudou; não passou, porém"), recomenda-se usar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ponto e vírgula antes da oração e vírgulas isolando "porém"', 1, 0),
(@p, 'Apenas ponto de interrogação', 0, 0),
(@p, 'Nenhuma pontuação', 0, 0),
(@p, 'Dois-pontos após "porém"', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O ponto final é utilizado também em abreviaturas como "Sr.", "Dr." e "pág.".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 15.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Pontuação no Período Composto', 3, 15);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual a diferença de sentido entre: (1) "Os alunos, que estudaram, passaram." e (2) "Os alunos que estudaram passaram."?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Em (1) todos estudaram e passaram; em (2) apenas a parcela que estudou passou.', 1, 0),
(@p, 'Não há diferença de sentido entre as duas frases.', 0, 0),
(@p, 'A frase (1) está gramaticalmente incorreta.', 0, 0),
(@p, 'Em (2) nenhum aluno passou.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Orações subordinadas adverbiais antepostas à oração principal devem ser separadas por vírgula.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os casos em que a vírgula antes da conjunção "e" é obrigatória ou recomendada:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Quando as orações possuem sujeitos diferentes', 1, 0),
(@p, 'Quando a conjunção "e" tem valor adversativo (equivalente a "mas")', 1, 0),
(@p, 'No polissíndeto (repetição enfática do "e")', 1, 0),
(@p, 'Entre dois substantivos simples do mesmo sujeito', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Relacione a oração à regra de pontuação correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Quando o sol nasceu, partimos.', 1, 1, 'Oração adverbial anteposta (vírgula obrigatória)'),
(@p, 'O homem, que é mortal, busca sentido.', 1, 2, 'Oração adjetiva explicativa (entre vírgulas)'),
(@p, 'Quero que você vença.', 1, 3, 'Oração substantiva objetiva (sem vírgula)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo de oração subordinada adjetiva vem obrigatoriamente isolada por vírgulas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Explicativa', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as orações para formar um período composto bem pontuado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Embora estivesse cansado,', 1, 1),
(@p, 'o atleta treinou,', 1, 2),
(@p, 'superou seus limites', 1, 3),
(@p, 'e venceu a prova.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Assinale a frase em que a vírgula altera completamente o destinatário da ação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '"Não, espere!" vs "Não espere!"', 1, 0),
(@p, '"Hoje, choveu." vs "Hoje choveu."', 0, 0),
(@p, '"Sim, eu vou." vs "Eu vou, sim."', 0, 0),
(@p, '"Correu muito, cansou." vs "Correu muito e cansou."', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Orações coordenadas assindéticas (sem conjunção) são separadas entre si por vírgula.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 16: Classes Gramaticais
-- -------------------------------------------------------------------------

-- Quiz 16.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Substantivos, Adjetivos e Artigos', 1, 16);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual classe gramatical tem a função de nomear seres, objetos, lugares e sentimentos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Substantivo', 1, 0),
(@p, 'Adjetivo', 0, 0),
(@p, 'Advérbio', 0, 0),
(@p, 'Preposição', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada palavra à sua classe gramatical:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Felicidade', 1, 1, 'Substantivo abstrato'),
(@p, 'Corajoso', 1, 2, 'Adjetivo'),
(@p, 'Uns', 1, 3, 'Artigo indefinido');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O artigo definido sempre concorda em gênero e número com o substantivo que acompanha.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os substantivos coletivos abaixo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cardume (peixes)', 1, 0),
(@p, 'Alcateia (lobos)', 1, 0),
(@p, 'Arquipélago (ilhas)', 1, 0),
(@p, 'Lobo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual classe gramatical caracteriza ou atribui qualidades ao substantivo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Adjetivo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os elementos do sintagma nominal: Artigo + Substantivo + Adjetivo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os', 1, 1),
(@p, 'livros', 1, 2),
(@p, 'antigos', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "O andar de Pedro é elegante", a palavra "andar" funciona como:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Substantivo (derivação imprópria)', 1, 0),
(@p, 'Verbo no infinitivo', 0, 0),
(@p, 'Advérbio de modo', 0, 0),
(@p, 'Conjunção', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Substantivos próprios devem ser escritos com letra inicial maiúscula.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 16.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Pronomes e Numerais', 2, 16);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual pronome demonstrativo indica algo próximo da pessoa com quem se fala (2ª pessoa)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Esse / Essa / Isso', 1, 0),
(@p, 'Este / Esta / Isto', 0, 0),
(@p, 'Aquele / Aquela / Aquilo', 0, 0),
(@p, 'Meu / Minha', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Classifique cada numeral corretamente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Quinze', 1, 1, 'Cardinal'),
(@p, 'Décimo', 1, 2, 'Ordinal'),
(@p, 'Triplo', 1, 3, 'Multiplicativo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Pronomes oblíquos átonos (me, te, se, o, a, lhe) funcionam como complementos verbais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais palavras abaixo são pronomes relativos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Que', 1, 0),
(@p, 'Cujo', 1, 0),
(@p, 'Onde', 1, 0),
(@p, 'Alguém', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual pronome de tratamento é empregado para reitores de universidades?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Vossa Magnificência', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os pronomes pessoais do caso reto da 1ª à 3ª pessoa do singular:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Eu', 1, 1),
(@p, 'Tu', 1, 2),
(@p, 'Ele / Ela', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em "Ninguém compareceu à palestra", a palavra "ninguém" é um pronome:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Indefinido', 1, 0),
(@p, 'Possessivo', 0, 0),
(@p, 'Demonstrativo', 0, 0),
(@p, 'Interrogativo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O pronome relativo "cujo" estabelece relação de posse e não admite artigo depois dele (ex.: "cujo o livro" é incorreto).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 16.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Advérbios, Preposições e Conjunções', 2, 16);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual classe gramatical é INVARIÁVEL e modifica o sentido de um verbo, adjetivo ou outro advérbio?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Advérbio', 1, 0),
(@p, 'Adjetivo', 0, 0),
(@p, 'Substantivo', 0, 0),
(@p, 'Numeral', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Preposições são palavras invariáveis que ligam dois termos da oração, estabelecendo relação de dependência.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Assinale as preposições essenciais da língua portuguesa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'De', 1, 0),
(@p, 'Para', 1, 0),
(@p, 'Com', 1, 0),
(@p, 'Rápido', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada advérbio à circunstância que expressa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Calmamente', 1, 1, 'Modo'),
(@p, 'Talvez', 1, 2, 'Dúvida'),
(@p, 'Ontem', 1, 3, 'Tempo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual classe gramatical invariável tem a função de conectar orações ou termos de mesma função sintática?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Conjunção', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a frase: Sujeito + Verbo + Advérbio de modo + Advérbio de tempo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ela', 1, 1),
(@p, 'falou', 1, 2),
(@p, 'calmamente', 1, 3),
(@p, 'ontem.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Elas estão meio cansadas", a palavra "meio" é invariável porque funciona como:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Advérbio de intensidade', 1, 0),
(@p, 'Numeral fracionário', 0, 0),
(@p, 'Substantivo', 0, 0),
(@p, 'Adjetivo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A palavra "do" é a contração da preposição "de" com o artigo "o".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 16.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Morfologia Avançada e Classes Variáveis/Invariáveis', 3, 16);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quantas classes gramaticais existem na Nomenclatura Gramatical Brasileira (NGB)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '10 classes (6 variáveis e 4 invariáveis)', 1, 0),
(@p, '8 classes (4 variáveis e 4 invariáveis)', 0, 0),
(@p, '12 classes (todas variáveis)', 0, 0),
(@p, '6 classes (3 variáveis e 3 invariáveis)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais são as 4 classes gramaticais INVARIÁVEIS?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Advérbio', 1, 0),
(@p, 'Preposição', 1, 0),
(@p, 'Conjunção', 1, 0),
(@p, 'Interjeição', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A interjeição expressa emoções súbitas e equivale a uma frase completa (ex.: "Puxa!", "Socorro!").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Identifique a classe da palavra destacada "que" em cada contexto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'O livro QUE li é ótimo.', 1, 1, 'Pronome relativo'),
(@p, 'Espero QUE você venha.', 1, 2, 'Conjunção integrante'),
(@p, 'QUE lindo dia!', 1, 3, 'Advérbio de intensidade');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como se chama o processo de formação de palavras que altera a classe gramatical sem modificar a forma (ex.: "o jantar")?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Derivação imprópria', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os morfemas da palavra "infelizmente" da esquerda para a direita:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'in- (prefixo)', 1, 1),
(@p, '-feliz- (radical)', 1, 2),
(@p, '-mente (sufixo)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em "Ele comprou bastantes livros", a palavra "bastantes" é:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pronome indefinido (variável, equivalente a "muitos")', 1, 0),
(@p, 'Advérbio de intensidade', 0, 0),
(@p, 'Preposição acidental', 0, 0),
(@p, 'Conjunção coordenativa', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A palavra "a" pode funcionar como artigo definido, preposição ou pronome pessoal oblíquo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 17: Verbos
-- -------------------------------------------------------------------------

-- Quiz 17.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Tempos e Modos Verbais Básicos', 1, 17);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são as três conjugações verbais da língua portuguesa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1ª (-ar), 2ª (-er) e 3ª (-ir)', 1, 0),
(@p, '1ª (-ar), 2ª (-or) e 3ª (-ur)', 0, 0),
(@p, 'Passado, Presente e Futuro', 0, 0),
(@p, 'Indicativo, Subjuntivo e Imperativo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada modo verbal à atitude que expressa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Indicativo', 1, 1, 'Certeza e fatos reais'),
(@p, 'Subjuntivo', 1, 2, 'Dúvida, hipótese ou desejo'),
(@p, 'Imperativo', 1, 3, 'Ordem, pedido ou conselho');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O verbo "pôr" e seus derivados (compor, repor) pertencem à 2ª conjugação (-er).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as formas nominais do verbo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Infinitivo (cantar)', 1, 0),
(@p, 'Gerúndio (cantando)', 1, 0),
(@p, 'Particípio (cantado)', 1, 0),
(@p, 'Subjuntivo (cante)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual forma nominal do verbo termina em "-ndo" e indica uma ação em curso?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Gerúndio', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a linha do tempo verbal do passado mais distante ao futuro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pretérito mais-que-perfeito (cantara)', 1, 1),
(@p, 'Pretérito perfeito (cantou)', 1, 2),
(@p, 'Presente (canta)', 1, 3),
(@p, 'Futuro do presente (cantará)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Se eu estudasse mais, passaria", o verbo "estudasse" está no:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pretérito imperfeito do subjuntivo', 1, 0),
(@p, 'Presente do indicativo', 0, 0),
(@p, 'Futuro do subjuntivo', 0, 0),
(@p, 'Imperativo afirmativo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Verbos que indicam fenômenos da natureza (chover, nevar) são impessoais e não possuem sujeito.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 17.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Verbos Regulares, Irregulares e Defectivos', 2, 17);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza um verbo irregular?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sofre alterações no radical ou nas terminações ao ser conjugado.', 1, 0),
(@p, 'Mantém o radical intacto em todos os tempos.', 0, 0),
(@p, 'Só pode ser conjugado na 3ª pessoa.', 0, 0),
(@p, 'Não possui tempo presente.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Classifique cada verbo quanto à sua conjugação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cantar', 1, 1, 'Verbo regular'),
(@p, 'Fazer', 1, 2, 'Verbo irregular'),
(@p, 'Colorir', 1, 3, 'Verbo defectivo (sem 1ª pess. sing. pres.)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Verbos abundantes são aqueles que possuem mais de uma forma equivalente (como "aceitado" e "aceito").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Selecione os verbos considerados anômalos (profundas alterações no radical):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ser', 1, 0),
(@p, 'Ir', 1, 0),
(@p, 'Amar', 0, 0),
(@p, 'Partir', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete o particípio irregular correto: "A carta foi _____ pelo diretor." (verbo escrever)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'escrita', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a conjugação do verbo IR no presente do indicativo (1ª, 2ª, 3ª sing.):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Eu vou', 1, 1),
(@p, 'Tu vais', 1, 2),
(@p, 'Ele vai', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a conjugação correta do verbo "ver" na 3ª pessoa do plural do futuro do subjuntivo? ("Quando eles _____ o filme...")');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'virem', 1, 0),
(@p, 'verem', 0, 0),
(@p, 'viam', 0, 0),
(@p, 'viram', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Com os verbos auxiliares TER e HAVER, usa-se geralmente o particípio regular (ex.: "Ele tinha pagado a conta").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 17.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Vozes Verbais e Transitividade', 2, 17);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "A casa foi construída pelos pedreiros", o verbo está na:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Voz passiva analítica', 1, 0),
(@p, 'Voz ativa', 0, 0),
(@p, 'Voz reflexiva', 0, 0),
(@p, 'Voz passiva sintética', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Relacione cada frase à sua voz verbal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'O aluno leu o livro.', 1, 1, 'Voz ativa'),
(@p, 'Alugam-se apartamentos.', 1, 2, 'Voz passiva sintética'),
(@p, 'O menino cortou-se com a tesoura.', 1, 3, 'Voz reflexiva');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um verbo transitivo direto exige complemento sem preposição obrigatória (objeto direto).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os verbos de ligação típicos (que indicam estado):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ser', 1, 0),
(@p, 'Estar', 1, 0),
(@p, 'Permanecer', 1, 0),
(@p, 'Comprar', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Na voz passiva, como se chama o termo que pratica a ação sofrida pelo sujeito (ex.: "pelos pedreiros")?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Agente da passiva', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os termos para transformar "O vento derrubou a árvore" na voz passiva analítica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A árvore', 1, 1),
(@p, 'foi derrubada', 1, 2),
(@p, 'pelo vento.', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em "Obedeça aos sinais de trânsito", o verbo "obedecer" é:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Transitivo indireto', 1, 0),
(@p, 'Transitivo direto', 0, 0),
(@p, 'Intransitivo', 0, 0),
(@p, 'De ligação', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Verbos intransitivos possuem sentido completo e não exigem objeto direto ou indireto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 17.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Correlação Verbal e Imperativo', 3, 17);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Assinale a opção com correlação verbal perfeita:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Se você vier cedo, poderemos conversar.', 1, 0),
(@p, 'Se você vir cedo, poderíamos conversar.', 0, 0),
(@p, 'Se você viesse cedo, poderemos conversar.', 0, 0),
(@p, 'Quando você veio cedo, poderíamos conversar.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O imperativo negativo é inteiramente derivado do presente do subjuntivo (ex.: "Não fales", "Não fale").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases com conjugação verbal rigorosamente correta na norma culta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ele interveio na discussão com calma.', 1, 0),
(@p, 'Se ele mantiver a palavra, fecharemos acordo.', 1, 0),
(@p, 'Eles reouveram os documentos perdidos.', 1, 0),
(@p, 'Ele interviu na briga ontem.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o verbo derivado ao seu modelo primitivo de conjugação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Intervir', 1, 1, 'Conjuga-se como VIR'),
(@p, 'Reter', 1, 2, 'Conjuga-se como TER'),
(@p, 'Propor', 1, 3, 'Conjuga-se como PÔR');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a 3ª pessoa do singular do pretérito perfeito do indicativo do verbo "requerer"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Requereu', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a formação do imperativo afirmativo para "TU" a partir do presente do indicativo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Partir do presente do indicativo (Tu cantas)', 1, 1),
(@p, 'Eliminar o -S final', 1, 2),
(@p, 'Obter a forma imperativa (Canta tu)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual tempo verbal pode substituir o pretérito mais-que-perfeito simples ("ele estudara") na linguagem atual?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pretérito mais-que-perfeito composto ("ele tinha/havia estudado")', 1, 0),
(@p, 'Futuro do pretérito ("ele estudaria")', 0, 0),
(@p, 'Presente contínuo ("ele está estudando")', 0, 0),
(@p, 'Imperativo ("estude ele")', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O verbo "adequar" é defectivo, mas formas rizotônicas como "adequo" passaram a ser aceitas pelo Vocabulário Ortográfico (VOLP).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 18: Concordância Verbal
-- -------------------------------------------------------------------------

-- Quiz 18.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regra Geral e Sujeito Composto', 1, 18);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a regra geral da concordância verbal?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O verbo concorda em número e pessoa com o núcleo do sujeito.', 1, 0),
(@p, 'O verbo concorda sempre com o objeto direto.', 0, 0),
(@p, 'O verbo fica sempre no singular.', 0, 0),
(@p, 'O verbo concorda com o adjunto adverbial.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando o sujeito composto vem ANTES do verbo, o verbo vai normalmente para o plural (ex.: "Pedro e Maria viajaram").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Assinale as frases com concordância verbal CORRETA:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os livros da biblioteca chegaram hoje.', 1, 0),
(@p, 'Tu e ele viajareis amanhã (ou viajarão).', 1, 0),
(@p, 'A multidão aplaudiu o espetáculo.', 1, 0),
(@p, 'Os alunos da escola estudou muito.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o sujeito à forma verbal adequada:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Eu e tu', 1, 1, 'fomos (1ª pessoa do plural)'),
(@p, 'Tu e ele', 1, 2, 'foram (3ª pessoa do plural)'),
(@p, 'O bando de pássaros', 1, 3, 'voou (singular - núcleo "bando")');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a lacuna: "A maioria dos alunos _____ aprovada." (singular preferencial - verbo ser no passado)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'foi', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a hierarquia de prevalência das pessoas gramaticais no sujeito composto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1ª pessoa (Eu/Nós) prevalece sobre todas', 1, 1),
(@p, '2ª pessoa (Tu/Vós) prevalece sobre a 3ª', 1, 2),
(@p, '3ª pessoa (Ele/Eles) só vale se não houver 1ª nem 2ª', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando o sujeito composto vem DEPOIS do verbo ("Chegou/Chegaram o pai e o filho"), o verbo pode concordar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tanto no plural quanto no singular com o núcleo mais próximo', 1, 0),
(@p, 'Obrigatoriamente apenas no singular', 0, 0),
(@p, 'Apenas na 1ª pessoa do plural', 0, 0),
(@p, 'No infinitivo impessoal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Sujeito coletivo no singular (ex.: "O cardume") leva o verbo para o singular.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 18.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Verbos Impessoais: Haver, Fazer e Ser', 2, 18);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando o verbo HAVER tem sentido de "existir" ou "ocorrer", ele permanece:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sempre na 3ª pessoa do singular (impessoal)', 1, 0),
(@p, 'No plural se o complemento estiver no plural', 0, 0),
(@p, 'Concordando com o advérbio de lugar', 0, 0),
(@p, 'Na 1ª pessoa do plural', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A frase "Fazem dez anos que não o vejo" está incorreta; o certo é "Faz dez anos que não o vejo".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases CORRETAS quanto ao uso de Haver, Existir e Fazer:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Havia muitas pessoas na fila.', 1, 0),
(@p, 'Existiam muitas pessoas na fila.', 1, 0),
(@p, 'Deve haver soluções para o problema.', 1, 0),
(@p, 'Houveram muitos acidentes na estrada.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a frase à regra do verbo SER na indicação de horas e datas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'É uma hora da tarde.', 1, 1, 'Concorda com o numeral singular'),
(@p, 'São duas horas da tarde.', 1, 2, 'Concorda com o numeral plural'),
(@p, 'Hoje são 19 de novembro.', 1, 3, 'Concorda com o numeral da data');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete com a forma correta do verbo HAVER: "Não _____ motivos para desistir." (presente do indicativo)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'há', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os elementos para formar uma locução verbal impessoal correta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pode', 1, 1),
(@p, 'haver', 1, 2),
(@p, 'mudanças', 1, 3),
(@p, 'importantes.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o verbo auxiliar também fica no singular em "Vai fazer cinco meses"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o verbo principal "fazer" (tempo decorrido) transmite sua impessoalidade ao auxiliar.', 1, 0),
(@p, 'Porque "cinco meses" é singular.', 0, 0),
(@p, 'Porque o verbo "ir" nunca tem plural.', 0, 0),
(@p, 'Trata-se de uma exceção poética.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Diferente de "haver", o verbo "existir" é pessoal e concorda normalmente com o sujeito (ex.: "Existem problemas").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 18.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Partícula SE: Apassivadora vs Indeterminadora', 2, 18);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a forma correta na norma culta: "Vende-se casas" ou "Vendem-se casas"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vendem-se casas (pois "casas" é sujeito paciente plural).', 1, 0),
(@p, 'Vende-se casas (pois "se" torna o sujeito indeterminado).', 0, 0),
(@p, 'Ambas são igualmente aceitas na norma padrão.', 0, 0),
(@p, 'Nenhuma das duas existe em português.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em "Precisa-se de vendedores", o verbo fica no singular porque "se" é índice de indeterminação do sujeito (verbo transitivo indireto).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases com concordância CORRETA envolvendo a partícula SE:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Consertam-se bicicletas.', 1, 0),
(@p, 'Confia-se em bons profissionais.', 1, 0),
(@p, 'Alugam-se salas comerciais.', 1, 0),
(@p, 'Precisam-se de operários.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Classifique a função do "SE" e a concordância exigida:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Analisaram-se os dados.', 1, 1, 'Pronome apassivador (verbo concorda com sujeito)'),
(@p, 'Trabalha-se muito aqui.', 1, 2, 'Índice de indeterminação (verbo no singular)'),
(@p, 'Obedece-se às leis.', 1, 3, 'Índice de indeterminação (VTI no singular)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Reescreva corretamente no plural o verbo: "Faz-se carreto" -> "_____-se carretos".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Fazem', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o teste prático para saber se "Alugam-se carros" está certo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificar o verbo transitivo direto (alugar)', 1, 1),
(@p, 'Passar para a voz passiva analítica', 1, 2),
(@p, 'Verificar: "Carros são alugados" (plural confirmado)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em "Assiste-se a bons filmes neste cinema", o verbo fica no singular porque "assistir" (no sentido de ver) é:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Transitivo indireto (exige preposição A)', 1, 0),
(@p, 'Transitivo direto', 0, 0),
(@p, 'Verbo de ligação', 0, 0),
(@p, 'Impessoal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Verbos intransitivos acompanhados de "se" (ex.: "Vive-se bem aqui") ficam obrigatoriamente na 3ª pessoa do singular.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 18.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Casos Especiais: Porcentagem, Que/Quem e Nomes Próprios', 3, 18);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Complete: "Os Estados Unidos _____ uma grande economia." (sem artigo ou com artigo)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'têm (com acento circunflexo, pois há o artigo "Os")', 1, 0),
(@p, 'tem (sem acento)', 0, 0),
(@p, 'possui', 0, 0),
(@p, 'é', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em "Fui eu que paguei a conta", o verbo concorda com o antecedente "eu".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as construções aceitas pela gramática normativa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fui eu quem pagou a conta.', 1, 0),
(@p, 'Fui eu quem paguei a conta.', 1, 0),
(@p, '1% dos eleitores votou em branco.', 1, 0),
(@p, '1% dos eleitores votaram em branco.', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o caso especial à concordância adequada:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Mais de um aluno faltou.', 1, 1, 'Verbo no singular (regra geral de "mais de um")'),
(@p, 'Mais de um aluno se abraçaram.', 1, 2, 'Verbo no plural (indica reciprocidade)'),
(@p, 'Minas Gerais produz queijo.', 1, 3, 'Singular (topônimo plural sem artigo)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete com "tem" ou "têm": "Os pais _____ orgulho dos filhos."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'têm', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a concordância em expressões partitivas ("A maior parte dos jovens..."):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificar o núcleo singular (parte) e o adjunto plural (jovens)', 1, 1),
(@p, 'Opção 1: Concordar com o núcleo singular (usa internet)', 1, 2),
(@p, 'Opção 2: Concordar com o adjunto plural (usam internet)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na expressão "Haja vista os problemas enfrentados", a locução "haja vista" significa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tendo em vista / Considerando (pode ficar invariável)', 1, 0),
(@p, 'Olhar para cima', 0, 0),
(@p, 'Haverá visão futura', 0, 0),
(@p, 'Está errado e deve ser substituído por "haja visto"', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão "haja visto" não existe na língua portuguesa; o correto é sempre "haja vista".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 19: Concordância Nominal
-- -------------------------------------------------------------------------

-- Quiz 19.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regra Geral e Adjetivos Pospostos', 1, 19);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a regra geral da concordância nominal?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Artigos, adjetivos, pronomes e numerais concordam em gênero e número com o substantivo.', 1, 0),
(@p, 'Substantivos concordam com os advérbios.', 0, 0),
(@p, 'Adjetivos ficam sempre no masculino singular.', 0, 0),
(@p, 'Verbos concordam com os artigos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando um adjetivo vem ANTES de dois substantivos de gêneros diferentes (ex.: "Comprei velha mesa e cadeira"), ele concorda com o mais próximo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quando o adjetivo vem DEPOIS de substantivos de gêneros diferentes ("Comprei livro e revista..."), quais formas estão corretas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'novos (masculino plural - prevalência)', 1, 0),
(@p, 'nova (feminino singular - concordância atrativa)', 1, 0),
(@p, 'novas (feminino plural)', 0, 0),
(@p, 'novo (masculino singular)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o substantivo ao adjetivo concordado corretamente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'As alunas', 1, 1, 'dedicadas'),
(@p, 'O aluno e a aluna', 1, 2, 'dedicados'),
(@p, 'Belas', 1, 3, 'flores e jardins');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a lacuna: "Elas mesmas resolveram o problema, pois são muito _____." (adjetivo capaz no plural)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'capazes', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a concordância nominal: Artigo + Substantivo + Adjetivo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Umas', 1, 1),
(@p, 'ideias', 1, 2),
(@p, 'brilhantes', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Estudo as línguas inglesa e francesa", o substantivo "línguas" vai para o plural porque:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Há dois adjetivos modificando o mesmo substantivo sem repetição do artigo.', 1, 0),
(@p, 'É um erro de digitação.', 0, 0),
(@p, 'Língua é um substantivo invariável.', 0, 0),
(@p, 'Os adjetivos estão no singular.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A frase "Estudo a língua inglesa e a francesa" também está gramaticalmente correta.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 19.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Anexo, Incluso, Obrigado, Mesmo e Próprio', 2, 19);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Complete: "Seguem _____ ao e-mail as planilhas solicitadas."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'anexas', 1, 0),
(@p, 'anexo', 0, 0),
(@p, 'anexos', 0, 0),
(@p, 'anexa', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão "em anexo" é invariável (ex.: "As planilhas seguem em anexo").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases em que a concordância está CORRETA:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Muito obrigada, disse a diretora.', 1, 0),
(@p, 'Elas próprias organizaram o evento.', 1, 0),
(@p, 'As taxas já estão inclusas no valor.', 1, 0),
(@p, 'Muito obrigado, disse a menina.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a palavra à sua regra de concordância:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Anexo / Incluso', 1, 1, 'Concordam em gênero e número com o substantivo'),
(@p, 'Em anexo', 1, 2, 'Locução invariável'),
(@p, 'Obrigado / Obrigada', 1, 3, 'Concorda com quem agradece');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete: "Os documentos estão _____ no processo." (adjetivo incluso no plural)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'inclusos', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os termos da frase formal correta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Seguem', 1, 1),
(@p, 'anexas', 1, 2),
(@p, 'as cópias', 1, 3),
(@p, 'dos contratos.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Ela mesma fez o bolo", a palavra "mesma" funciona como:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pronome demonstrativo de reforço (variável)', 1, 0),
(@p, 'Advérbio (invariável)', 0, 0),
(@p, 'Preposição', 0, 0),
(@p, 'Conjunção', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando "mesmo" equivale a "realmente" (advérbio), ele fica invariável (ex.: "Elas viajaram mesmo").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 19.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('É Proibido, É Bom, É Necessário e Meio/Bastante', 2, 19);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Assinale a alternativa CORRETA segundo a regra das expressões "é proibido / é bom / é necessário":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É proibida a entrada de estranhos.', 1, 0),
(@p, 'É proibida entrada de estranhos.', 0, 0),
(@p, 'Água é boa para a saúde.', 0, 0),
(@p, 'Paciência é necessária hoje.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando o substantivo não vier determinado por artigo ou pronome, a expressão fica invariável (ex.: "É proibido entrada").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases com concordância nominal CORRETA:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ela bebeu meia garrafa de água.', 1, 0),
(@p, 'Ela ficou meio preocupada com a notícia.', 1, 0),
(@p, 'Havia bastantes razões para comemorar.', 1, 0),
(@p, 'Ela ficou meia preocupada.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o uso de "meio" ou "bastante" à sua classe e flexão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Meia xícara', 1, 1, 'Numeral (concorda com xícara)'),
(@p, 'Meio cansada', 1, 2, 'Advérbio (invariável - "um pouco")'),
(@p, 'Bastantes alunos', 1, 3, 'Pronome indefinido (variável - "muitos")');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete corretamente: "É _____ a leitura do edital." (com artigo "a" - adjetivo necessário)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'necessária', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o raciocínio para flexionar "bastante" na frase:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Substituir mentalmente por "muito"', 1, 1),
(@p, 'Se virar "muitos/muitas", flexionar para "bastantes"', 1, 2),
(@p, 'Se permanecer "muito", manter "bastante"', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se diz corretamente o horário 12h30?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Meio-dia e meia (referência a meia hora)', 1, 0),
(@p, 'Meio-dia e meio', 0, 0),
(@p, 'Meia-dia e meio', 0, 0),
(@p, 'Meia-dia e meia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A palavra "menos" é sempre invariável; a forma "menas" não existe na norma culta.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 19.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Casos Especiais: Alerta, Só, Quite e Cores', 3, 19);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Assinale a alternativa CORRETA quanto à concordância de nomes de cores:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Comprei duas blusas rosa (substantivo usado como adjetivo fica invariável).', 1, 0),
(@p, 'Comprei duas blusas rosas.', 0, 0),
(@p, 'Comprei dois carros verdes-claros.', 0, 0),
(@p, 'Comprei duas saias azuis-marinhos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão "a sós" é invariável, enquanto o adjetivo "só" (no sentido de sozinho) varia para "sós" no plural.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases gramaticalmente CORRETAS:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Nós estamos quites com o banco.', 1, 0),
(@p, 'Os soldados ficaram alerta durante a noite.', 1, 0),
(@p, 'Elas estavam sós na sala.', 1, 0),
(@p, 'Eu estou quites com você.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a palavra ao seu comportamento gramatical:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Quite', 1, 1, 'Adjetivo variável (eu estou quite / nós estamos quites)'),
(@p, 'Alerta', 1, 2, 'Advérbio invariável (eles estão alerta)'),
(@p, 'Pseudo-', 1, 3, 'Elemento prefixal invariável');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a concordância de cor composta: "Os ternos são _____." (azul-marinho - invariável)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'azul-marinho', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a regra de flexão de adjetivos compostos de cor (ex.: verde-claro):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O primeiro elemento fica invariável (verde-)', 1, 1),
(@p, 'Apenas o segundo elemento flexiona (-claros / -claras)', 1, 2),
(@p, 'Exceção: azul-marinho e azul-celeste são totalmente invariáveis', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Havia tal qual livro na estante" -> no plural, como fica "tal qual"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tais quais (ambos variam conforme o referente)', 1, 0),
(@p, 'Tal quais', 0, 0),
(@p, 'Tais qual', 0, 0),
(@p, 'Tal qual (invariável)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A palavra "leso" concorda em gênero e número com o substantivo seguinte (ex.: "crime de lesa-pátria", "leso-patriotismo").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 20: Regência
-- -------------------------------------------------------------------------

-- Quiz 20.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceitos Básicos de Regência Verbal e Nominal', 1, 20);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que estuda a regência na gramática?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A relação de dependência entre um termo regente (verbo ou nome) e seu complemento (com ou sem preposição).', 1, 0),
(@p, 'A pontuação de textos poéticos.', 0, 0),
(@p, 'A ortografia de palavras estrangeiras.', 0, 0),
(@p, 'A divisão silábica das palavras.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada verbo de movimento à preposição exigida na norma culta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ir (destino definitivo)', 1, 1, 'Preposição A (fui ao cinema)'),
(@p, 'Chegar (lugar)', 1, 2, 'Preposição A (cheguei ao trabalho)'),
(@p, 'Voltar (procedência)', 1, 3, 'Preposição DE (voltei de casa)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na norma culta, o verbo "chegar" exige a preposição "a" (ex.: "Chegamos ao teatro"), e não "em".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases corretas quanto à regência:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Gosto de música clássica.', 1, 0),
(@p, 'Preciso de ajuda urgente.', 1, 0),
(@p, 'Obedeça aos seus pais.', 1, 0),
(@p, 'Cheguei em casa tarde (norma culta rigorosa).', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete com a preposição correta: "Tenho orgulho _____ meu trabalho."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'de', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os elementos da estrutura de regência:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Termo regente (ex.: obedecer)', 1, 1),
(@p, 'Preposição exigida (ex.: a)', 1, 2),
(@p, 'Termo regido (ex.: às regras)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual preposição é exigida pelo adjetivo "acostumado"? ("Ele está acostumado _____ estudar cedo.")');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'a (ou com)', 1, 0),
(@p, 'contra', 0, 0),
(@p, 'sob', 0, 0),
(@p, 'perante', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na regência nominal, o termo regente é sempre um substantivo, adjetivo ou advérbio.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 20.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Verbos que Mudam de Sentido conforme a Regência', 2, 20);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "assistir o paciente" e "assistir ao filme"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sem preposição significa prestar assistência/ajudar; com preposição A significa ver/presenciar.', 1, 0),
(@p, 'Ambos significam ver televisão.', 0, 0),
(@p, 'Assistir ao filme está incorreto.', 0, 0),
(@p, 'Sem preposição significa morar.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada regência do verbo ASPIRAR ao seu significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Aspirar o ar puro (VTD)', 1, 1, 'Cheirar / sorver'),
(@p, 'Aspirar ao cargo (VTI)', 1, 2, 'Desejar / almejar');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O verbo "visar" no sentido de "ter como objetivo" exige a preposição A (ex.: "O projeto visa ao bem comum").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases com regência verbal CORRETA:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O médico assistiu o doente com dedicação.', 1, 0),
(@p, 'Nós assistimos ao jogo ontem.', 1, 0),
(@p, 'O gerente visou o cheque.', 1, 0),
(@p, 'O aluno visou o sucesso sem preposição.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete com a preposição correta: "O diretor procedeu _____ leitura da ata."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'à', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os sentidos do verbo IMPLICAR conforme a regência:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Implicar algo (VTD) = acarretar, ter como consequência', 1, 1),
(@p, 'Implicar com alguém (VTI) = antipatizar, provocar', 1, 2),
(@p, 'Implicar-se em algo (pronominal) = envolver-se', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na norma culta, a frase "Esta decisão implica em gastos extras" deve ser corrigida para:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Esta decisão implica gastos extras (VTD, sem preposição "em").', 1, 0),
(@p, 'Esta decisão implica aos gastos extras.', 0, 0),
(@p, 'Esta decisão implica de gastos extras.', 0, 0),
(@p, 'A frase original já está perfeita na norma culta.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O verbo "querer" sem preposição significa "desejar", e com preposição A significa "estimar / ter afeto" (ex.: "Quero muito aos meus amigos").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 20.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Preferir, Esquecer, Lembrar, Pagar e Namorar', 2, 20);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a construção CORRETA do verbo PREFERIR segundo a norma culta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Prefiro cinema a teatro.', 1, 0),
(@p, 'Prefiro mais cinema do que teatro.', 0, 0),
(@p, 'Prefiro cinema do que teatro.', 0, 0),
(@p, 'Prefiro mil vezes cinema que teatro.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O verbo "namorar" é transitivo direto na norma culta, dispensando a preposição "com" (ex.: "João namora Maria").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Assinale as frases CORRETAS quanto aos verbos esquecer e lembrar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Esqueci o endereço.', 1, 0),
(@p, 'Esqueci-me do endereço.', 1, 0),
(@p, 'Lembrei-me do compromisso.', 1, 0),
(@p, 'Esqueci do endereço (sem pronome).', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a regência dos verbos PAGAR e PERDOAR ao complemento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Paguei o boleto.', 1, 1, 'Objeto direto (coisa)'),
(@p, 'Paguei ao fornecedor.', 1, 2, 'Objeto indireto com preposição A (pessoa)'),
(@p, 'Perdoei a dívida ao amigo.', 1, 3, 'Transitivo direto e indireto');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a regência correta de PREFERIR: "Prefiro estudar _____ trabalhar hoje."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'a', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a regra dos verbos ESQUECER e LEMBRAR:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sem pronome (esquecer/lembrar) -> sem preposição (VTD)', 1, 1),
(@p, 'Com pronome (esquecer-se/lembrar-se) -> com preposição DE (VTI)', 1, 2);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual opção corrige adequadamente "Paguei o médico ontem"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Paguei ao médico ontem.', 1, 0),
(@p, 'Paguei pelo médico ontem.', 0, 0),
(@p, 'Paguei do médico ontem.', 0, 0),
(@p, 'Paguei com o médico ontem.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O verbo "simpatizar" não é pronominal; diz-se "Simpatizei com você" (e nunca "Simpatizei-me").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 20.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regência com Pronomes Relativos e Regência Nominal', 3, 20);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Complete corretamente: "O filme _____ assistimos ontem ganhou o Oscar."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'a que', 1, 0),
(@p, 'que', 0, 0),
(@p, 'de que', 0, 0),
(@p, 'em que', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando o verbo da oração subordinada exige preposição, essa preposição deve anteceder o pronome relativo (ex.: "A pessoa de quem gosto").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Assinale as frases com regência correta diante de pronome relativo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A cidade a que iremos fica no litoral.', 1, 0),
(@p, 'O autor cuja obra li é brasileiro.', 1, 0),
(@p, 'O cargo a que aspiro exige dedicação.', 1, 0),
(@p, 'O livro que preciso está esgotado.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o nome (substantivo/adjetivo) à preposição que ele rege:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Aversão', 1, 1, 'a / por (aversão a mentiras)'),
(@p, 'Compatível', 1, 2, 'com (compatível com o cargo)'),
(@p, 'Alheio', 1, 3, 'a (alheio aos problemas)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete com a preposição exigida: "Este remédio é nocivo _____ saúde." (preposição A + artigo A = crase)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'à', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a montagem da frase com pronome relativo e preposição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificar o verbo "precisar de"', 1, 1),
(@p, 'Deslocar a preposição "de" para antes do "que"', 1, 2),
(@p, 'Formar: "O apoio de que preciso chegou."', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a frase "O lugar onde fui ontem" é considerada inadequada na norma culta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque "onde" indica lugar fixo; para verbos de movimento usa-se "aonde" ("O lugar aonde fui").', 1, 0),
(@p, 'Porque "onde" só se usa para pessoas.', 0, 0),
(@p, 'Porque "fui" exige preposição "de".', 0, 0),
(@p, 'Não há erro nenhum na frase.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os adjetivos "ansioso", "ávido" e "desejoso" regem comumente as preposições "de" ou "por".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 21: Crase
-- -------------------------------------------------------------------------

-- Quiz 21.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fundamentos da Crase e Casos Proibidos', 1, 21);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que é a crase na língua portuguesa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A fusão da preposição "a" com o artigo definido feminino "a(s)" ou pronome demonstrativo "a(s)".', 1, 0),
(@p, 'Um sinal usado para indicar nasalização.', 0, 0),
(@p, 'O acento tônico de palavras oxítonas.', 0, 0),
(@p, 'A junção de duas consoantes iguais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nunca ocorre crase antes de palavras masculinas (ex.: "Andar a cavalo", "Pagamento a prazo").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Em quais situações o uso da crase é PROIBIDO?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Antes de verbos no infinitivo (ex.: Começou a chover)', 1, 0),
(@p, 'Antes de palavras masculinas (ex.: Venda a prazo)', 1, 0),
(@p, 'Entre palavras repetidas (ex.: Dia a dia, face a face)', 1, 0),
(@p, 'Antes de substantivos femininos determinados (ex.: Fui à escola)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a frase à justificativa da ausência de crase:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Estou disposto a ajudar.', 1, 1, 'Antes de verbo'),
(@p, 'Fomos a pé até o parque.', 1, 2, 'Antes de palavra masculina'),
(@p, 'Entreguei o prêmio a ela.', 1, 3, 'Antes de pronome pessoal');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o nome do acento gráfico (`) que indica a ocorrência da crase?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Grave', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o teste prático para confirmar a crase antes de substantivo feminino:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Trocar o substantivo feminino por um masculino equivalente', 1, 1),
(@p, 'Observar se o "a" se transforma em "ao"', 1, 2),
(@p, 'Se virar "ao", confirmar o acento grave (à)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que não há crase em "Refiro-me a pessoas honestas"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o "a" está no singular diante de uma palavra no plural (só há preposição, sem artigo).', 1, 0),
(@p, 'Porque "pessoas" é palavra masculina.', 0, 0),
(@p, 'Porque o verbo "referir-se" não pede preposição.', 0, 0),
(@p, 'Porque "honestas" é um advérbio.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Antes de artigos indefinidos ("uma", "umas"), não se usa crase (ex.: "Fui a uma festa").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 21.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Crase com Topônimos, Horas e Locuções', 2, 21);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Aplicando a regra mnemônica ("Vou a, volto da = crase há; vou a, volto de = crase pra quê?"), assinale a opção correta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fui à Bahia e depois viajei a Brasília.', 1, 0),
(@p, 'Fui a Bahia e depois viajei à Brasília.', 0, 0),
(@p, 'Fui à Bahia e depois viajei à Brasília.', 0, 0),
(@p, 'Fui a Bahia e depois viajei a Brasília.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na indicação de horas exatas e determinadas, o uso da crase é obrigatório (ex.: "A reunião começará às 14 horas").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as locuções adverbiais, prepositivas ou conjuntivas femininas que levam crase:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Às vezes', 1, 0),
(@p, 'À medida que', 1, 0),
(@p, 'À procura de', 1, 0),
(@p, 'À prazo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a expressão horária ao uso correto da crase:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Saímos ___ 18h.', 1, 1, 'às (com crase - hora exata)'),
(@p, 'Aguardamos desde ___ 18h.', 1, 2, 'as (sem crase - já há preposição "desde")'),
(@p, 'Chegaremos daqui ___ duas horas.', 1, 3, 'a (sem crase - tempo futuro)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete: "Viajaremos _____ França no próximo mês." (artigo + preposição)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'à', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o raciocínio para "Vou _____ Roma antiga":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Nomes de cidades normalmente não têm artigo (Vou a Roma)', 1, 1),
(@p, 'Porém, aqui o nome está especificado ("antiga")', 1, 2),
(@p, 'Com especificador, o artigo aparece -> "Vou à Roma antiga"', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual opção apresenta crase corretamente empregada?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O navio chegou à noite e partiu às pressas.', 1, 0),
(@p, 'O navio chegou a noite e partiu as pressas.', 0, 0),
(@p, 'O navio chegou à noite e partiu as pressas.', 0, 0),
(@p, 'O navio chegou a noite e partiu às pressas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A locução "à vista" (pagamento imediato) recebe acento grave por ser uma locução adverbial feminina.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 21.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Casos Facultativos da Crase e Pronomes Demonstrativos', 2, 21);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em qual alternativa o uso da crase é FACULTATIVO?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Entreguei o convite a / à Mariana.', 1, 0),
(@p, 'Fui à praia ontem.', 0, 0),
(@p, 'Começou a estudar cedo.', 0, 0),
(@p, 'Obedeça às leis.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais são os três casos clássicos em que a crase é FACULTATIVA?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Antes de nomes próprios femininos (a/à Paula)', 1, 0),
(@p, 'Antes de pronomes possessivos femininos no singular (a/à minha mãe)', 1, 0),
(@p, 'Depois da preposição "até" (até a / até à escola)', 1, 0),
(@p, 'Antes de verbos no gerúndio', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Ocorre crase nos pronomes demonstrativos "àquele", "àquela" e "àquilo" sempre que o termo regente exigir a preposição A.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a frase ao uso correto de "aquele" ou "àquele":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Refiro-me ___ livro.', 1, 1, 'àquele (quem se refere, refere-se A)'),
(@p, 'Comprei ___ livro ontem.', 1, 2, 'aquele (verbo transitivo direto, sem preposição)'),
(@p, 'Não dei importância ___ assunto.', 1, 3, 'àquilo (dar importância A)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete com contração de preposição A + aquela: "Fomos _____ loja ontem."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'àquela', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o teste para "Assisti _____ filme" (aquele/àquele):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Trocar "aquele" por "este"', 1, 1),
(@p, 'Verificar: "Assisti a este filme" (exige preposição A)', 1, 2),
(@p, 'Concluir que leva acento grave: "Assisti àquele filme"', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a crase é facultativa em "Dei o livro a/à minha irmã"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o uso do artigo definido antes de pronome possessivo feminino é opcional em português.', 1, 0),
(@p, 'Porque "irmã" é palavra masculina.', 0, 0),
(@p, 'Porque o verbo "dar" não pede preposição.', 0, 0),
(@p, 'Porque é uma gíria.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Mesmo diante de pronome demonstrativo masculino ("àquele"), pode haver crase, pois a fusão ocorre entre preposição A + vogal inicial A do pronome.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 21.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Crase com Casa, Terra, Distância e Locuções Subentendidas', 3, 21);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Assinale a alternativa em que o uso da crase antes da palavra "casa" está CORRETO:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Voltei à casa dos meus avós.', 1, 0),
(@p, 'Voltei à casa cansado (referindo-se ao próprio lar).', 0, 0),
(@p, 'Fui à casa almoçar.', 0, 0),
(@p, 'Cheguei à casa cedo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na expressão "à moda de", ocorre crase mesmo quando a expressão estiver subentendida diante de palavra masculina (ex.: "Bife à milanesa", "Gol à Pelé").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases com crase CORRETA:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os marinheiros voltaram a terra (oposto de bordo).', 1, 0),
(@p, 'O astronauta retornou à Terra (planeta).', 1, 0),
(@p, 'O policial ficou à distância de cem metros.', 1, 0),
(@p, 'O policial observava tudo à distância (não especificada).', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o contexto da palavra "distância" ao uso da crase:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ensino a distância', 1, 1, 'Sem crase (distância indeterminada)'),
(@p, 'Ficou à distância de 50 metros', 1, 2, 'Com crase (distância determinada)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete: "Esta caneta é semelhante _____ que comprei ontem." (preposição A + pronome demonstrativo A)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'à', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a análise da crase em "Dirigiu-se à qual todos admiravam":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O verbo "dirigir-se" exige preposição A', 1, 1),
(@p, 'O pronome relativo "a qual" contém o artigo definido A', 1, 2),
(@p, 'Fusão ocorre: "à qual"', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Fechei a porta à chave", a crase justifica-se por:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ser uma locução adverbial feminina de instrumento (evita ambiguidade).', 1, 0),
(@p, 'Chave ser palavra masculina.', 0, 0),
(@p, 'Haver um verbo oculto.', 0, 0),
(@p, 'Ser um pronome relativo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Diante do pronome relativo "que", nunca ocorre crase (ex.: "A música a que me refiro"), exceto se houver pronome demonstrativo "a" antes ("A música é igual à que ouvi").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 22: Figuras de Linguagem
-- -------------------------------------------------------------------------

-- Quiz 22.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Metáfora, Comparação e Personificação', 1, 22);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual figura de linguagem consiste em uma comparação implícita, sem o uso de conectivos comparativos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Metáfora', 1, 0),
(@p, 'Comparação (Símile)', 0, 0),
(@p, 'Hipérbole', 0, 0),
(@p, 'Onomatopeia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada frase à figura de linguagem correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Seus olhos são duas jabuticabas.', 1, 1, 'Metáfora'),
(@p, 'Seus olhos são escuros como jabuticabas.', 1, 2, 'Comparação'),
(@p, 'O vento sussurrava segredos nas árvores.', 1, 3, 'Personificação (Prosopopeia)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A prosopopeia (ou personificação) atribui ações ou sentimentos humanos a seres inanimados ou irracionais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Selecione os conectivos típicos da figura de linguagem COMPARAÇÃO:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Como', 1, 0),
(@p, 'Tal qual', 1, 0),
(@p, 'Assim como', 1, 0),
(@p, 'Portanto', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual figura de linguagem reproduz sons e ruídos da natureza ou de objetos (ex.: "tic-tac", "miau")?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Onomatopeia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a transformação de uma comparação em metáfora:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Comparação explícita: "João é forte como um touro."', 1, 1),
(@p, 'Retirada do conectivo comparativo "como"', 1, 2),
(@p, 'Metáfora resultante: "João é um touro."', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Li Machado de Assis nas férias", ocorre qual figura de linguagem (autor pela obra)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Metonímia', 1, 0),
(@p, 'Antítese', 0, 0),
(@p, 'Eufemismo', 0, 0),
(@p, 'Pleonasmo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Comprar "uma gilete" ou beber "um copo de água" são exemplos cotidianos de metonímia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 22.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Hipérbole, Eufemismo, Antítese e Paradoxo', 2, 22);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual figura de linguagem consiste no exagero intencional para enfatizar uma ideia (ex.: "Chorei um rio de lágrimas")?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Hipérbole', 1, 0),
(@p, 'Eufemismo', 0, 0),
(@p, 'Elipse', 0, 0),
(@p, 'Aliteração', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a frase à figura de linguagem presente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ele partiu desta para melhor.', 1, 1, 'Eufemismo (suavização)'),
(@p, 'O bem e o mal caminham lado a lado.', 1, 2, 'Antítese (palavras opostas)'),
(@p, 'Amor é fogo que arde sem se ver.', 1, 3, 'Paradoxo (ideia ilógica/contraditória)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O eufemismo tem a função de suavizar uma expressão considerada desagradável, chocante ou triste.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique exemplos de ANTÍTESE (aproximação de termos com sentidos opostos):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Claro e escuro', 1, 0),
(@p, 'Riso e pranto', 1, 0),
(@p, 'Vida e morte', 1, 0),
(@p, 'Subir para cima', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual figura de linguagem funde ideias contraditórias em um mesmo enunciado, gerando aparente ilogicidade (ex.: "silêncio ensurdecedor")?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Paradoxo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene do mais suave ao mais exagerado na expressão de ideias:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Eufemismo (atenua a expressão)', 1, 1),
(@p, 'Sentido literal (expressão neutra)', 1, 2),
(@p, 'Hipérbole (amplifica com exagero)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Dizer "Ele faltou com a verdade" em vez de "Ele mentiu" é um exemplo de:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Eufemismo', 1, 0),
(@p, 'Hipérbole', 0, 0),
(@p, 'Catacrese', 0, 0),
(@p, 'Sinestesia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A ironia ocorre quando se afirma o contrário do que se quer comunicar, geralmente com tom crítico ou sarcástico.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 22.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Figuras de Som e Construção (Sintaxe)', 2, 22);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "O rato roeu a roupa do rei de Roma", a repetição do som consonantal /R/ configura:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aliteração', 1, 0),
(@p, 'Assonância', 0, 0),
(@p, 'Anáfora', 0, 0),
(@p, 'Elipse', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada figura de som ou construção à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Assonância', 1, 1, 'Repetição de sons vocálicos idênticos'),
(@p, 'Aliteração', 1, 2, 'Repetição de sons consonantais idênticos'),
(@p, 'Anáfora', 1, 3, 'Repetição da mesma palavra no início de versos/frases');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A elipse consiste na omissão de um termo facilmente identificável pelo contexto (ex.: "Na sala, apenas quatro alunos" - omissão de "havia").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique figuras de construção (sintaxe):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Zeugma (omissão de termo já citado antes)', 1, 0),
(@p, 'Hipérbato (inversão brusca da ordem direta)', 1, 0),
(@p, 'Polissíndeto (repetição enfática de conjunções)', 1, 0),
(@p, 'Sinestesia (mistura de sentidos)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual figura de linguagem consiste na redundância intencional para dar ênfase (ex.: "Vi claramente visto")?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Pleonasmo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o exemplo do Hino Nacional para entender o HIPÉRBATO (inversão sintática):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verso invertido: "Ouviram do Ipiranga as margens plácidas..."', 1, 1),
(@p, 'Identificar o sujeito posposto: "as margens plácidas do Ipiranga"', 1, 2),
(@p, 'Ordem direta: "As margens plácidas do Ipiranga ouviram..."', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Ele gosta de futebol; eu, de basquete", a omissão do verbo "gosto" na segunda oração é chamada de:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Zeugma', 1, 0),
(@p, 'Anáfora', 0, 0),
(@p, 'Paronomásia', 0, 0),
(@p, 'Catacrese', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A silepse é a concordância feita com a ideia subentendida, e não com a forma gramatical (ex.: "Os brasileiros somos criativos").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 22.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sinestesia, Catacrese, Gradação e Paronomásia', 3, 22);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na expressão "um perfume doce e suave", há mistura de sensações olfativas, gustativas e táteis. Qual é essa figura?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sinestesia', 1, 0),
(@p, 'Catacrese', 0, 0),
(@p, 'Antonomásia', 0, 0),
(@p, 'Assíndeto', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A catacrese é uma metáfora desgastada pelo uso cotidiano por falta de um termo específico (ex.: "pé da mesa", "braço da cadeira").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique exemplos clássicos de CATACRESE:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dente de alho', 1, 0),
(@p, 'Céu da boca', 1, 0),
(@p, 'Asa da xícara', 1, 0),
(@p, 'Chuva de bênçãos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada figura de linguagem ao seu exemplo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Quem casa quer casa.', 1, 1, 'Paronomásia (palavras semelhantes na forma/som)'),
(@p, 'O Poeta dos Escravos (Castro Alves).', 1, 2, 'Antonomásia (substituição por apelido/atributo)'),
(@p, 'Era uma luz fria e estridente.', 1, 3, 'Sinestesia (cruzamento de sentidos)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual figura apresenta uma sequência de ideias em ordem crescente (clímax) ou decrescente (anticlímax)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Gradação', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os termos para formar uma GRADAÇÃO ascendente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Primeiro uma faísca,', 1, 1),
(@p, 'depois uma chama,', 1, 2),
(@p, 'logo uma fogueira,', 1, 3),
(@p, 'por fim um incêndio devastador.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Vossa Excelência está preocupado", ocorre silepse de:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Gênero (o pronome é feminino, mas concorda com o sexo masculino da autoridade)', 1, 0),
(@p, 'Número', 0, 0),
(@p, 'Pessoa', 0, 0),
(@p, 'Tempo verbal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A perífrase (ou antonomásia) consiste em substituir um nome por uma expressão que o identifique (ex.: "Cidade Maravilhosa" para o Rio de Janeiro).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);