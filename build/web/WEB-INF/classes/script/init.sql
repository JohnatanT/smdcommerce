

create table usuario (
	usuario_id SERIAL PRIMARY KEY,
	login VARCHAR,
	senha VARCHAR,
	administrador boolean,
	nome VARCHAR,
	endereco VARCHAR,
	email VARCHAR
);

create table categoria (
	categoria_id SERIAL PRIMARY KEY,
	descricao VARCHAR
);


create table produto (
	produto_id SERIAL PRIMARY KEY,
	preco FLOAT,
        descricao VARCHAR,
	foto_url VARCHAR,
	quantidade INT
);

create table produto_categoria (
	id SERIAL PRIMARY KEY,
	produto_id BIGINT,
	categoria_id BIGINT,
	CONSTRAINT fk_produto FOREIGN key (produto_id) REFERENCES produto (produto_id),
	CONSTRAINT fk_categoria FOREIGN key (categoria_id) REFERENCES categoria (categoria_id)
);