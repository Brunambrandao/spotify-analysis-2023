-- ================================================
-- IDENTIFICAÇÃO DE DUPLICADOS
-- Tabela: track_in_spotify
-- Método: GROUP BY + COUNT + HAVING
-- ================================================

SELECT 
  track_id,
  track_name,
  artists_name,
  COUNT(*) AS quantidade
FROM `smiling-axiom-475916-q8.spotify_2023.track_in_spotify`
GROUP BY 
  track_id,
  track_name,
  artists_name
HAVING COUNT(*) > 1
ORDER BY quantidade DESC;

-- ================================================
-- IDENTIFICAÇÃO DE DUPLICADOS
-- Tabela: track_in_competition
-- Método: GROUP BY + COUNT + HAVING
-- ================================================

SELECT 
  track_id,
  COUNT(*) AS quantidade
FROM `smiling-axiom-475916-q8.spotify_2023.track_in_competition`
GROUP BY 
  track_id
HAVING COUNT(*) > 1
ORDER BY quantidade DESC;