CREATE DATABASE IF NOT EXISTS dimuzica;

USE dimuzica;

CREATE TABLE IF NOT EXISTS usuario(
idUsuario int primary key auto_increment,
nome varchar(30),
email varchar(255),
senha varchar(255),
genero varchar(20),
check (genero in('alternativo','metal','rock'))
);

CREATE TABLE IF NOT EXISTS musica(
idMusica int primary key auto_increment,
genero varchar(20),
titulo varchar(30),
audio varchar(500)
);

SELECT * FROM usuario;

TRUNCATE usuario;

describe usuario;

        INSERT INTO usuario (nome, email, senha, genero) VALUES ('diniz', 'diniz@gmail.com', '1234@@@@', 'alternativo');
