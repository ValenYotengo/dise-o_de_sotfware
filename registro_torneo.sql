--insertar el registro de ficha

INSERT INTO torneo.fichas (programa_ficha, jornada) VALUES 
('ADSO', 'Mañana'),
('Construcción', 'Tarde'),
('Contabilidad', 'Nocturna'),
('Electricidad', 'Mañana'),
('Gastronomía', 'Tarde'),
('Mecánica Automotriz', 'Nocturna');

--insertar el registro de equipos
INSERT INTO torneo.equipos (nombre_equipo, color_camisa, codigo_ficha) VALUES 
('Galácticos', 'Rojo', 1),
('Sena FC', 'Azul', 2),
('Los del Barrio', 'Verde', 3),
('DeporSena', 'Negro', 4),
('Águilas Doradas', 'Blanco', 5),
('Real Indu', 'Amarillo', 6);

--insetar el registro de jugadores

-- Equipo 1 (Galácticos)
INSERT INTO torneo.jugadores (nombre_jugador, fecha_nacimiento, numero_camiseta, id_equipo) VALUES 
('Carlos Pérez', '2005-03-12', 10, 1),
('Andrés Gómez', '2004-07-22', 7, 1),
('Mateo López', '2005-01-15', 5, 1),
('Juan Torres', '2006-05-20', 1, 1),
('Felipe Ruiz', '2004-11-03', 8, 1),
('David Silva', '2005-09-19', 9, 1),
('Daniel Castro', '2006-02-11', 4, 1),
('Santiago Mora', '2004-12-30', 11, 1);

-- Equipo 2 (Sena FC)
INSERT INTO torneo.jugadores (nombre_jugador, fecha_nacimiento, numero_camiseta, id_equipo) VALUES 
('Alejandro Rios', '2005-04-10', 10, 2),
('Sebastian Vargas', '2004-08-14', 7, 2),
('Kevin Ortiz', '2005-02-25', 5, 2),
('Brayan Rojas', '2006-06-01', 1, 2),
('Esteban Cruz', '2004-10-12', 8, 2),
('Mauricio Medina', '2005-12-05', 9, 2),
('Julian Herrera', '2006-03-18', 4, 2),
('Gabriel Ramos', '2004-01-22', 11, 2);

--equipo 3 (los del barrio)
INSERT INTO torneo.jugadores (nombre_jugador, fecha_nacimiento, numero_camiseta, id_equipo) VALUES 
('Cristian Mejia', '2005-05-05', 10, 3),
('Jhonatan Parra', '2004-09-09', 7, 3),
('Oscar Benitez', '2005-03-30', 5, 3),
('Ricardo Leon', '2006-07-14', 1, 3),
('Manuel Cardenas', '2004-11-21', 8, 3),
('Eduardo Acosta', '2005-01-08', 9, 3),
('Adrian Molina', '2006-04-02', 4, 3),
('Fabian Navarro', '2004-02-19', 11, 3);

-- Equipo 4 (DeporSena)
INSERT INTO torneo.jugadores (nombre_jugador, fecha_nacimiento, numero_camiseta, id_equipo) VALUES 
('Héctor Jimenez', '2005-06-11', 10, 4),
('Diego Arias', '2004-10-04', 7, 4),
('Rodrigo Soto', '2005-04-19', 5, 4),
('Martin Peña', '2006-08-22', 1, 4),
('Camilo Cifuentes', '2004-12-15', 8, 4),
('Samuel Restrepo', '2005-02-28', 9, 4),
('Tomas Valencia', '2006-05-09', 4, 4),
('Emilio Zapata', '2004-03-01', 11, 4);

-- Equipo 5 (Águilas Doradas)
INSERT INTO torneo.jugadores (nombre_jugador, fecha_nacimiento, numero_camiseta, id_equipo) VALUES 
('Lucas Quintero', '2005-07-18', 10, 5),
('Vicente Galeano', '2004-11-19', 7, 5),
('Nicolas Jaramillo', '2005-05-12', 5, 5),
('Joaquin Osorio', '2006-09-03', 1, 5),
('Bruno Echeverry', '2004-01-25', 8, 5),
('Dante Botero', '2005-03-14', 9, 5),
('Gael Betancur', '2006-06-20', 4, 5),
('Vicente Hoyos', '2004-04-11', 11, 5);

-- Equipo 6 (Real Indu)
INSERT INTO torneo.jugadores (nombre_jugador, fecha_nacimiento, numero_camiseta, id_equipo) VALUES 
('Agustín Londoño', '2005-08-21', 10, 6),
('Alonso Henao', '2004-12-02', 7, 6),
('Ignacio Valencia', '2005-06-08', 5, 6),
('Maximiliano Arango', '2006-10-15', 1, 6),
('Lorenzo Cardona', '2004-02-18', 8, 6),
('Simón Tamayo', '2005-04-07', 9, 6),
('Vicente Villegas', '2006-07-29', 4, 6),
('Mateo Salazar', '2004-05-16', 11, 6);

--actualizar los capitanes de los equipos

UPDATE torneo.equipos SET id_capitan = 1 WHERE id_equipo = 1;
UPDATE torneo.equipos SET id_capitan = 9 WHERE id_equipo = 2;
UPDATE torneo.equipos SET id_capitan = 17 WHERE id_equipo = 3;
UPDATE torneo.equipos SET id_capitan = 25 WHERE id_equipo = 4;
UPDATE torneo.equipos SET id_capitan = 33 WHERE id_equipo = 5;
UPDATE torneo.equipos SET id_capitan = 41 WHERE id_equipo = 6;

--insetar registro de canchas

INSERT INTO torneo.canchas (id_cancha, nombre_cancha, ubicacion, capacidad) VALUES 
(1,'Cancha Sintética Principal', 'Bloque A - SENA Central', 250),
(2,'Cancha Techada', 'SENA Norte', 150),
(3,'Cancha de Grama Natural', 'Zona Deportiva Sur', 400);

--insetar registro de arbitros

INSERT INTO torneo.arbitros (nombre_arbitro, celular_arbitro) VALUES 
('Luis Martínez', '3101234567'),
('Carlos Mendoza', '3209876543'),
('Ana Sofía Restrepo', '3154567890'),
('Jorge Yotengo', '3187654321');

--ingresar registro de partidos

INSERT INTO torneo.partidos (fecha, hora, fase, id_cancha, id_equipo_local, id_equipo_visitante) VALUES 
('2026-09-09', '08:00:00', 'Grupos', 1, 1, 2),
('2026-09-10', '10:00:00', 'Grupos', 1, 3, 4),
('2026-09-16', '14:00:00', 'Grupos', 2, 5, 6),
('2026-09-25', '08:00:00', 'Grupos', 2, 1, 3),
('2026-10-22', '10:00:00', 'Grupos', 3, 2, 5),
('2026-10-22', '14:00:00', 'Grupos', 3, 4, 6),
('2026-10-25', '09:00:00', 'Grupos', 1, 1, 4),
('2026-10-25', '11:00:00', 'Grupos', 2, 2, 6),
('2026-10-25', '15:00:00', 'Grupos', 3, 3, 5);

--insetar registro de participaciones

INSERT INTO torneo.participantes (id_jugador, id_partido, goles, tarjetas_amarillas, tarjeta_roja, minutos_jugados) VALUES 
(1, 1, 2, 0, 0, 90),
(2, 1, 1, 1, 0, 90),
(9, 1, 1, 0, 0, 90),
(10, 1, 0, 1, 0, 80),
(17, 2, 1, 0, 0, 90),
(25, 2, 2, 1, 0, 90),
(33, 3, 0, 0, 1, 45),
(41, 3, 3, 0, 0, 90);

--insertar registro de partido_arbitro

INSERT INTO torneo.partido_arbitro (id_arbitro, id_partido, rol) VALUES 
(1, 1, 'central'),
(2, 1, 'asistente'),
(3, 1, 'anotador'),
(1, 2, 'central'),
(4, 2, 'asistente'),
(2, 3, 'central'),
(3, 3, 'asistente');










