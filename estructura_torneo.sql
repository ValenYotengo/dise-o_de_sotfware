--borrar el esquema de base de datos por defecto 
DROP SCHEMA public;
CREATE SCHEMA IF NOT EXISTS torneo;

--crear la entidad ficha

CREATE TABLE IF NOT EXISTS torneo.fichas(
id_ficha SERIAL UNIQUE NOT NULL PRIMARY KEY,
programa_ficha VARCHAR(50) NOT NULL,
jornada VARCHAR(50) NOT NULL

);

--crear la entidad equipo

CREATE TABLE IF NOT EXISTS torneo.equipos(
id_equipo SERIAL UNIQUE NOT NULL PRIMARY KEY,
nombre_equipo VARCHAR(50) NOT NULL,
color_camisa VARCHAR(30) NOT NULL,
id_capitan INT NOT NULL,
codigo_ficha INT NOT NULL,

FOREIGN KEY(codigo_ficha) REFERENCES torneo.fichas(id_ficha)

);

--crear la entidad jugadores

CREATE TABLE IF NOT EXISTS torneo.jugadores(
id_jugador SERIAL UNIQUE NOT NULL PRIMARY KEY,
nombre_jugador VARCHAR(50) NOT NULL,
fecha_nacimiento DATE NOT NULL,
numero_camiseta INT NOT NULL,
id_equipo SERIAL NOT NULL,

CONSTRAINT fk_equipo_jugador FOREIGN KEY (id_equipo) REFERENCES torneo.equipos(id_equipo)
);

--crear la entiedad cancha

CREATE TABLE IF NOT EXISTS torneo.canchas(
id_cancha INT UNIQUE NOT NULL PRIMARY KEY,
nombre_cancha VARCHAR(50) NOT NULL,
ubicacion VARCHAR(50) NOT NULL,
capacidad INT NOT NULL
);

--crear la entidad de partidos

CREATE TABLE IF NOT EXISTS torneo.partidos(
id_partido SERIAL UNIQUE NOT NULL PRIMARY KEY,
fecha DATE NOT NULL,
hora TIME NOT NULL,
fase VARCHAR(50) NOT NULL,
id_cancha INT NOT NULL,
id_equipo_local INT NOT NULL,
id_equipo_visitante INT NOT NULL,
    FOREIGN KEY (id_cancha) REFERENCES torneo.canchas(id_cancha),
    FOREIGN KEY (id_equipo_local) REFERENCES torneo.equipos(id_equipo),
    FOREIGN KEY (id_equipo_visitante) REFERENCES torneo.equipos(id_equipo),
    CONSTRAINT chk_equipos_distintos CHECK (id_equipo_local <> id_equipo_visitante)

);

--crear la entidad de participantes

CREATE TABLE IF NOT EXISTS torneo.participantes(
id_participantes SERIAL UNIQUE NOT NULL PRIMARY KEY,
id_jugador SERIAL NOT NULL,
id_partido INT NOT NULL,
    goles INT DEFAULT 0 CHECK (goles >= 0),
    tarjetas_amarillas INT DEFAULT 0 CHECK (tarjetas_amarillas >= 0),
    tarjeta_roja INT DEFAULT 0 CHECK (tarjeta_roja >= 0),
    minutos_jugados INT DEFAULT 0 CHECK (minutos_jugados >= 0),
    FOREIGN KEY (id_jugador) REFERENCES torneo.jugadores(id_jugador),
    FOREIGN KEY (id_partido) REFERENCES torneo.partidos(id_partido)
);

-- crear la entidad de arbitro 

CREATE TABLE IF NOT EXISTS torneo.arbitros(
id_arbitro SERIAL UNIQUE NOT NULL PRIMARY KEY,
nombre_arbitro VARCHAR(50) NOT NULL,
celular_arbitro VARCHAR(50) NOT NULL
);

--crear la entidad de partido.arbitro

CREATE TABLE IF NOT EXISTS torneo.partido_arbitro(
id_partido_arbitro SERIAL PRIMARY KEY,
    id_arbitro INT NOT NULL,
    id_partido INT NOT NULL,
    rol VARCHAR(20) NOT NULL CHECK (rol IN ('central', 'asistente', 'anotador')),
    FOREIGN KEY (id_arbitro) REFERENCES torneo.arbitros(id_arbitro),
    FOREIGN KEY (id_partido) REFERENCES torneo.partidos(id_partido),
    CONSTRAINT uq_arbitro_partido UNIQUE (id_arbitro, id_partido)
);









