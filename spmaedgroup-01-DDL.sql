create database spmedgroup01DDL

use spmedgroup01DDL

create table Empresa(
IdEmpresa int primary key identity,
Nome	  varchar(100) not null,
Endereço  varchar(100) not null,
Telefone  varchar(100));

create table Prontuario(
IdProntuario   int primary key identity,
Nome           varchar(100) not null,
Email          varchar(100)not null,
DataNascimento date,
RG             varchar(100)not null,
CPF            varchar(11) not null,
Telefone       varchar(100)not null,
Endereço       varchar(100)not null);

create table Especialidades(
IdEspecialidades int primary key identity,
Especialidades   varchar(100));

create table Medicos(
IdMedico int primary key identity,
CRM varchar(100) not null,
Nome varchar(100)not null,
Email varchar(100)not null,
CNPJ varchar(11)not null,
Clinica varchar(100)not null,
RazãoSocial varchar(100)not null,
Endereço varchar(100)not null,
IdEspecialidades int foreign key references Especialidades (IdEspecialidades),
IdEmpresa int foreign key references Empresa (IdEmpresa));

create table Consulta (
IdConsulta   int primary key identity,
DataConsulta datetime2,
Situação     varchar(100)not null,
IdPaciente   int foreign key references Prontuario (IdProntuario),
IdMedico     int foreign key references Medicos (IdMedico));

create table Administrador (
IdAdminstrador int primary key identity,
Nome varchar (100) not null,
CPF varchar (11) not null,
Telefone varchar(100)not null);
