-- ================================================
-- CRIAÇÃO DA VIEW FINAL LIMPA E PADRONIZADA
-- Une as duas tabelas com todos os tratamentos
-- ================================================

CREATE OR REPLACE VIEW `smiling-axiom-475916-q8.spotify_2023.view_spotify_final` AS

WITH spotify_limpa AS (
  SELECT *
  FROM (
    SELECT
      track_id,
      track_name,
      artists_name,
      SAFE_CAST(artist_count AS INT64)          AS artist_count,
      SAFE_CAST(released_year AS INT64)         AS released_year,
      SAFE_CAST(released_month AS INT64)        AS released_month,
      SAFE_CAST(released_day AS INT64)          AS released_day,
      SAFE_CAST(in_spotify_playlists AS INT64)  AS in_spotify_playlists,
      COALESCE(SAFE_CAST(in_spotify_charts AS INT64), 0) AS in_spotify_charts,
      SAFE_CAST(streams AS INT64)               AS streams,

      -- Padronizando main_country
      CASE
        WHEN main_country = 'PR'           THEN 'Puerto Rico'
        WHEN main_country = 'MX'           THEN 'Mexico'
        WHEN main_country = 'USA'          THEN 'United States'
        WHEN main_country = 'main_country' THEN NULL
        WHEN main_country = ''             THEN NULL
        ELSE main_country
      END AS main_country_padronizado,

      -- Padronizando main_music_genre
      CASE
        WHEN main_music_genre = 'Disco-pop'        THEN 'Disco pop'
        WHEN main_music_genre = 'Main genre'       THEN NULL
        WHEN main_music_genre = 'main_music_genre' THEN NULL
        WHEN main_music_genre = ''                 THEN NULL
        ELSE main_music_genre
      END AS main_music_genre_padronizado,

      -- Linha de desempate para remover duplicados
      ROW_NUMBER() OVER (
        PARTITION BY track_id, track_name, artists_name
        ORDER BY track_id
      ) AS rn

    FROM `smiling-axiom-475916-q8.spotify_2023.track_in_spotify`
  )
  -- Remove duplicados
  WHERE rn = 1
  -- Remove outliers e linhas inválidas
  AND SAFE_CAST(streams AS INT64) > 0
  AND SAFE_CAST(released_year AS INT64) > 1990
  AND main_country_padronizado IS NOT NULL
  AND main_music_genre_padronizado IS NOT NULL
),

competition_limpa AS (
  SELECT
    track_id,
    SAFE_CAST(in_apple_playlists AS INT64)  AS in_apple_playlists,
    SAFE_CAST(in_apple_charts AS INT64)     AS in_apple_charts,
    SAFE_CAST(in_deezer_playlists AS INT64) AS in_deezer_playlists,
    SAFE_CAST(in_deezer_charts AS INT64)    AS in_deezer_charts,
    COALESCE(SAFE_CAST(in_shazam_charts AS INT64), 0) AS in_shazam_charts
  FROM `smiling-axiom-475916-q8.spotify_2023.track_in_competition`
)

-- JOIN final
SELECT
  s.track_id,
  s.track_name,
  s.artists_name,
  s.artist_count,
  s.released_year,
  s.released_month,
  s.released_day,
  s.in_spotify_playlists,
  s.in_spotify_charts,
  s.streams,
  s.main_country_padronizado,
  s.main_music_genre_padronizado,
  c.in_apple_playlists,
  c.in_apple_charts,
  c.in_deezer_playlists,
  c.in_deezer_charts,
  c.in_shazam_charts
FROM spotify_limpa AS s
LEFT JOIN competition_limpa AS c
  ON s.track_id = c.track_id;