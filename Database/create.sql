-- Criação das tabelas da base de dados para Gestão de Atividades

CREATE TABLE Utilizador (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE Projeto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE Atividade (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    data DATE,
    concluida BOOLEAN DEFAULT FALSE,
    projeto_id INT,
    FOREIGN KEY (projeto_id) REFERENCES Projeto(id)
);

CREATE TABLE Participacao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    utilizador_id INT,
    projeto_id INT,
    papel VARCHAR(50),
    FOREIGN KEY (utilizador_id) REFERENCES Utilizador(id),
    FOREIGN KEY (projeto_id) REFERENCES Projeto(id)
);

