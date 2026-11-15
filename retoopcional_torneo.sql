-- Actualizar estadísticas de participación del jugador en el partido

BEGIN;

UPDATE torneo.participantes 
SET goles = 1, tarjetas_amarillas = 0, tarjeta_roja = 0, minutos_jugados = 90 
WHERE id_jugador = 1 AND id_partido = 1;

COMMIT;

--reto opcional

CREATE OR REPLACE VIEW torneo.vista_goleadores AS
SELECT 
    j.nombre_jugador,
    e.nombre_equipo,
    SUM(p.goles) AS total_goles,
    SUM(p.tarjetas_amarillas) AS total_amarillas,
    SUM(p.tarjeta_roja) AS total_rojas
FROM torneo.participantes p
JOIN torneo.jugadores j ON p.id_jugador = j.id_jugador
JOIN torneo.equipos e ON j.id_equipo = e.id_equipo
GROUP BY j.id_jugador, j.nombre_jugador, e.nombre_equipo
ORDER BY total_goles DESC;


