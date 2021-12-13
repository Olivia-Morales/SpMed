use Sp_Med
go
insert into Clinicas (nomeClinica, RazaoSocial, CNPJ, Endereco, HorariodeAbertura, HorariodeFechamento )
values ('Clinica Possarle','SP Medical Group', '86.400.902/0001-30','Av. Barão Limeira, 532, São Paulo, SP', '08:00:00', '20:00:00')
go
insert into TipoUsuario (TipoUsuario)
values ('Administrador'), ('Medico'), ('Paciente')
go
insert into Usuarios (idTipoUsuario, nomeUsuario, Email, Senha)
values (2, 'Ricardo Lemos', 'ricardo.lemos@spmedicalgroup.com.br', '1234'), (2, 'Roberto Possarle',	'roberto.possarle@spmedicalgroup.com.br', '1234'),
(2, 'Helena Strada',	'helena.souza@spmedicalgroup.com.br', '1234'), (3, 'Ligia', 'ligia@gmail.com', '1234'), (3, 'Alexandre', 'alexandre@gmail.com', '1234'),
(3, 'Fernando', 'fernando@gmail.com', '1234'), (3, 'Henrique', 'henrique@gmail.com',	'1234'), (3, 'João', 'joao@hotmail.com', '1234'),
(3, 'Bruno', 'bruno@gmail.com', '1234'), (3, 'Mariana', 'mariana@outlook.com', '1234')
go
insert into Medicos (idUsuarios, idClinica, CRM)
values (1, 1, '54356-SP'), (2, 1, '53452-SP'), (3,	1, '65463-SP')
go
insert into Especialidade (idMedicos, Especialidades)
values ('Acupuntura'), (1, 'Anestesiologia'), ('Angiologia'), ('Cardiologia'), ('Cirurgia Cardiovascular'), ('Cirurgia da Mão'), ('Cirurgia do Aparelho Digestivo'), 
('Cirurgia Geral'), ('Cirurgia Pediátrica'), ('Cirurgia Plástica'), ('Cirurgia Torácica'), ('Cirurgia Vascular'), ('Dermatologia'), ('Radioterapia'), ('Urologia'), 
(3, 'Pediatria'), (2, 'Psiquiatria')
go

delete from TipoUsuario where idTipoUsuario = 6
select * from Clinicas
select * from TipoUsuario
select * from Usuarios
select * from Medicos