USE luminebd;

-- Atualização dos caminhos para imagens das matérias
UPDATE materia SET imagem_materia = 'img/matematica.webp' WHERE id = 1;
UPDATE materia SET imagem_materia = 'img/portugues.webp' WHERE id = 2;
UPDATE materia SET imagem_materia = 'img/historia.webp' WHERE id = 3;
UPDATE materia SET imagem_materia = 'img/geografia.webp' WHERE id = 4;
UPDATE materia SET imagem_materia = 'img/ciencias.webp' WHERE id = 5;
UPDATE materia SET imagem_materia = 'img/fisica.webp' WHERE id = 6;
UPDATE materia SET imagem_materia = 'img/quimica.webp' WHERE id = 7;
UPDATE materia SET imagem_materia = 'img/biologia.webp' WHERE id = 8;
UPDATE materia SET imagem_materia = 'img/ingles.webp' WHERE id = 9;
UPDATE materia SET imagem_materia = 'img/artes.webp' WHERE id = 10;
UPDATE materia SET imagem_materia = 'img/educacao_fisica.webp' WHERE id = 11;

-- Atualização das matérias adicionais (Filosofia e Sociologia) [source: 1]
UPDATE materia SET imagem_materia = 'img/filosofia.webp' WHERE id = 12;
UPDATE materia SET imagem_materia = 'img/sociologia.webp' WHERE id = 13;