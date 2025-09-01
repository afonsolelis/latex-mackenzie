Aqui está um detalhamento completo, em **Markdown**, de como foi realizada a análise bibliométrica sistemática na proposta de tese:

---

# 📊 Pesquisa Bibliométrica Sistemática

A análise foi conduzida em várias etapas, combinando **busca sistemática em bases científicas**, aplicação de **critérios de inclusão e exclusão**, e uso de **perguntas de pesquisa estruturadas** para organizar a extração de dados e tendências.

---

## 🔎 Estratégia de Busca

* **Bases consultadas**:

  * **Scopus** (abrangente, várias áreas).
  * **PubMed** (específica em saúde/medicina).

* **Critérios de inclusão**:

  * Período: artigos publicados entre **jan/2018 e mar/2025**.
  * Tipo: publicações revisadas por pares (periódicos, conferências).
  * Idioma: inglês e português.
  * Relevância: artigos que abordassem pelo menos **dois dos seguintes temas em conjunto**:

    1. Síndrome de Sjögren.
    2. Deep Learning.
    3. Transfer Learning.
    4. Imagens médicas.
    5. Fairness (justiça e viés).

* **Critérios de exclusão**:

  * Documentos fora do período definido.
  * Materiais não revisados por pares (pôsteres, editoriais, resumos, etc.).
  * Trabalhos duplicados ou sem acesso ao texto completo.
  * Estudos que não tratassem de fairness em contexto de saúde, mesmo que mencionassem o termo.

---

## 📑 Processamento dos Resultados

* **Resultado inicial**:

  * 654.074 artigos encontrados.

* **Primeiro filtro**:

  * Aplicação de combinações de strings de busca (ex.: *deep learning AND fairness AND medical image*).
  * Redução para **270 artigos** mais aderentes.

* **Segundo filtro**:

  * Leitura individual e aplicação dos critérios de inclusão/exclusão.
  * Resultado final: **69 artigos selecionados para análise detalhada**.

---

## 📋 Estrutura da Análise Bibliométrica

Para sistematizar a extração de informações, foram definidas **15 perguntas de pesquisa**, organizadas em eixos:

1. **Bases de dados utilizadas**

   * Tipos de imagens (raio-X, RM, TC, US, etc.).
   * Origem: públicas ou privadas.
   * Tamanho da amostra (pacientes e imagens).
   * Existência de atributos sensíveis (gênero, idade, etnia).

2. **Redes neurais e tarefas**

   * Tarefa principal (classificação ou segmentação).
   * Número de classes preditas.
   * Base de pré-treinamento no transfer learning (ImageNet, RadImageNet, etc.).
   * Modelos usados (VGG, ResNet, EfficientNet, CNN customizadas).
   * Se o modelo era novo ou já existente.

3. **Avaliação de desempenho**

   * Métricas tradicionais: acurácia, precisão, recall, F1, AUC.
   * Métricas de segmentação (IoU, Dice, etc.).
   * Métricas específicas de fairness (ex.: disparidade entre subgrupos).

4. **Fairness e viés**

   * Abordagens aplicadas (pré-processamento, in-processing, pós-processamento).
   * Principais problemas de viés observados (gênero, idade, desbalanceamento de classes).

5. **Doença analisada e contexto clínico**

   * Registro de qual condição médica foi foco do estudo (incluindo, mas não restrito à Síndrome de Sjögren).

6. **Desafios e lacunas relatados**

   * Escassez de datasets balanceados.
   * Falta de atributos demográficos nos dados.
   * Dificuldade de generalização em subgrupos minoritários.
   * Trade-offs entre **acurácia vs. fairness**.

---

## 📈 Resultados Extraídos

* **Dados**: predominância de **bases privadas**, com poucas públicas disponíveis.
* **Tamanho das amostras**: em geral limitado, reforçando a dependência de transfer learning.
* **Modelos**: grande uso de arquiteturas **pré-treinadas no ImageNet e RadImageNet**.
* **Fairness**: poucos trabalhos incorporaram métricas de equidade; quando aplicadas, observaram **desempenho pior para grupos minoritários**.
* **Mitigação de viés**: estratégias ainda incipientes (reamostragem, balanceamento de dados e ajustes de loss function).
* **Lacuna**: não foram encontrados estudos que analisassem especificamente o **impacto do transfer learning na equidade** para Síndrome de Sjögren.

---

Quer que eu monte essa seção em **formato de relatório narrativo corrido** (sem tópicos), como se fosse para incorporar diretamente no capítulo da tese?
