create database Sp_Medical
go
use Sp_medical
go
create table Clinicas(
idClinica int primary key identity (1,1),
nomeClinica varchar (30),
RazaoSocial varchar (20),
CNPJ varchar (18),
Endereco varchar (45),
HorariodeAbertura time,
HorariodeFechamento time
);
go
create table TipoUsuario(
idTipoUsuario int primary key identity (1,1),
TipoUsuario varchar (15),
);
go
create table Especialidade(
idEspecialidade int primary key identity (1,1),
Especialidades varchar (50),
);
go
create table Usuarios(
idUsuarios int primary key identity (1,1),
idTipoUsuario int foreign key references TipoUsuario(idTipoUsuario),
nomeUsuario varchar (50),
Email varchar (40),
Senha varchar (8),
);
go
create table Endereco(
idEndereco int primary key identity (1,1),
nomeRua varchar (50),
Numero int,
Bairro varchar (30),
Cidade varchar (30),
Estado varchar (30),
CEP int,
);
go
create table Medicos(
idMedicos int primary key identity,
idUsuarios int foreign key references Usuarios(idUsuarios) not null,
idClinica int foreign key references Clinicas (idClinica) not null,
idEspecialidade int foreign key references Especialidade(idEspecialidade) not null,
CRM varchar (8) not null unique,
);
go
create table Pacientes(
idPaciente int primary key identity,
idUsuarios int foreign key references Usuarios(idUsuarios),
idendereco int foreign key references Endereco(idEndereco),
Telefone varchar (12),
DatadeNascimento date not null,
RG CHAR(9) not null unique,
CPF CHAR(11) not null unique,
);
create table Situacao(
idSituacao int primary key identity (1,1),
Situacao varchar (100),
);
go
create table Consultas(
idConsultas int primary key identity (1,1),
idMedicos int foreign key references Medicos(idMedicos),
idPaciente int foreign key references Pacientes (idPaciente),
idSituacao int foreign key references Situacao (idSituacao),
Descricao varchar (500),
DataConsulta  smalldatetime,
);
go
drop table Consultas