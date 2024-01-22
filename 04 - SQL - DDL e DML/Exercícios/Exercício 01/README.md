# 💻 SQL - DDL e DML

## 📝 Exercícios

### Exercício 1 (Script DB Create)

De acordo com o esquema a seguir, faça um script de criação para o banco de dados "empresa" e suas tabelas.

tb_cargo (<ins>id</ins>, nome, nivel, salario)  
tb_departamento (<ins>id</ins>, nome, sigla)  
tb_funcionario (<ins>id</ins>, nome, data_adm, sexo, cod_cargo, cod_depto)  
    cod_cargo referencia tb_cargo  
    cod_dpto referencia tb_departamento  

### Instância
![instancia](instancia.png)

### Solução

[Clique aqui](exercicio1_scriptdb.sql)