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

CREATE TABLE musica(
idMusica int primary key auto_increment,
foto varchar(500),
audio varchar(500)
);

SELECT * FROM usuario;

describe usuario;

        INSERT INTO usuario (nome, email, senha, genero) VALUES ('diniz', 'diniz@gmail.com', '1234@@@@', 'alternativo');
