-- Insertar datos en Peliculas
INSERT INTO Peliculas (nombre, descripcion, año, director, productor, id_formato) VALUES
('Sailor Moon R The Movie', 'Es la primera película de la franquicia Sailor Moon. La trama sigue a las Sailor Scouts...', 1993, 'Kunihiko Ikuhara', 'Iriya Azuma', 1),
('Sailor Moon S The Movie', 'Es la segunda película de la franquicia Sailor Moon. La trama sigue a las Sailor Scouts...', 1994, 'Tomoya Takahashi', 'Iriya Azuma', 1),
('Sailor Moon Super S: The Movie', 'Es la tercera película de la franquicia Sailor Moon. La historia sigue a las Sailor Scouts...', 1995, 'Hiroki Shibata', 'Iriya Azuma', 1),
('Sailor Moon SuperS Plus: Ami\'s First Love', 'Es un corto especial que acompaña a la película Sailor Moon SuperS...', 1995, 'Hiroki Shibata', 'Iriya Azuma', 1),
('Sailor Moon Eternal', 'Es una película dividida en dos partes que sirve como continuación de la serie Sailor Moon Crystal...', 2021, 'Chiaki Kon', 'Yu Kamiki', 1),
('Sailor Moon Cosmos', 'Es una película de dos partes que adapta el arco final del manga original de Naoko Takeuchi...', 2023, 'Tomoya Takahashi', 'Naoko Takeuchi', 1);

-- Insertar datos en Series
INSERT INTO Series (nombre, descripcion, n_temporadas) VALUES
('Sailor Moon', 'Esta serie original abarca cinco temporadas y sigue la evolución de Usagi y sus compañeras...', 5),
('Sailor Moon Crystal', 'Este reinicio de la serie busca adaptar de manera más fiel el manga original...', 3);

-- Insertar datos en Mangas
INSERT INTO Mangas (nombre, descripcion, autor) VALUES
('Sailor Moon', 'La historia original que sigue las aventuras de Usagi Tsukino y sus amigas.', 'Naoko Takeuchi');

-- Insertar datos en Musicales
INSERT INTO Musicales (nombre, trama, año) VALUES
('Sailor Moon: A New Musical', 'Introduce a Usagi Tsukino y su transformación en Sailor Moon...', 1993),
('Sailor Moon: A New Musical - A Sailor\'s Friendship', 'Continúa la historia con la llegada de nuevos personajes...', 1994),
('Sailor Moon S: The Musical - A Time of New Awakening', 'Introduce a los villanos de la Organización Death Busters...', 1994),
('Sailor Moon S: The Musical - The 7th Stage', 'Continúa la lucha contra la Organización Death Busters...', 1995),
('Sailor Moon SuperS: The Musical - The Dream World', 'Se centra en el Dead Moon Circus y la relación de Chibiusa con Pegasus...', 1995),
('Sailor Moon Sailor Stars: The Musical - A New Legend', 'Culmina la historia de las Sailor Scouts con la llegada de Sailor Galaxia...', 1996);

-- Insertar datos en Personajes
INSERT INTO Personajes (nombre, edad, sexo, ocupacion, tipo_personaje, sailor_scouts) VALUES
('Usagi Tsukino', 14, 'Femenino', 'Estudiante de secundaria, Guerrera Sailor', 1, TRUE),
('Ami Mizuno', 14, 'Femenino', 'Estudiante prodigio, Guerrera Sailor', 1, TRUE),
('Rei Hino', 14, 'Femenino', 'Estudiante, Sacerdotisa del templo Hikawa, Guerrera Sailor', 1, TRUE),
('Makoto Kino', 14, 'Femenino', 'Estudiante, Guerrera Sailor', 1, TRUE),
('Minako Aino', 14, 'Femenino', 'Estudiante, Guerrera Sailor', 1, TRUE),
('Mamoru Chiba', 17, 'Masculino', 'Estudiante universitario', 2, FALSE),
('Chibiusa Tsukino', 900, 'Femenino', 'Estudiante, Guerrera Sailor', 1, TRUE),
('Setsuna Meioh', NULL, 'Femenino', 'Guardiana del Tiempo', 1, TRUE),
('Michiru Kaioh', 16, 'Femenino', 'Violinista profesional', 1, TRUE),
('Haruka Tenoh', 16, 'Femenino', 'Corredora de autos', 1, TRUE),
('Hotaru Tomoe', 12, 'Femenino', 'Estudiante', 1, TRUE);

-- Insertar datos en Videojuegos
INSERT INTO Videojuegos (nombre, año_publicacion, id_sistema) VALUES
('Bishoujo Senshi Sailor Moon', 1993, 1),
('Bishoujo Senshi Sailor Moon R', 1993, 1),
('Bishoujo Senshi Sailor Moon S: Jougai Rantou!? Shuyaku Soudatsusen', 1994, 1),
('Bishoujo Senshi Sailor Moon S', 1994, 2),
('Bishoujo Senshi Sailor Moon SuperS: Zenin Sanka!! Shuyaku Soudatsusen', 1995, 1),
('Bishoujo Senshi Sailor Moon Another Story', 1995, 1),
('Bishoujo Senshi Sailor Moon S: Kurukkurin', 1995, 3),
('Sailor Moon SuperS: Various Emotion', 1996, 4),
('Bishoujo Senshi Sailor Moon SuperS: Shin Shuyaku Soudatsusen', 1996, 5),
('Sailor Moon', 1995, 6),
('Bishoujo Senshi Sailor Moon (PC-Engine)', 1994, 7),
('Bishoujo Senshi Sailor Moon S: Quiz Taiketsu! Sailor Power Ketsushuu', 1994, 8);

-- Insertar datos en Artbooks
INSERT INTO Artbooks (nombre, año) VALUES
('Bishoujo Senshi Sailor Moon Original Picture Collection Vol. 1', 1994),
('Bishoujo Senshi Sailor Moon Original Picture Collection Vol. 2', 1994),
('Bishoujo Senshi Sailor Moon Original Picture Collection Vol. 3', 1995),
('Bishoujo Senshi Sailor Moon Original Picture Collection Vol. 4', 1996),
('Bishoujo Senshi Sailor Moon Original Picture Collection Vol. 5', 1997),
('Bishoujo Senshi Sailor Moon Infinity Collection Art Book', 2010),
('Bishoujo Senshi Sailor Moon The 20th Anniversary Memorial Tribute Art Book', 2013),
('Sailor Moon Crystal Season 1 Official Art Book', 2014),
('Sailor Moon Crystal Season 2 Official Art Book', 2015),
('Sailor Moon Crystal Season 3 Official Art Book', 2016);

-- Insertar datos en Actores
INSERT INTO Actores (nombre, nacionalidad, fecha_nacimiento) VALUES
('Kotono Mitsuishi', 'Japonesa', '1967-12-08'),
('Aya Hisakawa', 'Japonesa', '1968-11-12'),
('Michie Tomizawa', 'Japonesa', '1961-10-20'),
('Emi Shinohara', 'Japonesa', '1963-08-08'),
('Rika Fukami', 'Japonesa', '1963-08-08'),
('Tohru Furuya', 'Japonesa', '1953-07-31'),
('Kae Araki', 'Japonesa', '1966-11-06'),
('Anza Ohyama', 'Japonesa', '1976-05-04'),
('Miyuki Kanbe', 'Japonesa', '1984-05-07'),
('Satomi Okubo', 'Japonesa', '1992-10-27'),
('Chieco Kawabe', 'Japonesa', '1987-02-07'),
('Keiko Kitagawa', 'Japonesa', '1986-08-22'),
('Miyuu Sawai', 'Japonesa', '1987-10-23'),
('Chisaki Hama', 'Japonesa', '1988-11-10'),
('Mew Azama', 'Japonesa', '1986-12-24'),
('Ayaka Komatsu', 'Japonesa', '1986-07-23'),
('Jouji Shibue', 'Japonesa', '1983-03-15'),
('Patricia Acevedo', 'Mexicana', '1959-04-29'),
('Rossy Aguirre', 'Mexicana', '1968-04-02'),
('Mónica Manjarrez', 'Mexicana', '1967-04-16'),
('Rocío Prado', 'Mexicana', NULL),
('María Fernanda Morales', 'Mexicana', '1970-11-07'),
('Rubén Trujillo', 'Mexicana', '1955-01-01'),
('Jesús Barrero', 'Mexicana', '1958-07-26');

-- Insertar datos en Transformaciones
INSERT INTO Transformaciones (nombre, id_personaje) VALUES
('Moon Prism Power Make Up!', 1),
('Moon Crystal Power Make Up!', 1),
('Moon Cosmic Power Make Up!', 1),
('Crisis Make Up!', 1),
('Moon Eternal Make Up!', 1),
('Mercury Power Make Up!', 2),
('Mercury Star Power Make Up!', 2),
('Mercury Crystal Power Make Up!', 2),
('Mars Power Make Up!', 3),
('Mars Star Power Make Up!', 3),
('Mars Crystal Power Make Up!', 3),
('Jupiter Power Make Up!', 4),
('Jupiter Star Power Make Up!', 4),
('Jupiter Crystal Power Make Up!', 4),
('Venus Power Make Up!', 5),
('Venus Star Power Make Up!', 5),
('Venus Crystal Power Make Up!', 5),
('Moon Prism Power Make Up!', 7),
('Moon Crisis Make Up!', 7),
('Uranus Planet Power Make Up!', 9),
('Uranus Crystal Power Make Up!', 9),
('Neptune Planet Power Make Up!', 8),
('Neptune Crystal Power Make Up!', 8),
('Pluto Planet Power Make Up!', 10),
('Pluto Crystal Power Make Up!', 10),
('Saturn Planet Power Make Up!', 11);

-- Insertar datos en Ataques
INSERT INTO Ataques (nombre, id_personaje) VALUES
('Moon Tiara Action', 1),
('Moon Tiara Stardust', 1),
('Moon Healing Escalation', 1),
('Moon Princess Halation', 1),
('Rainbow Moon Heart Ache', 1),
('Moon Spiral Heart Attack', 1),
('Crisis Make Up / Rainbow Double Moon Heart Ache', 1),
('Starlight Honeymoon Therapy Kiss', 1),
('Silver Moon Crystal Power Kiss', 1),
('Shabon Spray', 2),
('Shabon Spray Freezing', 2),
('Shine Aqua Illusion', 2),
('Mercury Aqua Mirage', 2),
('Fire Soul', 3),
('Fire Soul Bird', 3),
('Burning Mandala', 3),
('Mars Flame Sniper', 3),
('Supreme Thunder', 4),
('Supreme Thunder Dragon', 4),
('Sparkling Wide Pressure', 4),
('Jupiter Oak Evolution', 4),
('Crescent Beam', 5),
('Crescent Beam Shower', 5),
('Venus Love-Me Chain', 5),
('Venus Love and Beauty Shock', 5),
('Pink Sugar Heart Attack', 7),
('Twinkle Yell', 7),
('World Shaking', 9),
('Space Sword Blaster', 9),
('Deep Submerge', 8),
('Submarine Reflection', 8),
('Dead Scream', 10),
('Chronos Typhoon', 10),
('Silence Glaive Surprise', 11),
('Death Reborn Revolution', 11);

-- Insertar datos en Canciones
INSERT INTO Canciones (nombre, interprete, compositor) VALUES
('Moonlight Densetsu', 'DALI', 'Takanori Arisawa'),
('Sailor Moon Theme', 'Mitsuko Horie', 'Takanori Arisawa'),
('Sailor Stars', 'Sayaka Ohara, Miwa Matsumoto, Mitsuko Horie', 'Takanori Arisawa'),
('Tuxedo Mirage', 'Kōsuke Yamashita', 'Takanori Arisawa'),
('For the Love of Justice', 'Momoko Kikuchi', 'Takanori Arisawa'),
('Heart Moving', 'Anza Ooyama', 'Takanori Arisawa'),
('Kaze mo Sora mo Kitto', 'Yumi Matsuzaki', 'Takanori Arisawa'),
('Sailor Moon - Kono Hoshi no Dokidoki', 'Naozumi Takahashi', 'Takanori Arisawa'),
('Mitsubayashi', 'Kanako Mitsuhashi', 'Takanori Arisawa'),
('My Only Love', 'Kanako Mitsuhashi', 'Takanori Arisawa'),
('I Will Be', 'Anza Ooyama', 'Takanori Arisawa'),
('Fighting Evil by Moonlight', 'Mariko Nagai', 'Takanori Arisawa'),
('Sailor Star Song', 'Sayaka Ohara', 'Takanori Arisawa'),
('In the Name of Love', 'Anza Ooyama', 'Takanori Arisawa'),
('Tuxedo Mask\'s Theme', 'Masami Okui', 'Takanori Arisawa'),
('Kimi no Koto ga Suki Dakara', 'Sayaka Ohara', 'Takanori Arisawa'),
('Pretty Guardian', 'Anza Ooyama', 'Takanori Arisawa'),
('Sailor Moon: Eternal Edition Theme', 'Anza Ooyama', 'Takanori Arisawa'),
('Tuxedo Mask\'s Oath', 'Masami Okui', 'Takanori Arisawa'),
('The Moonlight Shadow', 'Anza Ooyama', 'Takanori Arisawa');

-- Insertar datos en Temporadas
INSERT INTO Temporadas (nombre, n_episodios, fecha_emision, fecha_finalizacion, id_serie) VALUES
('Sailor Moon - Temporada 1', 46, '1992-03-07', '1993-02-27', 1),
('Sailor Moon R - Temporada 2', 43, '1993-03-06', '1994-03-12', 1),
('Sailor Moon S - Temporada 3', 38, '1994-03-19', '1995-02-25', 1),
('Sailor Moon SuperS - Temporada 4', 39, '1995-03-04', '1996-03-02', 1),
('Sailor Moon Sailor Stars - Temporada 5', 34, '1996-03-09', '1997-02-08', 1);
