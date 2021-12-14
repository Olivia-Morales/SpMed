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
(2, 'Helena Strada',	'helena.souza@spmedicalgroup.com.br', '1234'), (3, 'Ligia', 'ligia@gmail.com', '1234'), (3, 'Alexandre', 'alexandre@gmail.com', '1234'),
(3, 'Fernando', 'fernando@gmail.com', '1234'), (3, 'Henrique', 'henrique@gmail.com',	'1234'), (3, 'João', 'joao@hotmail.com', '1234'),
(3, 'Bruno', 'bruno@gmail.com', '1234'), (3, 'Mariana', 'mariana@outlook.com', '1234')
go
insert into Medicos (idUsuarios, idClinica, idEspecialidade, CRM)
values (1, 1, 2,'54356-SP'), (2, 1,  17, '53452-SP'), (3, 1,  16,'65463-SP')
go
insert into Endereco (nomeRua, Numero, Bairro, Cidade, Estado, CEP)
values ('Rua Estado de Israel',240, 'Vila Clementino', 'São Paulo', 'São Paulo',  04022-000), ('Av. Paulista', 1578, 'Bela Vista', 'São Paulo', 'SP', 01310-200),
('Av Ibirapuera', 2927, 'Indianópolis', 'São Paulo', 'SP' , 04029-200), ('R. Vitória', 120, 'Vila Sao Jorge', 'Barueri' 'SP', 06402-030), ('R Ver Geraldo de Camargo', 66, 'Santa Luzia, Ribeirão Pires', 'SP', 09405-380)
(),
go
insert into Pacientes (idUsuarios, Telefone, DatadeNascimento, Endereco, RG, CPF)
values (4, '1134567654', '10/13/1983', 'Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000', '435225435', '94839859000'),
(5, '11987656543', '7/23/2001', 'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200', '326543457', '73556944057'),
(6, '11972084453', '10/10/1978', 'Av. Ibirapuera - Indianópolis, 2927, São Paulo - SP, 04029-200', '546365253', '16839338002'),
(7, '1134566543', '10/13/1985', 'R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030', '543663625', '14332654765'),
(8, '1176566377', '8/27/1975', 'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380', '532544441', '91305348010'),
(9, '11954368769', '3/21/1972', 'Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001', '545662667', '79799299004'),
(10, '0', '03/05/2018', 'R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140', '545662668', '13771913039')
go



select * from Clinicas
select * from TipoUsuario
select * from Usuarios
select * from Medicos
select * from Especialidade
select * from Pacientes
