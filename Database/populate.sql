-- Inserção de dados fictícios para testar a base de dados

INSERT INTO Utilizador (nome, email, password) VALUES
('Ana Silva', 'ana@email.com', '1234'),
('João Pereira', 'joao@email.com', '1234'),
('Maria Costa', 'maria@email.com', '1234');

INSERT INTO Projeto (nome, descricao, data_inicio, data_fim) VALUES
('Projeto Escola', 'Gestão de atividades escolares', '2025-01-01', '2025-06-30'),
('Projeto Trabalho', 'Organização de tarefas do trabalho', '2025-02-15', '2025-12-31');

INSERT INTO Atividade (titulo, descricao, data, concluida, projeto_id) VALUES
('Estudar Álgebra', 'Revisar matrizes e determinantes', '2025-03-10', FALSE, 1),
('Fazer relatório', 'Relatório semanal para a empresa', '2025-03-12', TRUE, 2),
('Preparar apresentação', 'Apresentação final do projeto', '2025-06-15', FALSE, 1);

INSERT INTO Participacao (utilizador_id, projeto_id, papel) VALUES
(1, 1, 'Gestor'),
(2, 1, 'Colaborador'),
(3, 2, 'Gestor');
