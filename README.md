# Tarefa 1 - Praticando SQL
Considere a seguinte tabela chamada employees:
emp_id emp_name job_title salary hire_date
1 Alice Manager 60000 2020-01-15
2 Bob Developer 50000 2019-05-20
3 Charlie Sales 45000 2021-03-10
4 Diana Manager 62000 2022-02-28
5 Eve Marketing 48000 2020-11-12

## 1. Selecione todos os funcionários.
## 2. Selecione os funcionários cujo salário é superior a 55000.
## 3. Selecione os funcionários que foram contratados depois de 2020.
## 4. Selecione os funcionários cujos nomes começam com 'A'.

Considere a tabela orders:
order_id customer_id total_amount order_date
1 101 250 2023-01-05
2 102 300 2023-02-10
3 101 150 2023-01-20
4 103 200 2023-03-15
5 102 350 2023-02-28
## 1. Calcule o total de pedidos.
## 2. Calcule o total de pedidos para cada cliente.
## 3. Liste a média e o valor total de pedidos.

# Tarefa 2 - Exercício JPA
Crie um sistema de eventos com as entidades Evento, Participante e Inscricao.
Exercício:
Evento:
● Atributos: id, nome, data, local.
● Relacionamento com Inscricao: Um evento pode ter várias inscrições.
Participante:
● Atributos: id, nome, email.
● Relacionamento com Inscricao: Um participante pode se inscrever em
vários eventos.
Inscricao (Tabela Intermediária):
● Atributos: id, dataInscricao, confirmada.
● Relacionamentos:
● Chaves estrangeiras para Evento e Participante.
● O atributo confirmada indica se a inscrição foi confirmada ou não.
Seu objetivo é criar as classes Java correspondentes para essas entidades, incluindo a
classe representando a tabela intermediária Inscricao, utilizando as anotações do JPA
para mapear os relacionamentos com as cardinalidades corretas.
