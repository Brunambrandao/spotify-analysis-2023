-- ================================================
-- CÁLCULO DE CORRELAÇÕES 
-- Tabela: view_spotify_clean
-- Objetivo: Validar a força da relação entre variáveis
-- ================================================

SELECT 
  -- Correlação entre Playlists e Streams (Esperado: Forte positiva)
  CORR(in_spotify_playlists, streams) AS corr_playlists_streams,
  
  -- Correlação entre Charts e Streams (Esperado: Fraca/Moderada positiva)
  CORR(in_spotify_charts, streams) AS corr_charts_streams,
  
  -- Correlação entre Shazam e Spotify (Esperado: Sem correlação)
  CORR(in_shazam_charts, streams) AS corr_shazam_spotify,
  
  -- Correlação entre Apple Music e Spotify
  CORR(in_apple_charts, in_spotify_charts) AS corr_apple_spotify

FROM `smiling-axiom-475916-q8.spotify_2023.view_spotify_clean`;