CREATE TABLE tb_cargo (
	id INT PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	nivel VARCHAR(10),
	salario FLOAT
);

CREATE TABLE tb_departamento (
	id INT PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	sigla VARCHAR(10)
);

CREATE TABLE tb_funcionario (
	id INT,
	nome VARCHAR(30) NOT NULL,
	data_adm DATE,
	sexo CHAR(1),
	cod_cargo INT NOT NULL,
	cod_depto INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(cod_cargo) REFERENCES tb_cargo(id),
	FOREIGN KEY(cod_depto) REFERENCES tb_departamento(id)
);

INSERT INTO tb_cargo(id, nome, nivel, salario) VALUES(1, 'Analista de Sistemas', 'JR', 3000.0);
INSERT INTO tb_cargo(id, nome, nivel, salario) VALUES(2, 'Desenvolvedor', 'JR', 2500.0);
INSERT INTO tb_cargo(id, nome, nivel, salario) VALUES(3, 'Desenvolvedor', 'Pleno', 5200.0);
INSERT INTO tb_cargo(id, nome, nivel, salario) VALUES(4, 'Atendente', NULL, 1212.0);
INSERT INTO tb_cargo(id, nome, nivel, salario) VALUES(5, 'Contador', NULL, 5000.0);

INSERT INTO tb_departamento(id, nome, sigla) VALUES(1, 'Informática', 'INF');
INSERT INTO tb_departamento(id, nome, sigla) VALUES(2, 'Financeiro', 'FIN');
INSERT INTO tb_departamento(id, nome, sigla) VALUES(3, 'Recursos HUmanos', 'RH');

INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto) VALUES (1, 'Pedro Nogueira', '2021-03-12', 'M', 1, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto) VALUES (2, 'Maria Silva', '2021-04-22', 'F', 2, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto) VALUES (3, 'Rafaela Silveira', '2020-07-05', 'F', 2, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto) VALUES (4, 'Ricardo Oliveira', '2019-04-06', 'M', 5, 2);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto) VALUES (5, 'Tamara Junqueira', '2015-11-01', 'F', 3, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto) VALUES (6, 'Janete Rosa', '2021-10-01', 'F', 4, 3);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto) VALUES (7, 'Fernando Silva', '2022-04-02', 'M', 3, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto) VALUES (8, 'Rosana Vieira', '2018-08-07', 'F', 2, 1);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto) VALUES (9, 'Leandro Chaves', '2017-05-13', 'M', 5, 2);
INSERT INTO tb_funcionario(id, nome, data_adm, sexo, cod_cargo, cod_depto) VALUES (10, 'João Marques', '2021-03-15', 'M', 3, 1);
