## Datasets
### Principais Indicadores Brasileiros

#### FGV IBRE

- Índice de Preços ao Consumidor (IPC) = Mede a variação de preços de uma cesta de bens e serviços consumidos pelas famílias.
- Índice Geral de Preços - Mercado (IGP-M) = Utilizado como referência para reajustes de contratos, refletindo a inflação no nível do consumidor.
- Índice de Preços ao Produtor Amplo (IPA) = Mede a variação de preços de produtos no atacado, refletindo a inflação no nível do produtor.
- Índice Nacional de Custo da Construção (INCC) = Avalia a variação dos custos da construção civil, incluindo materiais e mão de obra.
- Índice de Confiança do Consumidor (ICC) = Mede a confiança dos consumidores em relação à economia e suas expectativas sobre a situação financeira pessoal.
- Índice de Confiança Empresarial (ICE) = Avalia a confiança dos empresários em relação à economia e suas expectativas sobre o desempenho de seus negócios.
- Índice de Preços ao Consumidor Classe 1 (IPC-C1): Refere-se à variação de preços para famílias com renda de até 2,5 salários mínimos.
- Índice de Preços ao Consumidor Classe 2 (IPC-C2): Refere-se à variação de preços para famílias com renda entre 2,5 e 5 salários mínimos.
- Índice de Preços ao Consumidor Classe 3 (IPC-C3): Refere-se à variação de preços para famílias com renda acima de 5 salários mínimos.
  
#### IPEA

- Produto Interno Bruto (PIB)
- Índice de Preços ao Consumidor (IPC)
- Taxa de Desemprego
- Formação Bruta de Capital Fixo (FBCF)
- Consumo Aparente de Bens Industriais
- Índice de Custo da Tecnologia da Informação (ICTI)
- Indicador de Inflação por Faixa de Renda
- Taxa de Desocupação (TD)

#### IBGE

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

#### Agências/Institutos Nacionais

Conab (Companhia Nacional de Abastecimento)
Fenabrave (Federação Nacional da Distribuição de Veículos Automotores)
ABRAS (Associação Brasileira de Supermercados)
Embrapa (Empresa Brasileira de Pesquisa Agropecuária)
ABPA (Associação Brasileira de Proteína Animal)
FIESP (Federação das Indústrias do Estado de São Paulo)
CNA (Confederação da Agricultura e Pecuária do Brasil)
Portal da Indústria (Confederação Nacional da Indústria)

#### Links

https://basedosdados.org/#theme
https://www3.bcb.gov.br/sgspub/
https://sidra.ibge.gov.br/
https://www.ibge.gov.br/
https://www.portaldefinancas.com/
https://data.nasdaq.com/
https://www.statista.com/
https://www.seade.gov.br/
https://www.indexmundi.com/
https://www.iea.org/
https://fred.stlouisfed.org/

### Principais Indicadores Globais 

Índice de Desenvolvimento Humano (IDH)
Índice de Gini

#### Principais Agências/Institutos Nacionais

- National Agricultural Library = Biblioteca do Departamento de Agricultura dos Estados Unidos com mais de 3,5 milhões de títulos sobre agricultura e ciências relacionadas
- AGRIS - International System for Agricultural Science and Technology = Banco de dados online mantido pela Food and Agriculture Organization – FAO com mais de 9 milhões de fontes bibliográficas sobre ciência e tecnologia agrícola

#### Links

## Importando dados com R

```
# Quandl
Configurando API (https://data.nasdaq.com/publishers/QDL) -> criar sua própria API Key
Quandl.api_key("iVtrK8_YHwXzG9pA4mmQ")
```
```
# SGS - Sistema Gerenciado de Séries do Banco Central
dados <- gbcbd_get_series(id = 4380, first.date = "2000-01-01",last.date = Sys.Date())
View(dados)
dygraph(dados, main = "Título") %>% dyRangeSelector()

# Criando série
dados_x <- dados$"value"
serie <- ts(dados_x, frequency = 12, star= c(2000), end=(2004))
title("Título")
plot(serie)

Se tivermos uma base tratada, uma outra alterntiva seria transformar dataframe em vetor.
dados_vec <- as.vector(t(dados))
print(dados_vec)
```

```
# IPEA
series_ipeadata <- available_series()
filter(series_ipeadata,str_detect(source, regex("caged", ignore_case = TRUE)))
View(series_ipeadata)

#Selecionando a série desejada
glp <- ipeadata("ANP_CGASN")
View(glp)

dados_x <- glp$"value"
gnp_serie <- ts(dados_x, frequency = 12, star= c(2005))
plot(gnp_serie)
```

```
# Excel/CSV
getwd() #representa o diretório de trabalho atual do processo R
setwd("C:/Users/henri/OneDrive/Repositórios")

dados <- read.csv2("C:/Users/henri/OneDrive/Repositórios/R/Introdução/Datasets/chuva_mensal_sp.csv",
sep = ";", header=TRUE, encoding="UTF-8")

dados <- read_excel("C:/Users/henri/OneDrive/Repositórios/R/Introdução/Datasets/chuva_mensal_sp.xls")
View(dados)

- header = cabeçario
- stringsAsFactors = considerar todas as caracteres como fatores
- sep = separando as variáveis 
- fileEncoding = "UTF-8" or "latin1"
- read.csv -> o default é sep=”,” e dec=”.”
-  read.csv2 -> o default é sep=”;” e dec=”,”.
```

```
# Yahoo Finance 
microsoft <- getSymbols("MSFT", src = "yahoo", auto.assign = FALSE, return.class = 'xts')
View(microsoft)
plot(microsoft)

- Open: O preço de abertura nas datas especificadas
- High: O preço da alta nas datas especificadas
- Low: O preço da baixa nas datas especificadas
- Close: O preço de fechamento nas datas especificadas
- Volume: O volume nas datas especificadas
- Adjusted: O preço de fechamento ajustado depois de aplicar distribuições de dividendos ou divisão da ação.
```

## Importando dados com Python


