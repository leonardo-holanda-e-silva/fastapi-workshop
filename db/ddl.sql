CREATE TABLE usuario (
    usuario_id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL,
    pode_editar BOOLEAN DEFAULT FALSE
);

CREATE TABLE quadro (
    quadro_id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT
);

CREATE TABLE usuario_quadro (
    usuario_id INTEGER NOT NULL REFERENCES usuario(usuario_id),
    quadro_id  INTEGER NOT NULL REFERENCES quadro(quadro_id),
    PRIMARY KEY (usuario_id, quadro_id)
);

CREATE TABLE cartao (
    cartao_id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT,
    estado VARCHAR(50) CHECK (estado IN ('A Fazer', 'Em Progresso', 'Concluído')),
    quadro_id  INTEGER NOT NULL REFERENCES quadro(quadro_id),
    usuario_id INTEGER NOT NULL REFERENCES usuario(usuario_id)
);

