CREATE TABLE tb_categoria (
	id SERIAL PRIMARY KEY,
	descricao VARCHAR(20) NOT NULL
);

CREATE TABLE tb_atividade (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	descricao VARCHAR(40),
	preco FLOAT,
	categoria_id INT NOT NULL,
	FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

CREATE TABLE tb_bloco (
	id SERIAL PRIMARY KEY,
	inicio TIMESTAMP,
	fim TIMESTAMP,
	atividade_id INT NOT NULL,
	FOREIGN KEY(atividade_id) REFERENCES tb_atividade(id)
);

CREATE TABLE tb_participante(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(30) NOT NULL,
	email VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE tb_participacao(
	participante_id INT,
	atividade_id INT,
	PRIMARY KEY (participante_id, atividade_id),
	FOREIGN KEY(participante_id) REFERENCES tb_participante(id),
	FOREIGN KEY(atividade_id) REFERENCES tb_atividade(id)
);

INSERT INTO tb_categoria(descricao) VALUES('Curso');
INSERT INTO tb_categoria(descricao) VALUES('Oficina');

INSERT INTO tb_atividade(nome, descricao, preco, categoria_id) VALUES('Curso de HTML', 'Aprenda HTML de forma prática', 80.0, 1);
INSERT INTO tb_atividade(nome, descricao, preco, categoria_id) VALUES('Oficina de Github', 'Controle versões de seus projetos', 50.0, 2);

INSERT INTO tb_bloco(inicio,fim, atividade_id) VALUES('2017-09-25 08:00:00-03:00', '2017-09-25 11:00:00-03:00', 1);
INSERT INTO tb_bloco(inicio,fim, atividade_id) VALUES('2017-09-25 14:00:00-03:00', '2017-09-25 18:00:00-03:00', 2);
INSERT INTO tb_bloco(inicio,fim, atividade_id) VALUES('2017-09-26 08:00:00-03:00', '2017-09-26 11:00:00-03:00', 2);

INSERT INTO tb_participante(nome, email) VALUES('José Silva', 'jose@gmail.com');
INSERT INTO tb_participante(nome, email) VALUES('Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participante(nome, email) VALUES('Maria do Rosário', 'maria@gmail.com');
INSERT INTO tb_participante(nome, email) VALUES('Teresa Silva', 'teresa@gmail.com');

INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(1,1);
INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(1,2);
INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(2,1);
INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(3,1);
INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(3,2);
INSERT INTO tb_participacao(participante_id, atividade_id) VALUES(4,2);