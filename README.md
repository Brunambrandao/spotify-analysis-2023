# 🎵 Panorama Global de Streaming 
### Análise de Performance: Spotify, Apple Music e Shazam

![Spotify](https://img.shields.io/badge/Spotify-1DB954?style=for-the-badge&logo=spotify&logoColor=white)
![BigQuery](https://img.shields.io/badge/BigQuery-4285F4?style=for-the-badge&logo=googlecloud&logoColor=white)
![Looker Studio](https://img.shields.io/badge/Looker_Studio-4285F4?style=for-the-badge&logo=googleanalytics&logoColor=white)

---

## 📋 Sobre o Projeto
Este projeto analisa as **803 músicas mais populares do Spotify em 2023**, cruzando dados de performance com Apple Music e Shazam. O objetivo é identificar os fatores que levam uma música ao topo das paradas globais e entender a dinâmica entre diferentes plataformas de streaming.

Desenvolvido como projeto prático na **Laboratoria**, o pipeline abrange desde a limpeza de dados no BigQuery até a visualização estratégica no Looker Studio.

---

## 🎯 Perguntas de Negócio Respondidas
- Quais países produzem mais músicas de sucesso?
- Quais gêneros musicais dominam o streaming global?
- Existe relação entre presença em playlists e número de streams?
- O sucesso no Shazam reflete no desempenho do Spotify?
- Músicas solo performam melhor que colaborações (feats)?

---

## 🛠️ Ferramentas Utilizadas
- **Google BigQuery:** Armazenamento e processamento de dados (Data Warehouse).
- **SQL (GoogleSQL):** Limpeza, tratamento e análise estatística.
- **Looker Studio:** Criação de dashboard interativo e visualização de dados.
- **Markdown:** Documentação técnica do repositório.

---

## 📂 Estrutura do Repositório

Para facilitar a navegação e o entendimento do projeto, o repositório está organizado da seguinte forma:

* **[queries/](queries/)**: Pasta contendo os 7 scripts SQL utilizados para extração, limpeza e análise estatística dos dados.
* **[dashboard/](dashboard/)**: Pasta com o arquivo PDF do dashboard interativo e capturas de ecrã das visualizações principais.
* **[dados-utilizados.md](dados-utilizados.md)**: Documentação técnica detalhando a localização das tabelas no BigQuery e a hierarquia do projeto.
* **[limpeza-dos-dados.md](limpeza-dos-dados.md)**: Relatório detalhado com todas as etapas de ETL, tratamento de nulos e remoção de duplicados.

---

## 📊 Principais Insights
- **O Poder das Playlists:** Encontramos uma correlação de **0.80** entre o número de playlists e streams, provando que a curadoria é o maior motor de sucesso.
- **Independência das Plataformas:** A correlação entre Shazam e Spotify é de apenas **0.012**, indicando que o comportamento de "descoberta" (Shazam) não garante o "hábito" de escuta (Spotify).
- **Geografia do Sucesso:** Os EUA dominam 45% do dataset, mas gêneros como K-Pop e Reggaeton mostram uma descentralização cultural crescente.

---

## 🔗 Links Úteis
- [Acesse o Dashboard Interativo no Looker Studio](https://datastudio.google.com/s/vuphJibcvig)

---

## 👩‍💻 Autora
**Bruna Medeiros Brandão**
[LinkedIn](https://www.linkedin.com/in/bruna-brandao) | [GitHub](https://github.com/Brunambrandao)
