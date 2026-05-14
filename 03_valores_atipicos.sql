-- ================================================
-- IDENTIFICAR VARIAÇÕES EM VARIÁVEL CATEGÓRICA
-- Coluna: main_music_genre
-- Método: DISTINCT
-- ================================================

SELECT DISTINCT main_music_genre
FROM `smiling-axiom-475916-q8.spotify_2023.track_in_spotify`
ORDER BY main_music_genre;

-- ================================================
-- IDENTIFICAR VARIAÇÕES EM VARIÁVEL CATEGÓRICA
-- Coluna: main_country
-- Método: DISTINCT
-- ================================================

SELECT DISTINCT main_country
FROM `smiling-axiom-475916-q8.spotify_2023.track_in_spotify`
ORDER BY main_country;

-- ================================================
-- IDENTIFICAR VARIAÇÕES EM VARIÁVEL CATEGÓRICA
-- Coluna: main_music_genre
-- Método: DISTINCT + COUNT
-- ================================================

SELECT 
  DISTINCT main_music_genre,
  COUNT(*) AS quantidade
FROM `smiling-axiom-475916-q8.spotify_2023.track_in_spotify`
GROUP BY main_music_genre
ORDER BY quantidade DESC;

-- ================================================
-- IDENTIFICAR VARIAÇÕES EM VARIÁVEL CATEGÓRICA
-- Coluna: main_country
-- Método: DISTINCT + COUNT
-- ================================================

SELECT 
  DISTINCT main_country,
  COUNT(*) AS quantidade
FROM `smiling-axiom-475916-q8.spotify_2023.track_in_spotify`
GROUP BY main_country
ORDER BY quantidade DESC;

-- ================================================
-- VERIFICAR TODOS OS VALORES DE AMBAS AS COLUNAS
-- Para garantir não há inconsistências escondidas
-- ================================================

SELECT 
  'main_music_genre' AS coluna,
  main_music_genre AS valor,
  COUNT(*) AS quantidade
FROM `smiling-axiom-475916-q8.spotify_2023.track_in_spotify`
GROUP BY main_music_genre

UNION ALL

SELECT 
  'main_country' AS coluna,
  main_country AS valor,
  COUNT(*) AS quantidade
FROM `smiling-axiom-475916-q8.spotify_2023.track_in_spotify`
GROUP BY main_country

ORDER BY coluna, quantidade DESC;

