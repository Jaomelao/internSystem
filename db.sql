
CREATE TABLE usuario(
	id_usuario INTEGER(5) PRIMARY KEY,
	admin_usuario BOOLEAN,
	nome_usuario VARCHAR(60) NOT NULL,
	senha_usuario VARCHAR(20) NOT NULL,
	email_usuario VARCHAR(60) NOT NULL
);
CREATE TABLE cargo(
	id_cargo INTEGER(5) PRIMARY KEY,
	nome_cargo VARCHAR(60) NOT NULL
);
CREATE TABLE jornada(
	id_jornada INTEGER(5) PRIMARY KEY,
	atividade_jornada TEXT(1023),
	id_usuario INTEGER(5),
	entrada_jornada TIMESTAMP,
	saida_jornada TIMESTAMP,
	FOREIGN KEY(id_usuario)
	REFERENCES usuario(id_usuario)
);
CREATE TABLE promocao(
    id_promocao INTEGER PRIMARY KEY,
	id_usuario INTEGER(5) NOT NULL,
	id_cargo INTEGER(5) NOT NULL,
	data_promocao DATE NOT NULL,
	FOREIGN KEY(id_usuario)
	REFERENCES usuario(id_usuario),
	FOREIGN KEY(id_cargo)
	REFERENCES cargo(id_cargo)
);
CREATE TABLE transacao(
	id_transacao INTEGER(5) PRIMARY KEY,
	data_transacao DATE NOT NULL,
	valor_transacao FLOAT(2) NOT NULL,
	desc_transacao TEXT NOT NULL
);
