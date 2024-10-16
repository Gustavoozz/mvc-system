-- Criação do banco
create database dev_db_tarde
go

use dev_db_tarde
go

-- Criação das tabelas:
create table Professor(
	ProfessorId int primary key identity,
	Nome varchar(255),
	Email varchar(255),
	Senha varchar(255)
)
go

create table Turma(
	TurmaId int primary key identity,
	Nome varchar(255),
	ProfessorId int foreign key references Professor(ProfessorId)
)
go

create table Atividade(
	AtividadeId int primary key identity,
	Descricao varchar(255),
	TurmaId int foreign key references Turma(TurmaId)
)
go

-- Popular o banco de dados:
insert into Professor(Nome, Email, Senha) values 
('Jonas', 'jonas@email.com', 'admin1234'),
('Deyverson', 'deyverson@email.com', 'admin1234'),
('Cleber', 'cleber@email.com', 'admin1234')
go

insert into Turma(Nome, ProfessorId) values 
('Dev 2025', 1),
('Cyber 2025', 2),
('Ciência de dados 2025', 3)
go

insert into Atividade(Descricao, TurmaId) values 
('Lógica de programação', 1),
('Pentest', 2),
('Estatística', 3)
go
