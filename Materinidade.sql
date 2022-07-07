create database maternidade;

create table mae(
	id int primary key identity,
	nome varchar(45) not null
);

create table bebe(
	id int primary key identity,
	nome varchar(45) not null,
	[data de nascimento] date not null,
	[hora de nascimento] time not null,
	bebe_mae_id int not null,
	constraint fk_bebe_mae 
	foreign key (bebe_mae_id) references mae (id)
);




insert into mae
	values
	('Helena'),
	('Alice'),
	('Laura'),
	('Manoela'),
	('Valentina'),
	('Sophia'),
	('Isabella'),
	('Helo�sa'),
	('Luiza'),
	('J�lia'),
	('Lorena'),
	('L�via'),
	('Maria Luiza'),
	('Cec�lia'),
	('Elo�'),
	('Giovanna'),
	('Maria Clara'),
	('Mariana'),
	('Lara'),
	('Beatriz'),
	('Antonella'),
	('Maria J�lia'),
	('Emanuelly'),
	('Isadora'),
	('Ana Clara'),
	('Melissa'),
	('Ana Luiza'),
	('Maria Eduarda'),
	('Maria Alice');



insert into bebe
	values 
	('Miguel', '2022-03-01', '14:00',1),
	('Arthur', '2022-03-27', '01:00',2),
	('Th�o', '2022-03-29', '05:47',3),
	('Heitor', '2022-04-05', '02:00',4),
	('Gael', '2022-04-05', '02:00',5),
	('Davi', '2022-04-05', '02:00',6),
	('Bernardo', '2022-05-06', '08:00',7),
	('Gabriel', '2022-05-15','09:00',8), 
	('Ravi', '2022-07-12', '12:00',9),
	('Noah', '2022-07-24', '16:00',10),
	('Samuel', '2022-07-25', '16:00',11),
	('Pedro', '2022-07-26', '10:00',12),
	('Ben�cio', '2022-07-29', '17:42',13),
	('Benjamin', '2022-07-29', '18:11',14),
	('Matheus', '2022-08-01', '11:11',15),
	('Isaac', '2022-08-01', '11:11',16),
	('Anthony', '2022-08-05', '11:12',17),
	('Joaquim', '2022-08-12', '05:22',18),
	('Lucas', '2022-08-12', '08:29',19),
	('Lorenzo', '2022-08-27', '08:31',20),
	('Rafael', '2022-08-27', '13:14',21),
	('Nicolas', '2022-09-28', '13:16',22),
	('Henrique', '2022-08-30', '19:01',23),
	('Murilo', '2022-08-30', '23:59',24),
	('Jo�o Miguel', '2022-08-31', '23:40',25),
	('Lucca', '2022-08-31', '23:12',26),
	('Guilherme', '2022-08-31', '10:12',27),
	('Henry', '2022-08-31', '13:19',28),
	('Bryan', '2022-08-31', '12:57',29);

select *from mae


select b.nome "Nome do beb�", m.nome "Nome da M�e", b.[data de nascimento], b.[hora de nascimento] 
	from bebe b, mae m
		where b.bebe_mae_id = m.id and 
				b.[data de nascimento] between '2022-06-01' and '2022-06-30'
					order by b.nome asc

select b.nome "Nome do beb�", m.nome "Nome da M�e", b.[data de nascimento], b.[hora de nascimento] 
	from bebe b, mae m
		where b.bebe_mae_id = m.id 
				order by b.nome asc

select b.nome "Nome do beb�", m.nome "Nome da M�e", b.[data de nascimento], b.[hora de nascimento] 
	from bebe b, mae m
		where b.bebe_mae_id = m.id 
					order by b.nome asc

select  b.nome "Nome do beb�", m.nome "Nome da M�e", b.[data de nascimento], b.[hora de nascimento]
	from bebe b, mae m
		where b.bebe_mae_id = m.id and 
				m.nome = 'Elo�'
					