# Data Science
![415865341-13ebbab0-76d3-482a-a0cb-2fdc55abed9f](https://github.com/user-attachments/assets/f93fdc0d-5d9a-4406-b9ca-dc4d2ca48452)

> Data science is an interdisciplinary field that uses methods, algorithms, processes, and systems to extract knowledge and insights from structured and unstructured data. It involves a combination of statistics, machine learning, data analysis, computing, and domain-specific knowledge to solve problems and make data-driven decisions.

Key data science activities include:
- Data collection and warehousing: Obtaining relevant data and storing it efficiently.
- Data cleaning and preprocessing: Preparing data for analysis by correcting errors and dealing with missing data.
- Exploratory analysis: Investigating data to identify patterns, trends, and relationships.
- Modeling and machine learning: Applying algorithms to build predictive or classification models.
- Data visualization: Creating charts and dashboards to communicate insights in a clear and accessible way.
- Data-driven decision making: Using the results of analysis to support business or research decisions.

## Data Types
Qualitative (non-numeric attributes).
- Nominal: Denominations (colors, gender, race, titles, etc.)
- Ordinal: attributes that can be classified (e.g., rating of most-watched movies, level of education, level of satisfaction, etc.).

Quantitative (numerical attributes).
- Discrete: finite or enumerable values ​​(number of people in a room, number of cars in a parking lot, etc.)
- Continuous: infinite possible values ​​in an interval (income, time, height, etc.).

## Datasets

### Main Brazilian Indicators

#### FGV IBRE
- Índice de Preços ao Consumidor (IPC) = Mede a variação de preços de uma cesta de bens e serviços consumidos pelas famílias.
- Índice Geral de Preços de Mercado (IGP-M) = Utilizado como referência para reajustes de contratos, refletindo a inflação no nível do consumidor.
- Índice de Preços ao Produtor Amplo (IPA) = Mede a variação de preços de produtos no atacado, refletindo a inflação no nível do produtor.
- Índice Nacional de Custo da Construção (INCC) = Avalia a variação dos custos da construção civil, incluindo materiais e mão de obra.
- Índice de Confiança do Consumidor (ICC) = Mede a confiança dos consumidores em relação à economia e suas expectativas sobre a situação financeira pessoal.
- Índice de Confiança Empresarial (ICE) = Avalia a confiança dos empresários em relação à economia e suas expectativas sobre o desempenho de seus negócios.
- Índice de Preços ao Consumidor Classe 1 (IPC-C1): Refere-se à variação de preços para famílias com renda de até 2,5 salários mínimos.
- Índice de Preços ao Consumidor Classe 2 (IPC-C2): Refere-se à variação de preços para famílias com renda entre 2,5 e 5 salários mínimos.
- Índice de Preços ao Consumidor Classe 3 (IPC-C3): Refere-se à variação de preços para famílias com renda acima de 5 salários mínimos.
  
#### IPEA (Instituto de Pesquisa Econômica Aplicada)
- Produto Interno Bruto (PIB)
- Índice de Preços ao Consumidor (IPC)
- Taxa de Desemprego
- Formação Bruta de Capital Fixo (FBCF)
- Consumo Aparente de Bens Industriais
- Índice de Custo da Tecnologia da Informação (ICTI)
- Indicador de Inflação por Faixa de Renda
- Taxa de Desocupação (TD)

#### IBGE (Instituto Brasileiro de Geografia e Estatística)
- Pesquisa Anual de Comércio (PAC)
- Índice de Preços ao Consumidor Amplo (IPCA)
- Pesquisa Anual de Serviços (PAS)
- Produção Agrícola Municipal (PAM)
- Pesquisa Industrial Anual (PIA)
- Pesquisa Mensal de Serviços (PMS)
- Pesquisa Mensal de Comércio (PMC)
- Pesquisa Industrial Mensal (PIM-PF)
- Levantamento Sistemático da Produção Agrícola (LSPA)
- Pesquisa de Orçamentos Familiares (POF)

### Links for Datasets
1) Banco Central do Brasil (BCB) 
- Sistema Gerenciador de Séries Temporais (SGS) = https://www3.bcb.gov.br/sgspub/
- Sistema Expectativas de Mercado = https://www3.bcb.gov.br/expectativas2/#/consultas

```
Pacotes Disponiveis
R: (GetBCBData) e (rbcb)
Python: (python-bcb)
```

2) Site Base de Dados = https://basedosdados.org/#theme

```
Pacotes Disponiveis
R: (basedosdados)
Python: (basedosdados)
```

3) IPEA = http://www.ipeadata.gov.br/Default.aspx
```
Pacotes Disponiveis
R: (ipeadatar)
Python: (ipeadatapy)
```

4) SIDRA/IBGE = https://sidra.ibge.gov.br/ 

```
Pacotes Disponiveis
R: (sidrar) e (ribge)
Python: (sidrapy) e (pyibge)
```

5) Sistema Estadual de Análise de Dados - SP (SEADE) = https://www.seade.gov.br/

```
Sem Pacotes Disponiveis
```

6) Portal Finanças = https://www.portaldefinancas.com/

```
Sem Pacotes Disponiveis
```

7) FGV IBRE = https://extra-ibre.fgv.br/IBRE/sitefgvdados/default.aspx

```
Pacotes Disponiveis
R: (BETS)
Python: Sem Pacote 
```

#### National Agencies
- Conab (Companhia Nacional de Abastecimento)
- Fenabrave (Federação Nacional da Distribuição de Veículos Automotores)
- ABRAS (Associação Brasileira de Supermercados)
- Embrapa (Empresa Brasileira de Pesquisa Agropecuária)
- ABPA (Associação Brasileira de Proteína Animal)
- FIESP (Federação das Indústrias do Estado de São Paulo)
- CNA (Confederação da Agricultura e Pecuária do Brasil)
- Portal da Indústria (Confederação Nacional da Indústria)

### Main Global Indicators Main
- Conference Board Leading Economic Index
- Índice de Desenvolvimento Humano (IDH)
- Índice de Gini

### Links for Datasets
1) Organization for Economic Cooperation and Development (OCDE) = https://stats.oecd.org/
   
```
Pacotes Disponiveis
R: (OECD)
Python: (pandasdmx)
```

2) International Monetary Fund (IMF) = https://data.imf.org/

```
Pacotes Disponiveis - Recomenda-se usar o pacote da DBnomics 
R: (imfr)
Python: (imfpy)
```

3) World Bank = https://data.worldbank.org/

```
Pacotes Disponiveis
R: (WDI)
Python: ()
```

4) DBnomics = https://db.nomics.world/

```
Pacotes Disponiveis
R: (rdbnomics)
Python: (dbnomics)
```

https://data.gov/

https://www.iea.org/

https://data.nasdaq.com/

https://www.indexmundi.com/

https://fred.stlouisfed.org/

https://www.statista.com/

#### National Agencies
- National Agricultural Library
- AGRIS (International System for Agricultural Science and Technology)
