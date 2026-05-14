# 🧹 Documentação de Limpeza e Tratamento de Dados

Este documento detalha o processo de **ETL (Extract, Transform, Load)** realizado no Google BigQuery para garantir a integridade das análises apresentadas no dashboard.

---

## 🛠️ Etapas do Processo
Para transformar os dados brutos em informações confiáveis, segui as seguintes etapas técnicas:

1.  **Identificação de valores nulos:** Utilização de `COUNT`, `WHERE` e `IS NULL` para localizar lacunas no dataset.
2.  **Identificação de duplicados:** Uso de `GROUP BY` e `HAVING` para garantir que cada música fosse única.
3.  **Análise de Outliers:** Verificação de valores discrepantes com as funções `MIN`, `MAX` e `AVG`.
4.  **Padronização de Categorias:** Aplicação de lógica `CASE WHEN` para normalizar nomes de países e gêneros.
5.  **Criação de VIEW Final:** União das tabelas via `JOIN` para gerar a camada de visualização definitiva.

---

## 📋 Problemas Encontrados e Decisões Tomadas

Abaixo, apresento o log de alterações realizadas durante o tratamento:

| Categoria | Coluna | Ação Realizada |
| :--- | :--- | :--- |
| **Valores Nulos** | `in_spotify_charts` | 4 valores substituídos por 0. |
| **Valores Nulos** | `in_shazam_charts` | 50 valores substituídos por 0. |
| **Qualidade** | `main_country` | 1 linha com valor nulo removida. |
| **Qualidade** | `main_music_genre` | 1 linha com valor nulo removida. |
| **Duplicidade** | `track_in_spotify` | 4 registros duplicados removidos. |
| **Padronização** | `main_country` | Correção de siglas: PR → Puerto Rico, MX → Mexico, USA → United States. |
| **Padronização** | `main_music_genre` | Ajuste de categoria: "Disco-pop" → "Disco pop". |
| **Integridade** | `streams` | Remoção de 1 linha com valor inválido. |

---

## 📈 Resultados da Análise de Dados

Após a limpeza, o dataset de **803 registros** revelou as seguintes tendências:

### 🌍 Visão Geográfica
* **Dominância:** Os Estados Unidos lideram com 362 músicas (45% do dataset).
* **Emergentes:** South Korea (4º lugar), Puerto Rico e Colômbia destacam-se pela exportação cultural de K-pop e Reggaeton.

### 🔗 Correlações Estatísticas
| Variáveis Analisadas | Coeficiente | Interpretação |
| :--- | :--- | :--- |
| **Streams x Playlists** | **0.80** | Correlação Forte Positiva. |
| **Streams x Spotify Charts** | 0.24 | Correlação Fraca Positiva. |
| **Streams x Shazam** | 0.012 | Inexistência de correlação. |

---

## 👩‍💻 Autora
**Bruna Medeiros Brandão**
*Analista de Dados Junior*
