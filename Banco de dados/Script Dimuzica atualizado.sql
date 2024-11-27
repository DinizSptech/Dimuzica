CREATE DATABASE IF NOT EXISTS dimuzica;

USE dimuzica;

CREATE TABLE IF NOT EXISTS usuario(
idUsuario int primary key auto_increment,
nome varchar(30),
email varchar(255) UNIQUE,
senha varchar(255),
genero varchar(20),
check (genero in('alternativo','metal','rock'))
);

CREATE TABLE IF NOT EXISTS musica(
idMusica int primary key auto_increment,
titulo varchar(40),
audio varchar(500) unique,
genero varchar(20),
check (genero in('alternativo','metal','rock'))
);

CREATE TABLE IF NOT EXISTS curtida(
fkUsuario int,
fkMusica int,
momento datetime,
primary key (fkUsuario, fkMusica),
foreign key (fkUsuario) references usuario(idUsuario),
foreign key (fkMusica) references musica(idMusica)
);

INSERT INTO usuario(nome, email, senha, genero) VALUES
('t1', 't1','1234@@@@','rock'),
('t2','t2','1234@@@@','alternativo'),
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
('Felipe Souza', 'felipe.souza@email.com', 'Felipe!2024', 'alternativo'),
('Sabrina Martins', 'sabrina.martins@email.com', 'Sabri@2024', 'metal'),
('Jorge Silva', 'jorge.silva@email.com', 'J0rg3@2024', 'alternativo'),
('Luciana Rocha', 'luciana.rocha@email.com', 'Luc!ana123', 'alternativo'),
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
('Juliana Lima', 'juliana.lima@email.com', 'Juliana@123', 'metal'),
('Carlos Martins', 'carlos.martins@email.com', 'C@rlos#2024', 'metal'),
('Sofia Santos', 'sofia.santos@email.com', 'S0fia@2024', 'alternativo'),
('Tatiane Rocha', 'tatiane.rocha@email.com', 'T@tiane2024!', 'metal'),
('Felipe Costa', 'felipe.costa@email.com', 'Felipe@1234', 'rock'),
('Eduardo Almeida', 'eduardo.almeida@email.com', 'Eduardo!123', 'metal'),
('Amanda Ferreira', 'amanda.ferreira@email.com', 'Amanda@!123', 'metal'),
('Rafael Silva', 'rafael.silva@email.com', 'R@fael!2024', 'metal'),
('Gustavo Rocha', 'gustavo.rocha@email.com', 'Gus@tavo123', 'alternativo'),
('Mariana Souza', 'mariana.souza@email.com', 'Mari@na!2024', 'metal'),
('João Costa', 'joao.costa@email.com', 'J0ao@2024#', 'metal'),
('Leonardo Pereira', 'leonardo.pereira@email.com', 'Leo@12345', 'alternativo'),
('Juliano Almeida', 'juliano.almeida@email.com', 'Juli@no2024$', 'metal'),
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
('Flávio Oliveira', 'flavio.oliveira@email.com', 'Flav!o1234', 'metal'),
('Tânia Martins', 'tania.martins@email.com', 'T@nia2024', 'rock'),
('Márcio Costa', 'marcio.costa@email.com', 'M@rcio123', 'alternativo'),
('Sandra Silva', 'sandra.silva@email.com', 'S@ndra!2024', 'metal');

insert into musica values
(default, 'The adults are talking', 'https://open.spotify.com/embed/track/5ruzrDWcT0vuJIOMW7gMnW?utm_source=generator', 'alternativo'),
(default, 'Reptilia','https://open.spotify.com/embed/track/57Xjny5yNzAcsxnusKmAfA?utm_source=generator','alternativo'),
(default, 'Creep', 'https://open.spotify.com/embed/track/70LcF31zb1H0PyJoS1Sx1r?utm_source=generator', 'alternativo'),
(default, 'Karma police','https://open.spotify.com/embed/track/63OQupATfueTdZMWTxW03A?utm_source=generator', 'alternativo'),
(default, 'Fool', 'https://open.spotify.com/embed/track/5PQwmOZwMhhV8q8QMpCRAZ?utm_source=generator', 'alternativo'),
(default, 'Starman', 'https://open.spotify.com/embed/track/0pQskrTITgmCMyr85tb9qq?utm_source=generator', 'alternativo'),
(default, 'Heart Shaped Box', 'https://open.spotify.com/embed/track/11LmqTE2naFULdEP94AUBa?utm_source=generator', 'alternativo'),
(default, 'The Man Who Sold The World', 'https://open.spotify.com/embed/track/15VRO9CQwMpbqUYA7e6Hwg?utm_source=generator','alternativo'),
(default, 'There Is a Light That Never Goes Out', 'https://open.spotify.com/embed/track/0WQiDwKJclirSYG9v5tayI?utm_source=generator', 'alternativo'),
(default, "Heaven Knows I'm Miserable Now", 'https://open.spotify.com/embed/track/1H5N26VqHR4JhuaRKY2I0u?utm_source=generator', 'alternativo'),
(default, "Boys Don't Cry", 'https://open.spotify.com/embed/track/1QFh8OH1e78dGd3VyJZCAC?utm_source=generator', 'alternativo'),
(default, 'Lovesong', 'https://open.spotify.com/embed/track/2mIrfke7vosXAEWfz6ucyo?utm_source=generator','alternativo'),
(default, 'Until I know','https://open.spotify.com/embed/track/4KH9g027K949LR2xkjC4jk?utm_source=generator','alternativo'),
(default, 'When You Sleep','https://open.spotify.com/embed/track/2KylN9C0wNbzLgZNTG9oiU?utm_source=generator','alternativo'),
(default, 'Buddy HolLy','https://open.spotify.com/embed/track/3mwvKOyMmG77zZRunnxp9E?utm_source=generator', 'alternativo'),
(default, "Say It Ain't So", 'https://open.spotify.com/embed/track/6VoIBz0VhCyz7OdEoRYDiA?utm_source=generator', 'alternativo'),
(default, 'Feel Good Inc.', 'https://open.spotify.com/embed/track/0d28khcov6AiegSCpG5TuT?utm_source=generator','alternativo'),
(default, 'Clint Eastwood', 'https://open.spotify.com/embed/track/1RKUoGiLEbcXN4GY4spQDx?utm_source=generator','alternativo'),
(default, 'No one knows', 'https://open.spotify.com/embed/track/6y20BV5L33R8YXM0YuI38N?utm_source=generator', 'rock'),
(default, 'Bohemian Rhapsody', 'https://open.spotify.com/embed/track/3z8h0TU7ReDPLIbEnYhWZb?utm_source=generator', 'rock'),
(default, 'Come together', 'https://open.spotify.com/embed/track/2EqlS6tkEnglzr7tkKAAYD?utm_source=generator', 'rock'),
(default, 'The Chain', 'https://open.spotify.com/embed/track/5e9TFTbltYBg2xThimr0rU?utm_source=generator', 'rock'),
(default, 'Like A Stone', 'https://open.spotify.com/embed/track/3YuaBvuZqcwN3CEAyyoaei?utm_source=generator', 'rock'),
(default, "Sweet Child O' Mine", 'https://open.spotify.com/embed/track/7snQQk1zcKl8gZ92AnueZW?utm_source=generator','rock'),
(default, 'Thunderstruck', 'https://open.spotify.com/embed/track/57bgtoPSgt236HzfBOd8kj?utm_source=generator', 'rock'),
(default, "I Was Made For Lovin' You", 'https://open.spotify.com/embed/track/07q0QVgO56EorrSGHC48y3?utm_source=generator','rock'),
(default, 'Even Flow','https://open.spotify.com/embed/track/6QewNVIDKdSl8Y3ycuHIei?utm_source=generator', 'rock'),
(default, 'Everlong','https://open.spotify.com/embed/track/5UWwZ5lm5PKu6eKsHAGxOk?utm_source=generator','rock'),
(default, 'How you remind me', 'https://open.spotify.com/embed/track/0gmbgwZ8iqyMPmXefof8Yf?utm_source=generator', 'rock'),
(default, 'Wait and bleed', 'https://open.spotify.com/embed/track/2gscB6kDOmrv1P6qs2KXE3?utm_source=generator', 'metal'),
(default, 'Duality', 'https://open.spotify.com/embed/track/61mWefnWQOLf90gepjOCb3?utm_source=generator','metal'),
(default, 'Psychosocial', 'https://open.spotify.com/embed/track/3RAFcUBrCNaboRXoP3S5t1?utm_source=generator','metal'),
(default, 'Toxicity','https://open.spotify.com/embed/track/0snQkGI5qnAmohLE7jTsTn?utm_source=generator','metal'),
(default, 'Chop Suey!', 'https://open.spotify.com/embed/track/2DlHlPMa4M17kufBvI2lEN?utm_source=generator','metal'),
(default, 'Break Stuff','https://open.spotify.com/embed/track/5cZqsjVs6MevCnAkasbEOX?utm_source=generator','metal'),
(default, "Rollin'", 'https://open.spotify.com/embed/track/3IV4swNduIRunHREK80owz?utm_source=generator','metal'),
(default, 'In the End','https://open.spotify.com/embed/track/60a0Rd6pjrkxjPbaKzXjfq?utm_source=generator','metal'),
(default, 'Numb','https://open.spotify.com/embed/track/2nLtzopw4rPReszdYBJU6h?utm_source=generator','metal'),
(default, 'Faint','https://open.spotify.com/embed/track/4Yf5bqU3NK4kNOypcrLYwU?utm_source=generator','metal'),
(default, 'Freak On A Leash', 'https://open.spotify.com/embed/track/6W21LNLz9Sw7sUSNWMSHRu?utm_source=generator','metal'),
(default, 'Coming Undone','https://open.spotify.com/embed/track/3o7TMr6RmIusYH7Kkg7ujR?utm_source=generator','metal'),
(default, 'Falling Away From Me','https://open.spotify.com/embed/track/2F6FfZ4w8z3eJpSxPotVO5?utm_source=generator','metal'),
(default, 'Going Under','https://open.spotify.com/embed/track/3UygY7qW2cvG9Llkay6i1i?utm_source=generator','metal'),
(default, 'Change','https://open.spotify.com/embed/track/51c94ac31swyDQj9B3Lzs3?utm_source=generator','metal'),
(default, 'My Own Summer (Shove It)','https://open.spotify.com/embed/track/1158ckiB5S4cpsdYHDB9IF?utm_source=generator','metal'),
(default, 'Be Quiet And Drive (Far Away)', 'https://open.spotify.com/embed/track/4Uiw0Sl9yskBaC6P4DcdVD?utm_source=generator','metal'),
(default, 'Dragula','https://open.spotify.com/embed/track/6Nm8h73ycDG2saCnZV8poF?utm_source=generator','metal'),
(default, 'Stranded','https://open.spotify.com/embed/track/60fUDmIWuKhngaeBIVhqIV?utm_source=generator','metal'),
(default, 'Bodies','https://open.spotify.com/embed/track/7CpbhqKUedOIrcvc94p60Y?utm_source=generator','metal'),
(default, 'Last Resort','https://open.spotify.com/embed/track/5W8YXBz9MTIDyrpYaCg2Ky?utm_source=generator','metal'),
(default, 'Kingslayer', 'https://open.spotify.com/embed/track/7CAbF0By0Fpnbiu6Xn5ZF7?utm_source=generator','metal'),
(default, 'Snot', 'https://open.spotify.com/embed/track/3qCQNtggJw1gxoptMgDhyR?utm_source=generator','metal'),
(default, 'Down With The Sickness','https://open.spotify.com/embed/track/4ImIJRZNJhNQLLdUFSYJoS?utm_source=generator','metal'),
(default, 'Happy?','https://open.spotify.com/embed/track/0INUE1K7cEiE8VH63Rv5RJ?utm_source=generator','metal'),
(default, 'Hotel California', 'https://open.spotify.com/embed/track/40riOy7x9W7GXjyGp4pjAv?utm_source=generator','rock'),
(default, 'Invisible','https://open.spotify.com/embed/track/0AM92A4kr44yHi74mwNcBg?utm_source=generator','alternativo'),
(default, 'I Ran (So Far Away)', 'https://open.spotify.com/embed/track/4OdhffpvG3HxDJMxYOKh97?utm_source=generator', 'rock'),
(default, 'Eyes Without A Face','https://open.spotify.com/embed/track/0pUVeEgZuNyFzIMKp67RbS?utm_source=generator','rock'),
(default, 'Killing In The Name', 'https://open.spotify.com/embed/track/59WN2psjkt1tyaxjspN8fp?utm_source=generator','rock'),
(default, 'Enter Sandman', 'https://open.spotify.com/embed/track/5sICkBXVmaCQk5aISGR3x1?utm_source=generator','metal'),
(default, 'Imigrant Song', 'https://open.spotify.com/embed/track/78lgmZwycJ3nzsdgmPPGNx?utm_source=generator','rock'),
(default, 'Good Old-Fashioned Lover Boy', 'https://open.spotify.com/embed/track/1n7xFAY4xoPeqRvrkzAtsw?utm_source=generator','rock'),
(default, 'Killer Queen','https://open.spotify.com/embed/track/4cIPLtg1avt2Jm3ne9S1zy?utm_source=generator','rock'),
(default, "Can't Stop me now", 'https://open.spotify.com/embed/track/5T8EDUDqKcs6OSOwEsfqG7?utm_source=generator', 'rock'),
(default, 'Mein','https://open.spotify.com/embed/track/7vfUhnW7qDtkFId4GJnvtA?utm_source=generator','alternativo'),
(default, 'Hole In The Earth','https://open.spotify.com/embed/track/5Bpc360LNUScK53FrM8nvB?utm_source=generator','metal'),
(default, 'Tudo Que Eu Sempre Sonhei','https://open.spotify.com/embed/track/26W4BHzwDnVyLjaDpQtpsR?utm_source=generator','alternativo'),
(default, 'Roots Bloody Roots', 'https://open.spotify.com/embed/track/6ursmCnbc9oDRGa2yHKkoZ?utm_source=generator','metal'),
(default, 'Tempo Perdido', 'https://open.spotify.com/embed/track/7MnT7msJZg3XBAS0OTfGrB?utm_source=generator','rock'),
(default, 'Eu Ainda Gosto Dela', 'https://open.spotify.com/embed/track/3eW8Di8rolVzktc3xW7hba?utm_source=generator','alternativo'),
(default, '1406', 'https://open.spotify.com/embed/track/2FGzXtCJHdWVY8V5mjXsl2?utm_source=generator','rock'),
(default, 'So por uma noite', 'https://open.spotify.com/embed/track/3FXo3xKG3aYV3hvdRzUY61?utm_source=generator','rock'),
(default, 'Quebra-Mar', 'https://open.spotify.com/embed/track/2IpyGcvQ2sBAd2AmJ1mbIC?utm_source=generator','rock'),
(default, 'Só Lazer', 'https://open.spotify.com/embed/track/4EtjLlwM4T1T2fBAGxwql8?utm_source=generator','rock'),
(default, 'Moonage Daydream','https://open.spotify.com/embed/track/6mib3N4E8PZHAGQ3xy7bho?utm_source=generator', 'alternativo'),
(default, '1979','https://open.spotify.com/embed/track/5QLHGv0DfpeXLNFo7SFEy1?utm_source=generator','alternativo'),
(default, 'Today', 'https://open.spotify.com/embed/track/0u5aO1GYsIhAWCPuXdwnak?utm_source=generator','alternativo'),
(default, 'Them Bones', 'https://open.spotify.com/embed/track/4A065x9kJt955eGVqf813g?utm_source=generator','alternativo');

INSERT INTO curtida (fkUsuario, fkMusica, momento) VALUES
(1, 32, '2024-11-26 09:15:03'),
(2, 41, '2024-11-25 15:24:18'),
(3, 14, '2024-11-25 13:07:45'),
(4, 29, '2024-11-24 10:43:12'),
(5, 22, '2024-11-23 18:37:20'),
(6, 45, '2024-11-22 09:00:00'),
(7, 35, '2024-11-20 12:11:53'),
(8, 47, '2024-11-19 14:12:40'),
(9, 33, '2024-11-18 17:55:10'),
(10, 39, '2024-11-17 21:02:33'),
(11, 20, '2024-11-16 16:28:07'),
(12, 25, '2024-11-15 12:33:45'),
(13, 43, '2024-11-14 19:45:50'),
(14, 40, '2024-11-13 13:11:21'),
(15, 31, '2024-11-12 11:10:30'),
(16, 13, '2024-11-11 22:18:35'),
(17, 37, '2024-11-10 08:40:12'),
(18, 30, '2024-11-09 16:02:23'),
(19, 48, '2024-11-08 14:22:01'),
(20, 34, '2024-11-07 10:59:18'),
(21, 24, '2024-11-06 12:45:36'),
(22, 12, '2024-11-05 09:20:43'),
(23, 44, '2024-11-04 11:59:51'),
(24, 36, '2024-11-03 18:30:04'),
(25, 38, '2024-11-02 20:27:22'),
(26, 42, '2024-11-01 08:50:14'),
(27, 19, '2024-10-31 09:30:29'),
(28, 26, '2024-10-30 15:35:18'),
(29, 21, '2024-10-29 12:17:40'),
(30, 28, '2024-10-28 19:52:55'),
(31, 15, '2024-10-27 22:42:32'),
(32, 49, '2024-10-26 14:10:05'),
(33, 23, '2024-10-25 13:17:01'),
(34, 10, '2024-10-24 17:22:25'),
(35, 27, '2024-10-23 09:41:32'),
(36, 50, '2024-10-22 15:13:43'),
(37, 9, '2024-10-21 11:51:04'),
(38, 51, '2024-10-20 13:23:15'),
(39, 52, '2024-10-19 17:43:21'),
(40, 53, '2024-10-18 22:34:12'),
(41, 54, '2024-10-17 10:22:30'),
(42, 55, '2024-10-16 19:27:14'),
(43, 56, '2024-10-15 16:59:04'),
(44, 57, '2024-10-14 12:37:50'),
(45, 58, '2024-10-13 11:21:32'),
(46, 59, '2024-10-12 09:08:44'),
(47, 60, '2024-10-11 14:13:22'),
(48, 61, '2024-10-10 18:05:28'),
(49, 62, '2024-10-09 12:30:03'),
(50, 63, '2024-10-08 16:55:36'),
(51, 64, '2024-10-07 11:21:12'),
(52, 65, '2024-10-06 13:09:42'),
(53, 66, '2024-10-05 14:47:55'),
(54, 67, '2024-10-04 10:15:14'),
(55, 68, '2024-10-03 18:09:30'),
(56, 69, '2024-10-02 22:17:11'),
(57, 70, '2024-10-01 16:45:00'),
(58, 71, '2024-09-30 09:52:11'),
(59, 72, '2024-09-29 14:13:20'),
(60, 73, '2024-09-28 11:20:22'),
(61, 74, '2024-09-27 17:56:33'),
(62, 75, '2024-09-26 13:33:12'),
(63, 72, '2024-09-25 20:02:30'),
(64, 73, '2024-09-24 08:47:41'),
(65, 74, '2024-09-23 16:00:50'),
(66, 75, '2024-09-22 19:34:13'),
(67, 73, '2024-09-21 17:10:03'),
(68, 74, '2024-09-20 13:55:22'),
(1, 72, '2024-09-19 09:11:43'),
(2, 71, '2024-09-18 16:40:18'),
(3, 70, '2024-09-17 11:22:00'),
(4, 69, '2024-09-16 18:28:35'),
(5, 68, '2024-09-15 14:15:12'),
(6, 67, '2024-09-14 16:10:40'),
(7, 66, '2024-09-13 09:55:29'),
(8, 65, '2024-09-12 19:03:01'),
(9, 64, '2024-09-11 20:17:22'),
(10, 63, '2024-09-10 10:05:12'),
(11, 62, '2024-09-09 14:41:13'),
(12, 61, '2024-09-08 11:24:20'),
(13, 60, '2024-09-07 18:30:50'),
(14, 59, '2024-09-06 15:17:30'),
(15, 58, '2024-09-05 10:43:21'),
(16, 57, '2024-09-04 13:27:11'),
(17, 56, '2024-09-03 18:42:22'),
(18, 55, '2024-09-02 12:33:05'),
(19, 54, '2024-09-01 11:10:40'),
(20, 53, '2024-08-31 14:50:15'),
(21, 52, '2024-08-30 20:17:32'),
(22, 51, '2024-08-29 17:25:10'),
(23, 50, '2024-08-28 13:00:05'),
(24, 49, '2024-08-27 18:11:12'),
(25, 48, '2024-08-26 20:50:30'),
(26, 47, '2024-08-25 17:12:13'),
(27, 46, '2024-08-24 11:37:50'),
(28, 45, '2024-08-23 13:41:43'),
(29, 44, '2024-08-22 15:30:55');

SELECT count(idUsuario) FROM usuario;

SELECT * FROM musica JOIN curtida ON idMusica = fkMusica WHERE fkUsuario = 67 ORDER BY momento DESC;

SELECT genero,count(genero) as 'qtd' FROM usuario GROUP BY genero;

SELECT titulo,count(fkMusica) as likes FROM musica JOIN curtida ON idMusica = fkMusica GROUP BY titulo ORDER BY likes DESC;

SELECT * FROM usuario;

SELECT * FROM musica; 		