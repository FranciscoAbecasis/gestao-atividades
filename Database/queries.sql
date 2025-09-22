-- Consultas principais da aplicação

-- 1. Listar todos os utilizadores
SELECT * FROM Utilizador;

-- 2. Listar projetos e respetivos participantes
SELECT p.nome AS Projeto, u.nome AS Utilizador, pa.papel
FROM Participacao pa
JOIN Utilizador u ON pa.utilizador_id = u.id
JOIN Projeto p ON pa.projeto_id = p.id;

-- 3. Listar atividades de um projeto específico
SELECT a.titulo, a.descricao, a.data, a.concluida
FROM Atividade a
WHERE a.projeto_id = 1;

-- 4. Contar quantas atividades estão concluídas por projeto
SELECT p.nome, COUNT(*) AS AtividadesConcluidas
FROM Atividade a
JOIN Projeto p ON a.projeto_id = p.id
WHERE a.concluida = TRUE
GROUP BY p.nome;

