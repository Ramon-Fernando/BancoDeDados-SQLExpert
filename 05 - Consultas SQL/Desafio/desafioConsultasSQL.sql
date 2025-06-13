-- Questão 1 

SELECT nome AS curso, numero AS turma, inicio
FROM tb_turma
INNER JOIN tb_curso ON tb_turma.curso_id = tb_curso.id

-- Questão 2

SELECT tb_curso_turma.curso, tb_curso_turma.turma, tb_aluno.nome AS aluno, tb_aluno.cpf
FROM tb_matricula
INNER JOIN (
	SELECT tb_turma.id, nome AS curso, numero AS turma
	FROM tb_turma
	INNER JOIN tb_curso ON tb_turma.curso_id = tb_curso.id
	) AS tb_curso_turma ON tb_curso_turma.id = tb_matricula.turma_id
INNER JOIN tb_aluno ON tb_matricula.aluno_id = tb_aluno.cpf

-- Questão 3

SELECT tb_avaliacao.data, tb_avaliacao.nota, tb_aluno.nome, tb_resultado.nota_obtida, ROUND((tb_resultado.nota_obtida/tb_avaliacao.nota) * 100 , 2) AS porcentagem
FROM tb_resultado
INNER JOIN tb_avaliacao ON tb_resultado.avaliacao_id = tb_avaliacao.id
INNER JOIN tb_aluno ON tb_resultado.aluno_id = tb_aluno.cpf
ORDER BY tb_avaliacao.data DESC, tb_aluno.nome ASC


-- Questão 4

SELECT tb_aluno.nome, SUM(tb_resultado.nota_obtida) AS total
FROM tb_resultado
INNER JOIN (
	SELECT tb_avaliacao.id, tb_turma.numero
	FROM tb_avaliacao
	INNER JOIN tb_turma ON tb_avaliacao.turma_id = tb_turma.id
	) AS tb_avaliacao_turma ON tb_resultado.avaliacao_id = tb_avaliacao_turma.id
INNER JOIN tb_aluno ON tb_resultado.aluno_id = tb_aluno.cpf
WHERE tb_avaliacao_turma.numero = 10
GROUP BY tb_aluno.nome









