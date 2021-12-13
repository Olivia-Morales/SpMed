create database Sp_Med
go
use Sp_Med
go
create table Clinicas(
idClinica tinyint primary key identity (1,1),
nomeClinica varchar (30),
RazaoSocial varchar (20),
CNPJ varchar (18),
Endereco varchar (45),
HorariodeAbertura time,
HorariodeFechamento time
);
go
create table TipoUsuario(
idTipoUsuario tinyint primary key identity (1,1),
TipoUsuario varchar (15),
);
go
create table Usuarios(
idUsuarios tinyint primary key identity (1,1),
idTipoUsuario tinyint foreign key references TipoUsuario(idTipoUsuario),
nomeUsuario varchar (50),
Email varchar (40),
Senha varchar (8),
);
go
create table Medicos(
idMedicos tinyint primary key identity (1,1),
idUsuarios tinyint foreign key references Usuarios(idUsuarios),
idClinica tinyint foreign key references Clinicas (idClinica),
CRM varchar (8),
);
go
create table Pacientes(
idPaciente tinyint primary key identity (1,1),
idUsuarios tinyint foreign key references Usuarios(idUsuarios),
Telefone tinyint,
DatadeNascimento date,
Endereco varchar (50),
RG tinyint,
CPF tinyint,
);
go
create table Especialidade(
idEspecialidade tinyint primary key identity (1,1),
idMedicos tinyint foreign key references Medicos(idMedicos),
Especialidades varchar (50),
);
go
create table Situacao(
idSituacao tinyint primary key identity (1,1),
Situacao varchar (100),
);
go
create table Consultas(
idConsultas tinyint primary key identity (1,1),
idMedicos tinyint foreign key references Medicos(idMedicos),
idPaciente tinyint foreign key references Pacientes (idPaciente),
idSituacao tinyint foreign key references Situacao (idSituacao),
Descricao varchar (50),
DataConsulta  smalldatetime,
);
go

