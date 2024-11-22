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

CREATE TABLE IF NOT EXISTS curtida(
fkUsuario int,
fkMusica int,
primary key (fkUsuario, fkMusica),
foreign key (fkUsuario) references usuario(idUsuario),
foreign key (fkMusica) references musica(idMusica)
);

-- Apague o comentário para inserir
/*
INSERT INTO usuario (nome, email, senha, genero) VALUES
('Alexandre Silva', 'alexandre.silva@email.com', 'Alex@1234', 'rock'),
('Isabela Oliveira', 'isabela.oliveira@email.com', 'Isabela!2024', 'metal'),
('Gustavo Costa', 'gustavo.costa@email.com', 'Gust@vo@123', 'alternativo'),
('Tatiane Pereira', 'tatiane.pereira@email.com', 'T@tiane123', 'rock'),
('Bruno Almeida', 'bruno.almeida@email.com', 'Bruno#1234', 'metal'),
('Carla Rocha', 'carla.rocha@email.com', 'Carla@2024', 'alternativo'),
('Rogério Lima', 'rogerio.lima@email.com', 'Rog@rio567', 'rock'),
('Renata Santos', 'renata.santos@email.com', 'Ren@ta88', 'metal'),
('Simone Martins', 'simone.martins@email.com', 'Simone!2024$', 'alternativo'),
('Fábio Souza', 'fabio.souza@email.com', 'Fabio#2024', 'rock'),
('Cátia Oliveira', 'catia.oliveira@email.com', 'Cat!a1234', 'metal'),
('Maurício Ferreira', 'mauricio.ferreira@email.com', 'Mau!2024', 'alternativo'),
('Natália Rocha', 'natalia.rocha@email.com', 'Nat@lia567', 'rock'),
('Leonardo Costa', 'leonardo.costa@email.com', 'Leo@2024$', 'metal'),
('Gabriela Lima', 'gabriela.lima@email.com', 'Gabriela#88', 'alternativo'),
('Felipe Souza', 'felipe.souza@email.com', 'Felipe!2024', 'rock'),
('Sabrina Martins', 'sabrina.martins@email.com', 'Sabri@2024', 'metal'),
('Jorge Silva', 'jorge.silva@email.com', 'J0rg3@2024', 'alternativo'),
('Luciana Rocha', 'luciana.rocha@email.com', 'Luc!ana123', 'rock'),
('Marco Oliveira', 'marco.oliveira@email.com', 'M@rco2024$', 'metal'),
('Michele Almeida', 'michele.almeida@email.com', 'Mich3l@123', 'alternativo'),
('Juliano Costa', 'juliano.costa@email.com', 'Julian0@2024', 'rock'),
('Viviane Pereira', 'viviane.pereira@email.com', 'Vivi@na2024', 'metal'),
('Eduardo Rocha', 'eduardo.rocha@email.com', 'Eduard0@88', 'alternativo'),
('Thais Silva', 'thais.silva@email.com', 'Th@is1234', 'rock'),
('Ricardo Martins', 'ricardo.martins@email.com', 'Ric@rd0!2024', 'metal'),
('Patrícia Almeida', 'patricia.almeida@email.com', 'P@tricia123', 'alternativo'),
('Daniela Lima', 'daniela.lima@email.com', 'D@niela2024', 'rock'),
('Fernando Costa', 'fernando.costa@email.com', 'F3rnando@123', 'metal'),
('Luciana Santos', 'luciana.santos@email.com', 'L@uciana2024', 'alternativo'),
('Lucas Pereira', 'lucas.pereira@email.com', 'Luca$1234', 'metal'),
('Marta Souza', 'marta.souza@email.com', 'M@rta#2024', 'rock'),
('Roberto Oliveira', 'roberto.oliveira@email.com', 'R0b3rto$123', 'alternativo'),
('Juliana Lima', 'juliana.lima@email.com', 'Juliana@123', 'rock'),
('Carlos Martins', 'carlos.martins@email.com', 'C@rlos#2024', 'metal'),
('Sofia Santos', 'sofia.santos@email.com', 'S0fia@2024', 'alternativo'),
('Tatiane Rocha', 'tatiane.rocha@email.com', 'T@tiane2024!', 'metal'),
('Felipe Costa', 'felipe.costa@email.com', 'Felipe@1234', 'rock'),
('Eduardo Almeida', 'eduardo.almeida@email.com', 'Eduardo!123', 'alternativo'),
('Amanda Ferreira', 'amanda.ferreira@email.com', 'Amanda@!123', 'metal'),
('Rafael Silva', 'rafael.silva@email.com', 'R@fael!2024', 'rock'),
('Gustavo Rocha', 'gustavo.rocha@email.com', 'Gus@tavo123', 'alternativo'),
('Mariana Souza', 'mariana.souza@email.com', 'Mari@na!2024', 'metal'),
('João Costa', 'joao.costa@email.com', 'J0ao@2024#', 'rock'),
('Leonardo Pereira', 'leonardo.pereira@email.com', 'Leo@12345', 'alternativo'),
('Cátia Oliveira', 'catia.oliveira@email.com', 'C@tia#1234', 'metal'),
('Juliano Almeida', 'juliano.almeida@email.com', 'Juli@no2024$', 'rock'),
('Ricardo Lima', 'ricardo.lima@email.com', 'Ric@rdo1234', 'alternativo'),
('Carla Santos', 'carla.santos@email.com', 'Carla!@123', 'metal'),
('Felipe Martins', 'felipe.martins@email.com', 'Felipe@!2024', 'rock'),
('Patrícia Rocha', 'patricia.rocha@email.com', 'P@tricia1234', 'alternativo'),
('Marcos Ferreira', 'marcos.ferreira@email.com', 'Marcos@123', 'metal'),
('Luciana Costa', 'luciana.costa@email.com', 'Luc!ana2024', 'rock'),
('Simone Almeida', 'simone.almeida@email.com', 'S1mone@2024', 'alternativo'),
('José Silva', 'jose.silva@email.com', 'J0s3@!2024', 'metal'),
('Kátia Lima', 'katia.lima@email.com', 'K@tia2024$', 'rock'),
('Fabiana Rocha', 'fabiana.rocha@email.com', 'F@bi!ana2024', 'alternativo'),
('Fernanda Oliveira', 'fernanda.oliveira@email.com', 'F3rnanda@123', 'metal'),
('André Costa', 'andre.costa@email.com', 'Andr3@1234', 'rock'),
('Tatiane Martins', 'tatiane.martins@email.com', 'T@tiane$2024', 'alternativo'),
('Marcio Silva', 'marcio.silva@email.com', 'M@rcio!2024', 'metal'),
('Sérgio Pereira', 'sergio.pereira@email.com', 'S3rgio@2024', 'rock'),
('Amanda Rocha', 'amanda.rocha@email.com', 'Amand@123', 'alternativo'),
('Eduardo Almeida', 'eduardo.almeida@email.com', 'Edu@ardo1234', 'metal'),
('Renata Souza', 'renata.souza@email.com', 'Ren@ta!1234', 'rock'),
('Gabriela Lima', 'gabriela.lima@email.com', 'Gabriela@!2024', 'alternativo'),
('Flávio Oliveira', 'flavio.oliveira@email.com', 'Flav!o1234', 'metal'),
('Tânia Martins', 'tania.martins@email.com', 'T@nia2024', 'rock'),
('Márcio Costa', 'marcio.costa@email.com', 'M@rcio123', 'alternativo'),
('Sandra Silva', 'sandra.silva@email.com', 'S@ndra!2024', 'metal');
*/

SELECT genero,count(genero) FROM usuario GROUP BY genero;