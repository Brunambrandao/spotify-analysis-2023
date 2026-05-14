# 🗄️ Estrutura de Dados (BigQuery)

Para garantir a organização e a integridade da análise, os dados foram estruturados dentro do ambiente **Google Cloud Platform (GCP)** seguindo a hierarquia abaixo:

## 📍 Localização Técnica
* **Projeto:** `smiling-axiom-475916-q8`
* **Dataset:** `spotify_2023`

---

## 📊 Tabelas e Visualizações
Abaixo estão detalhados os objetos utilizados no banco de dados para suportar o dashboard:

| Objeto | Tipo | Descrição | Registros |
| :--- | :--- | :--- | :--- |
| `track_in_spotify` | Tabela | Dados primários de desempenho e metadados das faixas no Spotify. | 803 |
| `track_in_competition` | Tabela | Dados de performance multiplataforma (Apple Music, Deezer e Shazam). | 803 |
| `view_spotify_clean` | **View** | Camada final de dados limpos, unificados e prontos para visualização. | 803 |

---

## 📂 Detalhes do Dataset
* **Fonte dos Dados:** Dataset público — *Spotify Top Songs 2023*.
* **Processamento:** As tabelas originais foram processadas via SQL para eliminar duplicatas e tratar valores nulos antes da criação da View final.

---

## 👩‍💻 Autora
**Bruna Medeiros Brandão**
*Analista de Dados em Junior*
