-- ================================================
-- PERGUNTAS DE NEGÓCIO (ANÁLISE ESTRATÉGICA)
-- Objetivo: Responder às principais dúvidas do projeto
-- ================================================

-- 1. Quais os 5 países que mais produziram músicas de sucesso em 2023?
SELECT main_country, COUNT(*) AS total_musicas
FROM `smiling-axiom-475916-q8.spotify_2023.view_spotify_clean`
GROUP BY main_country
ORDER BY total_musicas DESC
LIMIT 5;

-- 2. Qual a média de streams por gênero musical? (Gêneros que mais rendem)
SELECT main_music_genre, ROUND(AVG(streams), 0) AS media_streams
FROM `smiling-axiom-475916-q8.spotify_2023.view_spotify_clean`
GROUP BY main_music_genre
ORDER BY media_streams DESC;

-- 3. Músicas solo geram mais streams que colaborações (feats)?
SELECT 
  CASE WHEN artist_count = 1 THEN 'Solo' ELSE 'Colaboração' END AS tipo_lancamento,
  ROUND(AVG(streams), 0) AS media_streams
FROM `smiling-axiom-475916-q8.spotify_2023.view_spotify_clean`
GROUP BY tipo_lancamento;

-- 4. O sucesso no Shazam reflete no Spotify? (Top 10 Shazam vs Ranking Spotify)
SELECT track_name, artists_name, in_shazam_charts, in_spotify_charts
FROM `smiling-axiom-475916-q8.spotify_2023.view_spotify_clean`
WHERE in_shazam_charts > 0
ORDER BY in_shazam_charts ASC -- Quanto menor o número, melhor a posição
LIMIT 10;