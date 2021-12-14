use Sp_Medical
go
insert into Clinicas (nomeClinica, RazaoSocial, CNPJ, Endereco, HorariodeAbertura, HorariodeFechamento )
values ('Clinica Possarle','SP Medical Group', '86.400.902/0001-30','Av. Barão Limeira, 532, São Paulo, SP', '08:00:00', '20:00:00')
go
insert into TipoUsuario (TipoUsuario)
values ('Administrador'), ('Medico'), ('Paciente')
go
insert into Especialidade (Especialidades)
values ('Acupuntura'), ('Anestesiologia'), ('Angiologia'), ('Cardiologia'), ('Cirurgia Cardiovascular'), ('Cirurgia da Mão'), ('Cirurgia do Aparelho Digestivo'), 
('Cirurgia Geral'), ('Cirurgia Pediátrica'), ('Cirurgia Plástica'), ('Cirurgia Torácica'), ('Cirurgia Vascular'), ('Dermatologia'), ('Radioterapia'), ('Urologia'), 
('Pediatria'), ('Psiquiatria')
go
insert into Usuarios (idTipoUsuario, nomeUsuario, Email, Senha)
values (2, 'Ricardo Lemos', 'ricardo.lemos@spmedicalgroup.com.br', '1234'), (2, 'Roberto Possarle',	'roberto.possarle@spmedicalgroup.com.br', '1234'),
(2, 'Helena Strada', 'helena.souza@spmedicalgroup.com.br', '1234'), (3, 'Ligia', 'ligia@gmail.com', '1234'), (3, 'Alexandre', 'alexandre@gmail.com', '1234'),
(3, 'Fernando', 'fernando@gmail.com', '1234'), (3, 'Henrique', 'henrique@gmail.com',	'1234'), (3, 'João', 'joao@hotmail.com', '1234'),
(3, 'Bruno', 'bruno@gmail.com', '1234'), (3, 'Mariana', 'mariana@outlook.com', '1234')
go
insert into Medicos (idUsuarios, idClinica, idEspecialidade, CRM)
values (1, 1, 2,'54356-SP'), (2, 1,  17, '53452-SP'), (3, 1,  16,'65463-SP')
go
insert into Endereco (nomeRua, Numero, Bairro, Cidade, Estado, CEP)
values ('Rua Estado de Israel', 240, 'Vila Clementino', 'São Paulo', 'São Paulo',  04022000), ('Av. Paulista', 1578, 'Bela Vista', 'São Paulo', 'SP', 01310200),
('Av Ibirapuera', 2927, 'Indianópolis', 'São Paulo', 'SP' , 04029200), ('R. Vitória', 120, 'Vila Sao Jorge', 'Barueri', 'SP', 06402030), ('R. Ver Geraldo de Camargo', 66, 'Santa Luzia', 'Ribeirão Pires', 'SP', 09405380),
('Alameda dos Arapanés', 945, 'Indianópolis', 'São Paulo', 'SP', 04524001), ( 'R Sao Antonio', 232, 'Vila Universal', 'Barueri', 'SP', 06407140)
go
insert into Pacientes (idUsuarios, idendereco, Telefone, DatadeNascimento, RG, CPF)
values (4, 1, '1134567654', '13/10/1983', '435225435', '94839859000'),
(5, 2, '11987656543', '23/07/2001', '326543457', '73556944057'),
(6, 3, '11972084453', '10/10/1978', '546365253', '16839338002'),
(7, 4, '1134566543', '13/10/1985', '543663625', '14332654765'),
(8, 5, '1176566377', '27/08/1975', '532544441', '91305348010'),
(9, 6, '11954368769', '21/03/1972', '545662667', '79799299004'),
(10, 7, '0', '05/03/2018', '545662668', '13771913039')
go
insert into Situacao (Situacao)
values ('Realizada'), ('Cancelada'), ('Agendada')
go
insert into Consultas (idMedicos, idPaciente, idSituacao, Descricao, DataConsulta)
values (3, 7, 1, 'Paciente com dores na garganta', '20/01/2020 15:00:00'), (2, 2, 2, 'Null', '06/01/2020 10:00:00'), (2, 3, 1, 'Paciente com sintomas de depressão', '07/02/2020 11:00:00'), (2, 2, 1, 'Paciente com sintomas de ansiendade', '06/02/2018 10:00:00'),
(1, 5, 2, 'Null', '07/02/2019 11:00:00'), (3, 6, 3, 'Null', '08/03/2020 15:00:00'), (1, 7, 3, 'Null', '09/03/2020 11:00:00')
go



select * from Clinicas
select * from TipoUsuario
select * from Usuarios
select * from Medicos
select * from Especialidade
select * from Pacientes
select * from Situacao
select * from Consultas