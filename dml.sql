USE FanPageSailorMoon; 
-- Inserciones en la tabla Tipos_elementos
INSERT INTO Tipos_elementos (nombre) VALUES
('Canciones'),
('Lugares'),
('Personajes'),
('Transformaciones'),
('Objetos'),
('Ataques');

-- Inserciones en la tabla Elementos 
INSERT INTO Elementos (nombre, id_tipo_elemento) VALUES
('Moonlight Densetsu', 1),  
('Sailor Star Song', 1),  
('Kaze mo Sora mo Kitto', 1),  
('Nagareboshi he', 1),  
('Tsuki no Hana', 1),
('Mystery Sagashi', 1),
('Natsu wo Shimashou Vacation', 1),
('Chikyuu Iro wa Salad Time', 1),
('Onna Kaizoku no Sakusen', 1),
('Overture ~ Welcome! To The Game Show!', 1),
('Erosion Boy', 1),
('Milenio de Plata', 2),  
('Residencia Tsukino', 2),  
('Planeta Mau', 2),  
('Caldera de la Galaxia', 2),  
('Planeta Kinmoku', 2),  
('Sailor Chibi Moon', 3),  -- relacionada con chibi chibi sailor scouts prota aparece en todos los medios
('Chibiusa', 3), -- relacionada con Sailor Cosmos prota aparece en todos los medios
('Sailor Moon', 3), -- relacionada con usagi, sailor scouts prota aparace en todos los medios 
('Usagi Tsukino', 3), -- relacionada con sailor moo prota aparece en todos los medios 
('Sailor Mercury', 3), -- relaciona con ami mizuno sailor socut, prota 
('Ami Mizuno', 3), -- relacionada con sairlo mercury, prota 
('Sailor Mars', 3), -- relacionada con rei hino sailor scouts, prota
('Rei Hino', 3), -- relacionada con sailor mars, prota 
('Sailor Jupiter', 3), -- relacionada con Makoto Kino sairlo scouts, prota 
('Makoto Kino', 3), -- relacionada con juoiter
('Sailor Venus', 3), -- relacionada con minao
('Minako Aino', 3), -- relacionada con venus 
('Sailor Galaxia', 3), -- antagonistas 
('Sailor Chaos', 3), 
('Nephrite', 3), 
('Hanayome', 3),  -- relacionado con nephrite , mujer, sale en el manga y en el crystal 
('Zoisite', 3), 
('Black Lady', 3), -- relacionada con chibusa 
('Eudial', 3), -- todas partes excepto en el live
('Mimet', 3), -- todas partes excepto en el live 
('Mamoru Chiba', 3), -- relaciona con tuxedo es hombre y prota 
('Tuxedo Mask', 3), 
('Luna', 3), -- prota, el mejor personaje  
('Artemis', 3), -- prota, el macho de luna 
('Kyusuke Sarashina', 3), -- personaje secundario 
('Kurume Suri', 3), -- personaje secundario   
('Eternal Sailor Moon ¡Transformación!', 4), -- usagi 
('Doble Poder Cósmico Lunar ¡Acción!', 4), -- chibusa 
('Por el Poder del Cristal del Planeta Júpiter ¡Transformación!, Make Up', 4), -- makoto 
('Por el Poder del Cristal del Planeta Mercurio ¡Transformación!', 4), -- Ami Mizuno
('Metamorfosis Lunar ¡Acción!', 4), -- sailor moon 
('Prenda de la Luna Eterna', 5), -- usagi
('Cetro Lunar', 5), -- sailor moon 
('Cristal de Plata', 5), -- chibusa 
('Luna-P', 5), -- chibusa
('Santo Grial', 5), -- sailor chibi 
('Centella Relampagueante de Júpiter', 6), -- sailor jupiter 
('Tiara Lunar ¡Acción! ', 6), -- sailor moon
('Curación Lunar ¡Acción! ', 6), -- sailor moon
('Que los Demonios se Dispersen', 6), -- sailor mars 
('Cadena de Amor de Venus', 6); -- sailor venus 

-- Inserciones en la tabla Tipos_medios 
INSERT INTO Tipos_medios (nombre) VALUES
('Videojuegos'),
('Mangas'),
('Musicales'),
('Series'),
('Peliculas'); 

-- Inserciones en la tabla Medios
INSERT INTO Medios (nombre, descripcion, id_tipo_medio) VALUES
('Pretty Soldier Sailor Moon', 'Videojuego del género beat em up de desplazamiento lateral.', 1),  -- arcade 
('Sailor Moon (Game Boy)', 'En el juego, el jugador controla a Usagi Tsukino/Sailor Moon.', 1),  -- nintendo
('Sailor Moon (Super Famicom)', ' El videojuego se enfoca en la primera temporada de la serie anime Sailor Moon.', 1),  -- nintendo 
('Sailor Moon S (Sega Pico)', 'En este juego, el jugador avanza a la siguiente “etapa” pasando las páginas de los cartuchos del juego.', 1),  -- sega
('Sailor Moon (Mega Drive)', 'Es un videojuego de desplazamiento lateral (side-scrolling), el jugador debe controlar a una de las Sailor Senshi.', 1),  -- sega
('Sailor Moon SuperS: Shin Shuyaku Soudatsusen', 'Juego de consola basado en Sailor Moon', 1),  -- play
('Sailor Moon', 'Serie de manga tambien conocida como Pretty Soldier Sailor Moon', 2),  
('Bishoujo Senshi Sailor Moon - Gaiden Dark Kingdom Fukkatsu Hen', 'Primer musical de Sera Myu.', 3),  
('Bishoujo Senshi Sailor Moon - Shin-Densetsu Kourin', 'Fue el 14to musical Sera Myu. ', 3), 
('Bishoujo Senshi Sailor Moon - Kessen/Transilvania no Mori - Shin Toujou! Chibi Moon wo Mamoru Senshi-tachi', 'Segunda entrega del arco musical Dracul de Sera Myu.', 3),  
('Bishoujo Senshi Sailor Moon - Shin Kaguya Shima Densetsu (Kaiteiban) - Marinamoon Final', 'Revisión de Shin Kaguya Shima Densetsu.', 3),  
('Bishoujo Senshi Sailor Moon - La Reconquista', '30mo musical Sera Myu y el primero después de una inactividad de 8 años.', 3),  
('Sailor Moon', 'Anime que se estrenó en TV Asahi, cadena de televisión japonesa.', 4),  
('Sailor Moon Crystal', 'Actual anime de Sailor Moon.', 4),  
('Pretty Guardian Sailor Moon', 'Producción de Toei, que contiene 49 episodios de televisión en "acción en vivo".', 4),  
('Sailor Moon Cosmos', 'Película japonesa de anime de fantasía de dos partes.', 5),  
('Sailor Moon R: La Leyenda de la Reina Xenian', 'Primera película de la serie de anime Sailor Moon.', 5),
('Sailor Moon SuperS: El Milagro del Agujero Negro de los Sueños', 'Tercera y última película de la serie Sailor Moon.', 5); 

-- Inserciones en la tabla Apariciones 
INSERT INTO Apariciones (id_elemento, id_medio) VALUES
-- Canciones_musicales
(6, 8),  
(7, 8), 
(8, 11),  
(9, 11),  
(10, 12),  
(11, 12), 
-- Canciones_series   
(1, 13), 
(2, 13), 
(3, 13), 
(4, 14), 
(5, 14), 
-- Lugares_peliculas
(12, 17), 
(13, 17), 
(14, 17), 
(15, 18), 
(16, 18), 
-- Lugares_series
(12, 13), 
(13, 13), 
(14, 13), 
(15, 14), 
(16, 14), 
-- Personajes_series
(17, 13),  -- Sailor Chibi Moon
(18, 13),  -- Chibiusa
(19, 13),  -- Sailor Moon
(20, 13),  -- Usagi Tsukino
(21, 13),  -- Sailor Mercury
(22, 13),  -- Ami Mizuno
(23, 13),  -- Sailor Mars
(24, 13),  -- Rei Hino
(25, 13),  -- Sailor Jupiter
(26, 13),  -- Makoto Kino
(27, 13),  -- Sailor Venus
(28, 13),  -- Minako Aino
(29, 13),  -- Sailor Galaxia
(30, 13),  -- Sailor Chaos
(31, 13),  -- Nephrite
(32, 13),  -- Hanayome
(33, 13),  -- Zoisite
(34, 13),  -- Black Lady
(35, 13),  -- Eudial
(36, 13),  -- Mimet
(37, 13),  -- Mamoru Chiba
(38, 13),  -- Tuxedo Mask
(39, 13),  -- Luna
(40, 13),  -- Artemis
(41, 13),  -- Kyusuke Sarashina
(42, 13),  -- Kurume Suri
(17, 14),  -- Sailor Chibi Moon
(18, 14),  -- Chibiusa
(19, 14),  -- Sailor Moon
(20, 14),  -- Usagi Tsukino
(21, 14),  -- Sailor Mercury
(22, 14),  -- Ami Mizuno
(23, 14),  -- Sailor Mars
(24, 14),  -- Rei Hino
(25, 14),  -- Sailor Jupiter
(26, 14),  -- Makoto Kino
(27, 14),  -- Sailor Venus
(28, 14),  -- Minako Aino
(29, 14),  -- Sailor Galaxia
(30, 14),  -- Sailor Chaos
(31, 14),  -- Nephrite
(32, 14),  -- Hanayome
(33, 14),  -- Zoisite
(34, 14),  -- Black Lady
(35, 14),  -- Eudial
(36, 14),  -- Mimet
(37, 14),  -- Mamoru Chiba
(38, 14),  -- Tuxedo Mask
(39, 14),  -- Luna
(40, 14),  -- Artemis
(41, 14),  -- Kyusuke Sarashina
(42, 14),  -- Kurume Suri
(17, 15),  -- Sailor Chibi Moon
(18, 15),  -- Chibiusa
(19, 15),  -- Sailor Moon
(20, 15),  -- Usagi Tsukino
(21, 15),  -- Sailor Mercury
(22, 15),  -- Ami Mizuno
(23, 15),  -- Sailor Mars
(24, 15),  -- Rei Hino
(25, 15),  -- Sailor Jupiter
(26, 15),  -- Makoto Kino
(27, 15),  -- Sailor Venus
(28, 15),  -- Minako Aino
(29, 15),  -- Sailor Galaxia
(30, 15),  -- Sailor Chaos
(31, 15),  -- Nephrite
(32, 15),  -- Hanayome
(33, 15),  -- Zoisite
(34, 15),  -- Black Lady
(35, 15),  -- Eudial
(36, 15),  -- Mimet
(37, 15),  -- Mamoru Chiba
(38, 15),  -- Tuxedo Mask
(39, 15),  -- Luna
(40, 15),  -- Artemis
(41, 15),  -- Kyusuke Sarashina
(42, 15),  -- Kurume Suri
-- Personajes_peliculas
(17, 16),  -- Sailor Chibi Moon
(18, 16),  -- Chibiusa
(19, 16),  -- Sailor Moon
(20, 16),  -- Usagi Tsukino
(21, 16),  -- Sailor Mercury
(22, 16),  -- Ami Mizuno
(23, 16),  -- Sailor Mars
(24, 16),  -- Rei Hino
(25, 16),  -- Sailor Jupiter
(26, 16),  -- Makoto Kino
(27, 16),  -- Sailor Venus
(28, 16),  -- Minako Aino
(29, 16),  -- Sailor Galaxia
(30, 16),  -- Sailor Chaos
(33, 16),  -- Zoisite
(38, 16),  -- Tuxedo Mask
(39, 16),  -- Luna
(17, 17),  -- Sailor Chibi Moon
(18, 17),  -- Chibiusa
(19, 17),  -- Sailor Moon
(20, 17),  -- Usagi Tsukino
(21, 17),  -- Sailor Mercury
(22, 17),  -- Ami Mizuno
(23, 17),  -- Sailor Mars
(24, 17),  -- Rei Hino
(25, 17),  -- Sailor Jupiter
(26, 17),  -- Makoto Kino
(27, 17),  -- Sailor Venus
(28, 17),  -- Minako Aino,
(31, 17),  -- Nephrite
(35, 17),  -- Eudial
(36, 17),  -- Mimet
(40, 17),  -- Artemis
(42, 17),  -- Kurume Suri
(17, 18),  -- Sailor Chibi Moon
(18, 18),  -- Chibiusa
(19, 18),  -- Sailor Moon
(20, 18),  -- Usagi Tsukino
(21, 18),  -- Sailor Mercury
(22, 18),  -- Ami Mizuno
(23, 18),  -- Sailor Mars
(24, 18),  -- Rei Hino
(25, 18),  -- Sailor Jupiter
(26, 18),  -- Makoto Kino
(27, 18),  -- Sailor Venus
(28, 18),  -- Minako Aino,
(32, 18),  -- Hanayome
(34, 18),  -- Black Lady
(37, 18),  -- Mamoru Chiba
(41, 18),  -- Kyusuke Sarashina
(33, 18),  -- Zoisite
-- Personajes_videojuegos
(17, 1),  -- Sailor Chibi Moon
(19, 1),  -- Sailor Moon
(21, 1),  -- Sailor Mercury
(23, 1),  -- Sailor Mars
(25, 1),  -- Sailor Jupiter
(27, 1),  -- Sailor Venus
(17, 2),  -- Sailor Chibi Moon
(19, 2),  -- Sailor Moon
(21, 2),  -- Sailor Mercury
(23, 2),  -- Sailor Mars
(25, 2),  -- Sailor Jupiter
(27, 2),  -- Sailor Venus
(17, 3),  -- Sailor Chibi Moon
(19, 3),  -- Sailor Moon
(21, 3),  -- Sailor Mercury
(23, 3),  -- Sailor Mars
(25, 3),  -- Sailor Jupiter
(27, 3),  -- Sailor Venus
(17, 4),  -- Sailor Chibi Moon
(19, 4),  -- Sailor Moon
(21, 4),  -- Sailor Mercury
(23, 4),  -- Sailor Mars
(25, 4),  -- Sailor Jupiter
(27, 4),  -- Sailor Venus
(17, 5),  -- Sailor Chibi Moon
(19, 5),  -- Sailor Moon
(21, 5),  -- Sailor Mercury
(23, 5),  -- Sailor Mars
(25, 5),  -- Sailor Jupiter
(27, 5),  -- Sailor Venus
(17, 6),  -- Sailor Chibi Moon
(19, 6),  -- Sailor Moon
(21, 6),  -- Sailor Mercury
(23, 6),  -- Sailor Mars
(25, 6),  -- Sailor Jupiter
(27, 6),  -- Sailor Venus
-- Transformaciones_serie
(43, 13),  -- Eternal Sailor Moon ¡Transformación!
(44, 13),  -- Doble Poder Cósmico Lunar ¡Acción!
(45, 13),  -- Jupiter Crystal Power, Make Up
(46, 13),  -- Por el Poder del Cristal del Planeta Júpiter ¡Transformación!
(47, 13),  -- Metamorfosis Lunar ¡Acción!
(43, 14),  -- Eternal Sailor Moon ¡Transformación!
(44, 14),  -- Doble Poder Cósmico Lunar ¡Acción!
(45, 14),  -- Jupiter Crystal Power, Make Up
(46, 14),  -- Por el Poder del Cristal del Planeta Júpiter ¡Transformación!
(47, 14),  -- Metamorfosis Lunar ¡Acción!
(43, 15),  -- Eternal Sailor Moon ¡Transformación!
(44, 15),  -- Doble Poder Cósmico Lunar ¡Acción!
(45, 15),  -- Jupiter Crystal Power, Make Up
(46, 15),  -- Por el Poder del Cristal del Planeta Júpiter ¡Transformación!
(47, 15),  -- Metamorfosis Lunar ¡Acción!
-- Transformaciones_peliculas 
(43, 16),  -- Eternal Sailor Moon ¡Transformación!
(44, 16),  -- Doble Poder Cósmico Lunar ¡Acción!
(45, 16),  -- Jupiter Crystal Power, Make Up
(46, 16),  -- Por el Poder del Cristal del Planeta Júpiter ¡Transformación!
(47, 16),  -- Metamorfosis Lunar ¡Acción!
(43, 17),  -- Eternal Sailor Moon ¡Transformación!
(44, 17),  -- Doble Poder Cósmico Lunar ¡Acción!
(45, 17),  -- Jupiter Crystal Power, Make Up
(46, 17),  -- Por el Poder del Cristal del Planeta Júpiter ¡Transformación!
(47, 17),  -- Metamorfosis Lunar ¡Acción!
(43, 18),  -- Eternal Sailor Moon ¡Transformación!
(44, 18),  -- Doble Poder Cósmico Lunar ¡Acción!
(45, 18),  -- Jupiter Crystal Power, Make Up
(46, 18),  -- Por el Poder del Cristal del Planeta Júpiter ¡Transformación!
(47, 18),  -- Metamorfosis Lunar ¡Acción!
-- Objetos_series
(48, 13),  -- Prenda de la Luna Eterna
(49, 13),  -- Cetro Lunar
(50, 13),  -- Cristal de Plata
(51, 14),  -- Luna-P
(52, 14),  -- Santo Grial
(48, 14),  -- Prenda de la Luna Eterna 
(49, 15),  -- Cetro Lunar
(50, 15),  -- Cristal de Plata
(51, 15),  -- Luna-P
-- Objetos_peliculas
(48, 16),  -- Prenda de la Luna Eterna
(49, 16),  -- Cetro Lunar
(50, 16),  -- Cristal de Plata
(51, 17),  -- Luna-P
(52, 17),  -- Santo Grial
(48, 17),  -- Prenda de la Luna Eterna
(49, 18),  -- Cetro Lunar
(50, 18),  -- Cristal de Plata
(51, 18),  -- Luna-P
-- Ataques_series
(53, 13),  -- Centella Relampagueante de Júpiter
(54, 13),  -- Tiara Lunar ¡Acción!
(55, 13),  -- Curación Lunar ¡Acción!
(56, 14),  -- Que los Demonios se Dispersen
(54, 14),  -- Tiara Lunar ¡Acción!
(55, 14),  -- Curación Lunar ¡Acción!
(57, 15),  -- Cadena de Amor de Venus
(53, 15),  -- Centella Relampagueante de Júpiter
(56, 15),  -- Que los Demonios se Dispersen
-- Ataques_peliculas
(54, 16),  -- Tiara Lunar ¡Acción!
(55, 16),  -- Curación Lunar ¡Acción!
(53, 16),  -- Centella Relampagueante de Júpiter
(56, 17),  -- Que los Demonios se Dispersen
(57, 17),  -- Cadena de Amor de Venus
(54, 17),  -- Tiara Lunar ¡Acción!
(55, 18),  -- Curación Lunar ¡Acción!
(56, 18),  -- Que los Demonios se Dispersen
(53, 18);  -- Centella Relampagueante de Júpiter

-- Inserciones en la tabla Canciones
INSERT INTO Canciones (interprete, compositor, id_elemento) VALUES
('Tsukino Usagi', 'Hoshino Akari', 1),  -- Moonlight Densetsu
('Sakurai Aya', 'Takahashi Makoto', 2),  -- Sailor Star Song
('Hasegawa Haru', 'Nakamura Sayuri', 3),  -- Kaze mo Sora mo Kitto
('Fujita Miyuki', 'Kobayashi Aya', 4),  -- Nagareboshi he
('Murata Ayaka', 'Sato Yuki', 5),  -- Tsuki no Hana
('Sakamoto Hikari', 'Hashimoto Eri', 6),  -- Mystery Sagashi
('Yokoyama Akari', 'Odagiri Yuu', 7),  -- Natsu wo Shimashou Vacation
('Tanaka Misaki', 'Yamada Hiroshi', 8),  -- Chikyuu Iro wa Salad Time
('Okada Chihiro', 'Nishida Minami', 9),  -- Onna Kaizoku no Sakusen
('Sasaki Yu', 'Takagi Natsuki', 10),  -- Overture ~ Welcome! To The Game Show!
('Kimura Shouta', 'Oono Hikari', 11);  -- Erosion Boy

-- Inserciones en la tabla Lugares
INSERT INTO Lugares (id_elemento) VALUES
(12),  -- Milenio de Plata
(13),  -- Residencia Tsukino
(14),  -- Planeta Mau
(15),  -- Caldera de la Galaxia
(16);  -- Planeta Kinmoku

-- Inserciones en la tabla Tipos_personajes
INSERT INTO Tipos_personajes (nombre) VALUES
('Protagonista'),
('Antagonista'),
('Secundario');

-- Inserciones en la tabla Sexos 
INSERT INTO Sexos (nombre) VALUES
('Femenino'), 
('Masculino'); 

-- Inserciones en la tabla Personajes 
INSERT INTO Personajes (edad, ocupacion, sailor_scout, id_sexo, id_tipo_personaje, id_elemento) VALUES
(16, 'Heroína', TRUE, 1, 1, 17),  -- Sailor Chibi Moon
(10, 'Estudiante', FALSE, 1, 1, 18),  -- Chibiusa
(16, 'Heroína', TRUE, 1, 1, 19),  -- Sailor Moon
(14, 'Estudiante', FALSE, 1, 1, 20),  -- Usagi Tsukino
(16, 'Heroína', TRUE, 1, 1, 21),  -- Sailor Mercury
(14, 'Estudiante', FALSE, 1, 1, 22),  -- Ami Mizuno
(16, 'Heroína', TRUE, 1, 1, 23),  -- Sailor Mars
(14, 'Estudiante', FALSE, 1, 1, 24),  -- Rei Hino
(16, 'Heroína', TRUE, 1, 1, 25),  -- Sailor Jupiter
(14, 'Estudiante', FALSE, 1, 1, 26),  -- Makoto Kino
(16, 'Heroína', TRUE, 1, 1, 27),  -- Sailor Venus
(14, 'Estudiante', FALSE, 1, 1, 28),  -- Minako Aino
(23, 'Villano', FALSE, 1, 2, 29),  -- Sailor Galaxia
(20, 'Villano', FALSE, 1, 2, 30),  -- Sailor Chaos
(20, 'Villano', FALSE, 2, 2, 31),  -- Nephrite
(22, 'Villano', FALSE, 1, 2, 32),  -- Hanayome
(22, 'Villano', FALSE, 2, 2, 33),  -- Zoisite
(16, 'Villano', FALSE, 1, 2, 34),  -- Black Lady
(25, 'Villano', FALSE, 2, 2, 35),  -- Eudial
(25, 'Villano', FALSE, 2, 2, 36),  -- Mimet
(16, 'Estudiante', FALSE, 2, 1, 37),      -- Mamoru Chiba
(18, 'Héroe', FALSE, 2, 1, 38),      -- Tuxedo Mask
(10, 'Heroína', FALSE, 1, 1, 39),   -- Luna (Principal)
(10, 'Héroe', FALSE, 2, 1, 40),   -- Artemis (Principal)
(14, 'Estudiante', FALSE, 2, 3, 41), -- Kyusuke Sarashina
(14, 'Estudiante', FALSE, 2, 3, 42); -- Kurume Suri

-- Inserciones en la tabla transformaciones
INSERT INTO Transformaciones (id_personaje, id_elemento) VALUES
(4, 43),  -- Usagi Tsukino (Eternal Sailor Moon ¡Transformación!)
(2, 44),  -- Chibiusa (Doble Poder Cósmico Lunar ¡Acción!)
(10, 45),  -- Sailor Jupiter (Por el Poder del Cristal del Planeta Júpiter ¡Transformación!, Make Up)
(6, 46),  -- Ami Mizuno (Por el Poder del Cristal del Planeta Mercurio ¡Transformación!)
(3, 47);  -- Sailor Moon (Metamorfosis Lunar ¡Acción!)

-- Inserciones en la tabla Objetos
INSERT INTO Objetos (id_personaje, id_elemento) VALUES
(4, 48),  -- Usagi Tsukino (Prenda de la Luna Eterna)
(3, 49),  -- Sailor Moon (Cetro Lunar)
(2, 50),  -- Chibiusa (Cristal de Plata)
(2, 51),  -- Chibiusa (Luna-P)
(1, 52);  -- Sailor Chibi Moon (Santo Grial)

-- Inserciones en la tabla Ataques
INSERT INTO Ataques (id_personaje, id_elemento) VALUES
(10, 53),  -- Sailor Jupiter (Centella Relampagueante de Júpiter)
(3, 54),  -- Sailor Moon (Tiara Lunar ¡Acción!)
(3, 55),  -- Sailor Moon (Curación Lunar ¡Acción!)
(7, 56),  -- Sailor Mars (Que los Demonios se Dispersen)
(11, 57);  -- Sailor Venus (Cadena de Amor de Venus)

-- Inserciones en la tabla Formas_personajes
INSERT INTO Formas_personajes (id_personaje1, id_personaje2) VALUES
(1, 2),  -- Sailor Chibi Moon & Chibiusa
(3, 4),  -- Sailor Moon & Usagi Tsukino
(5, 6),  -- Sailor Mercury & Ami Mizuno
(7, 8),  -- Sailor Mars & Rei Hino
(10, 11),  -- Sailor Jupiter & Makoto Kino
(12, 13),  -- Sailor Venus & Minako Aino
(15, 16),  -- Nephrite & Hanayome
(2, 18),  -- Chibiusa & Black Lady
(21, 22);  -- Mamoru Chiba & Tuxedo Mask

-- Inserciones en la tabla Actores 
INSERT INTO Actores (nombre, nacimiento) VALUES
('Takahashi Haruto', '1985-05-12'),  -- Actor 1
('Yamamoto Sakura', '1990-09-24'),  -- Actor 2
('Nakamura Kenji', '1982-02-15'),   -- Actor 3
('Kobayashi Aiko', '1988-04-30'),   -- Actor 4
('Saito Yuki', '1995-12-10'),       -- Actor 5
('Matsumoto Riku', '1986-07-21'),   -- Actor 6
('Fujimoto Sora', '1992-01-16'),    -- Actor 7
('Ishikawa Haru', '1989-10-09'),    -- Actor 8
('Tanaka Mio', '1993-03-08'),        -- Actor 9
('Kawasaki Kaito', '1987-11-05'),    -- Actor 10
('Shimizu Rina', '1991-08-20'),      -- Actor 11
('Okamoto Daiki', '1994-06-14'),     -- Actor 12
('Miyazaki Hana', '1983-05-25'),     -- Actor 13
('Nishikawa Ren', '1996-01-22'),     -- Actor 14
('Inoue Yui', '1984-04-02'),         -- Actor 15
('Tsuchiya Kazuya', '1990-12-18'),   -- Actor 16
('Harada Natsuki', '1981-07-29'),    -- Actor 17
('Miyamoto Satoshi', '1985-09-30'),   -- Actor 18
('Sugimoto Aoi', '1992-03-17'),       -- Actor 19
('Fujii Tsubasa', '1988-11-11'),      -- Actor 20
('Kuroda Kei', '1991-06-05'),         -- Actor 21
('Hayashi Miku', '1993-12-15'),       -- Actor 22
('Morita Kyo', '1986-01-25'),         -- Actor 23
('Yoshida Nori', '1990-03-09'),       -- Actor 24
('Nishida Yume', '1989-08-14'),       -- Actor 25
('Tachibana Rei', '1994-04-20');       -- Actor 26

-- Inserciones en la tabla Actores_personajes
INSERT INTO Actores_personajes (id_personaje, id_actor) VALUES
(1, 1),  -- Sailor Chibi Moon & Takahashi Haruto
(2, 2),  -- Chibiusa & Yamamoto Sakura
(3, 3),  -- Sailor Moon & Nakamura Kenji
(4, 4),  -- Usagi Tsukino & Kobayashi Aiko
(5, 5),  -- Sailor Mercury & Saito Yuki
(6, 6),  -- Ami Mizuno & Matsumoto Riku
(7, 7),  -- Sailor Mars & Fujimoto Sora
(8, 8),  -- Rei Hino & Ishikawa Haru
(9, 9),  -- Sailor Jupiter & Tanaka Mio
(10, 10), -- Makoto Kino & Kawasaki Kaito
(11, 11), -- Sailor Venus & Shimizu Rina
(12, 12), -- Minako Aino & Okamoto Daiki
(13, 13), -- Sailor Galaxia & Miyazaki Hana
(14, 14), -- Sailor Chaos & Nishikawa Ren
(15, 15), -- Nephrite & Inoue Yui
(16, 16), -- Hanayome & Tsuchiya Kazuya
(17, 17), -- Zoisite & Harada Natsuki
(18, 18), -- Black Lady & Miyamoto Satoshi
(19, 19), -- Eudial & Sugimoto Aoi
(20, 20), -- Mimet & Fujii Tsubasa
(21, 21), -- Mamoru Chiba & Kuroda Kei
(22, 22), -- Tuxedo Mask & Hayashi Miku
(23, 23), -- Luna & Morita Kyo
(24, 24), -- Artemis & Yoshida Nori
(25, 25), -- Kyusuke Sarashina & Nishida Yume
(26, 26); -- Kurume Suri & Tachibana Rei

-- Inserciones en la tabla Sistemas 
INSERT INTO Sistemas (nombre) VALUES
('Arcade'),
('Nintendo'),
('Sega'),
('PlayStation');

-- Inserciones en la tabla Videojuegos 
INSERT INTO Videojuegos (anio, id_sistema, id_medio) VALUES
(1997, 1, 1),  -- Pretty Soldier Sailor Moon
(1998, 2, 2),  -- Sailor Moon (Game Boy)
(2000, 2, 3),  -- Sailor Moon (Super Famicom)
(2001, 3, 4),  -- Sailor Moon S (Sega Pico)
(2003, 3, 5),  -- Sailor Moon (Mega Drive)
(2010, 4, 6);  -- Sailor Moon SuperS: Shin Shuyaku Soudatsusen

-- Inserciones en la tabla Mangas 
INSERT INTO Mangas (autor, id_medio) VALUES
('Naoko Takeuchi', 7);  

-- Inserciones en la tabla Ediciones
INSERT INTO Ediciones (nombre, n_volumenes, id_manga) VALUES
('Tankōbon', 18, 1),  -- Volumen Estándar
('Shinsōban', 12, 1), -- Nueva Edición
('Kanzenban', 10, 1); -- Edición de Lujo

-- Inserciones en la tabla Volumenes 
INSERT INTO Volumenes (nombre, n_actos, publicacion, id_edicion) VALUES
('Sailor Moon Volumen 1', 5, '1992-07-06', 1),  -- Volumen 1
('Sailor Moon Volumen 2', 3, '1992-08-06', 1),  -- Volumen 2
('Sailor Moon Volumen 3', 3, '1993-04-06', 1),  -- Volumen 3
('Sailor Moon Volumen 4', 4, '1993-07-06', 1),  -- Volumen 4
('Sailor Moon Shinsōban Volumen 1', 6, '2003-09-22', 2),  -- Volumen 1
('Sailor Moon Shinsōban Volumen 2', 6, '2003-09-22', 2),  -- Volumen 2
('Sailor Moon Shinsōban Volumen 3', 6, '2003-10-23', 2),  -- Volumen 3
('Sailor Moon Kanzenban Volumen 1', 7, '2013-11-23', 3),  -- Volumen 1
('Sailor Moon Kanzenban Volumen 2', 5, '2014-03-22', 3);  -- Volumen 2

-- Inserciones en la tabla Actos 
INSERT INTO Actos (nombre, id_volumen) VALUES
('Usagi - Sailor Moon', 1),  -- Acto 1
('Ami - Sailor Mercury', 1),  -- Acto 2
('Rei - Sailor Mars', 2),  -- Acto 3
('Baile de Máscaras', 2),  -- Acto 4
('Makoto - Sailor Jupiter', 3),  -- Acto 5
('Luna', 3),  -- Acto 10
('Reunión - Endymion', 4),  -- Acto 11
('La batalla decisiva - Reencarnación', 4),  -- Acto 12
('Un final y un comienzo - La pequeña extranjera', 5),  -- Acto 13
('Black Moon Koan - Sailor Mars', 5),  -- Acto 14
('Black Moon Berthier - Sailor Mercury', 6),  -- Acto 15
('Black Moon Petz - Sailor Jupiter', 6),  -- Acto 16
('Usagi - Sailor Moon', 7),  -- Acto 1
('Ami - Sailor Mercury', 7),  -- Acto 2
('Rei - Sailor Mars', 8),  -- Acto 3
('Baile de Máscaras', 8),  -- Acto 4
('Makoto - Sailor Jupiter', 9),  -- Acto 5
('Tuxedo Mask', 9),  -- Acto 6
('¡Cuidado con el estudiante de intercambio!', 1),  -- Acto 1
('¡Cuidado con el Tanabata (Festival de 7 de julio)!', 1),  -- Acto 2
('¡Cuidado con las caries!', 2),  -- Acto 3
('¡La melancolía de Mako!', 2),  -- Acto 4
('¡El primer amor de Ami!', 3),  -- Acto 5
('¿¡La Batalla escolar de Rei y Mina!?', 3),  -- Acto 6
('El secreto de Hammer Price Hall', 4);  -- Acto 7

-- Inserciones en la tabla Musicales
INSERT INTO Musicales (estreno, id_medio) VALUES
('1993-06-15', 8),  -- Bishoujo Senshi Sailor Moon - Gaiden Dark Kingdom Fukkatsu Hen
('1994-05-20', 9),  -- Bishoujo Senshi Sailor Moon - Shin-Densetsu Kourin
('1995-07-28', 10), -- Bishoujo Senshi Sailor Moon - Kessen/Transilvania no Mori - Shin Toujou! Chibi Moon wo Mamoru Senshi-tachi
('2002-04-10', 11), -- Bishoujo Senshi Sailor Moon - Shin Kaguya Shima Densetsu (Kaiteiban) - Marinamoon Final
('2004-06-14', 12); -- Bishoujo Senshi Sailor Moon - La Reconquista

-- Inserciones en la tabla Formatos 
INSERT INTO Formatos (nombre) VALUES
('Animacion'),  
('Live Action'); 

-- Inserciones en la tabla Series
INSERT INTO Series (n_temporadas, emision, finalizacion, id_formato, id_medio) VALUES
(5, '1992-03-07', '1997-02-08', 1, 13),  -- Sailor Moon (Animación)
(3, '2014-07-05', '2016-12-18', 1, 14),  -- Sailor Moon Crystal (Animación)
(1, '2003-10-04', '2003-12-14', 2, 15);  -- Pretty Guardian Sailor Moon (Live Action)

-- Inserciones en la tabla Temporadas 
INSERT INTO Temporadas (nombre, emision, finalizacion, id_serie) VALUES
('Temporada 1 de Sailor Moon', '1992-03-07', '1993-02-28', 1),
('Temporada 2 de Sailor Moon', '1993-03-07', '1994-02-26', 1),
('Temporada 3 de Sailor Moon', '1994-03-05', '1995-02-25', 1),
('Temporada 4 de Sailor Moon', '1995-03-04', '1996-02-17', 1),
('Temporada 5 de Sailor Moon', '1996-03-09', '1997-02-08', 1),
('Temporada 1 de Sailor Moon Crystal', '2014-07-05', '2014-09-27', 2),
('Temporada 2 de Sailor Moon Crystal', '2015-02-07', '2015-04-04', 2),
('Temporada 3 de Sailor Moon Crystal', '2016-04-02', '2016-12-18', 2),
('Temporada 1 de Pretty Guardian Sailor Moon', '2003-10-04', '2003-12-14', 3);

-- Inserciones en la tabla Episodios
INSERT INTO Episodios (nombre, emision, id_temporada) VALUES
('El Inicio de la Aventura', '1992-03-14', 1),
('El Misterio de la Luna', '1992-03-21', 1),
('Reunión de Heroínas', '1992-03-28', 1),
('Un Nuevo Comienzo', '2014-07-05', 7),
('El Regreso de los Recuerdos', '2014-07-12', 7),
('El Despertar del Poder', '2014-07-19', 7),
('El Despertar de la Luz', '2003-10-04', 9),
('Secretos del Pasado', '2003-10-11', 9),
('La Batalla de los Sentimientos', '2003-10-18', 9),
('Noche de Revelaciones', '1992-04-04', 1),
('El Primer Enfrentamiento', '1992-04-11', 1),
('La Fuerza de la Amistad', '1992-04-18', 1),
('Un Nuevo Compañero', '1993-03-07', 2),
('El Retorno de un Viejo Amigo', '1993-03-14', 2),
('Desenmascarando al Enemigo', '1993-03-21', 2),
('El Enigma de la Magia', '1994-03-05', 3),
('Conociendo al Rival', '1994-03-12', 3),
('La Prueba de Fuego', '1994-03-19', 3),
('El Inicio de una Nueva Era', '2014-07-05', 6),
('Un Amigo en la Sombra', '2014-07-12', 6),
('El Eco de la Eternidad', '2014-07-19', 6),
('La Llegada del Héroe', '2015-02-07', 8),
('El Lazo de la Amistad', '2015-02-14', 8),
('El Último Enfrentamiento', '2015-02-21', 8); 

-- Inserciones en la tabla Peliculas
INSERT INTO Peliculas (anio, director, id_formato, id_medio) VALUES
(2023, 'Takahashi Haruto', 1, 16),  -- Sailor Moon Cosmos
(1993, 'Nakamura Kenji', 1, 17),    -- Sailor Moon R: La Leyenda de la Reina Xenian
(1994, 'Yamamoto Sakura', 1, 18);   -- Sailor Moon SuperS: El Milagro del Agujero Negro de los Sueños



