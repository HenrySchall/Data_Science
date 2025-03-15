## R Language
- Download R: https://cran.r-project.org/bin/windows/base/
- Comunidade: https://rpubs.com/

> R is an open-source programming language for statistical computing, widely used in data analysis. The language was created by Ross Ihaka and Robert Gentleman at the University of Auckland, New Zealand, in the early 1990s. They were motivated by the desire to develop a programming language that was powerful for statistical analysis and at the same time accessible and flexible.

### Setting up R for use in Visual Studio Code

```
# Run in the R terminal
install.packages("languageserver")
install.packages("httpgd")
```

```
# Preferences (Open User Settings (JSON)
"editor.quickSuggestions.other": false
"r.lsp.diagnostics": false
"r.plot.useHttpgd": true
```

### Introdução 

#### Operadores Matemáticos 

```
# Soma
5 + 3

# Subtração
8 - 6

# Multiplicação
4 * 3

# Divisão
20 / 5

# Potenciação
4 ** 2 ou 4 ^ 2

# Radiciação (quadrada)
sqrt (81) ou 81**(1/2)

 # Radiciação Cúbica
125**(1/3)

# Módulo
abs (-10)

# Fatorial
factorial(3)

# Exponencial
exp(1)

# Logatimo natural
log(2.718281828)

# Logaritmo
log2(8) ou 2^3 = 8

# Notação científica
2e32 # (2x10^32)
2e3 # (2x10^3)
2e-26 # (2x10^-26)
2e5 + 4e5 # (2x10^5 + 2x10^4)
3e20 * 2e12 # (3x10^20 * 2x10^12)
15e16 / 5e6 # (15x10^16 / 5x10^6)

```

#### Variáveis
```
resultado <- 4 * 7
print(resultado)

flores vermelhas <- 5
flores laranjas  <- 6
boque <- flores laranjas + flores vermelhas
print(boque)
```

#### Estrutura do Dados

- class
- table
- summary 
- labels
- levels

```
#Determinando a posição de cada fator
posicao <- escolaridade[2]
posicao
posicao <- escolaridade[1]
posicao

#Adicionando uma posição
escolaridade2 <- c(escolaridade,"1")
escolaridade2
class(escolaridade2)

#Excluindo posição
posicao_excluida <- escolaridade[-2]
posicao_excluida

#Fator (coloca na ordem)
escolaridade_fator <- as.factor(escolaridade)
print (escolaridade_fator)
class(escolaridade_fator)

posicao <- escolaridade_fator[1]
posicao <- escolaridade_fator[2]
posicao <- escolaridade_fator[3]
posicao <- escolaridade_fator[4]
posicao

summary (escolaridade)
summary (escolaridade_fator) #vária dependendo do tipo de objeto
table(escolaridade) #frequência das variáveis

tensao_casas <- c(110, 220, 110, 110, 110, 110, 220)
print(tensao_casas)
class(tensao_casas)
summary(tensao_casas)
table(tensao_casas)

tensao_casas_fator <- as.factor (tensao_casas)
print(tensao_casas_fator)
summary(tensao_casas_fator)

#level define os fatores
#label atribuição de cada fator
#order = True define se um fator é menor que o outro fator qualitativamente

factor_temperature_vector <- factor(tensao_casas, levels = c("110", "220"), labels = c("Baixo","Alto"), order = T)
factor_temperature_vector
```

#### Tipo Básico do Objeto

- numeric: numérico
- integer: inteiro
- complex: número complexo
- character (string): caractere
- logical (boolean): lógicos (True e False)
- factor: categorias bem definidas. gênero(masculino e feminino)

```
# Identificando variável
x = 2
class(x)

# Declarar variáveis como string (texto)
str(x)

# Convertendo variável
x <- as.integer(x)
class(x)

genero <- c("masculino","feminino")
genero
class(genero)

genero <- as.factor(genero)
class(genero)

# Comprimento Variável
length(genero) # possui dois fatores
length(x) # possui apenas um fator

q <- "bom dia" 
length(q)

u <- c("1","2","3")
length(u)
```

#### Dataframes

```
mes_numero <- c(1,2,3,4,5,6,7,8,9,10,11,12)
mes_nome <- c("janeiro","fevereiro","mar�o","abril","maio","junho","julho",
              "agosto","setembro","outubro","novembro","dezembro")
ano <- c(2021,2021,2021,2021,2021,2021,2021,2021,2021,2021,2021,2021)
data.frame(mes_numero,mes_nome,ano)

# Data Frames pertencentes ao R
df <- mtcars
df

df2 <- airquality
df2

?airquality
?datasets
help (datasets)

nrow(df2)
ncol(df2)
dim(df2)
summary(df2)
```

#### Listas

```
nome <- c("Luciano","Pedro","Joyce", "Maria")
idade <- c(46, 38, 27, 29)
curso <- c("Matemática", "Linguagem R", "Redes Neurais", "Python")
lista <- list(nome, idade, curso)
print(lista)

# Objeto da lista, basta colocar entre colchetes.
lista[1]
```

#### Estrutura Condicional If e Else

```
x <- 10
if (x < 10)
  {print("x é menor que 10!")}
else
  {print("x é maior ou igual a 10")}

nota <- 4.5
if (nota >= 6)
  {print('Aprovado')}
else if (nota >= 5 & nota< 6){
  print('Recuperação')}
else
  {print('Reprovado')}
```

#### Funções 
```
maior = function (x,y)
 {if (x < y)
   {return (y)}
  else
    {return (x)}}

x <- 10
y <- 8
maior (x , y)
```

#### Igualdade
```
# Comparação de valores lógicos
TRUE == FALSE
TRUE != FALSE

# Comparação de valores numéricos
-6 * 14 != 17 - 101
-6 * 14 == 17 - 101

# Comparação de um valor numérico com outro lógico
TRUE == 1
FALSE == 0

#####
##   MAIOR OU MENOR QUE
#####

# Comparação de números (resultado de cada lado)
-6 * 5 + 2 >= -10 + 1

# Comparação de strings
"raining" <= "raining dogs"

# Comparação de strings
TRUE > FALSE



#####
##   & e |
#####

# Quando o LinkedIn excede 10 e Facebook menor que 10?
views
teste <- linkedin > 10 & facebook < 10
sum(linkedin > 10 & facebook < 10)
sum(teste)

# Quando um ou outro foi visitado mais que 12 vezes?
views
linkedin > 12 | facebook > 12
sum(linkedin > 12 | facebook > 12)

# Quando as visitas foram maiores que 11 e menores ou iguais a 14?
views > 11 & views <= 14
sum(views > 11 & views <= 14)

#####
##   NOT
#####

# Contrário do resultado da condição
!(5 > 3)

#####
##   IFELSE
#####

# Último dia de visualização do LinkedIn e Facebook
li <- 5
fb <- 5

# Ifelse para testar condições
if (li >= 15 & fb >= 15) {          # Testar se em ambos temos 15 ou mais visitas
  sms <- (li + fb) * 2              # Se for verdade, execute a soma das visitas multiplicado por 2 
} else  if (li < 10 & fb < 10) {     # Caso contrário, teste se em ambos temos menos que 10 visitas
  sms <- (li + fb) / 2              # Se for verdade, execute a média de visitas
} else {                            # Caso contrário, apenas some as visitas
  sms <- (li + fb)
}

# resultado
print(sms)

#####
##   WHILE LOOP
#####

# Uma variável de velocidade
speed <- 64

# Enquanto a velocidade for maior que 30 execute
while (speed > 30 ) {
  print(speed)
  print('Desacelerando!')
  speed <- speed - 7   # Desacelerar a velocidade        
}

# Mostre o resultado
print(speed)

#####
##   FOR LOOP
#####

#  Versão 1
for (i in linkedin) {       # Para cada valor da matriz views que existe no vetor linkedin
  print(i)                  # Mostre o valor
}

# Versão 2
for (i in 1:length(linkedin)) { # Para cada índice da sequência de 1 a length(linkedin) 
  print(linkedin[i])            # Mostre o valor do vetor do respectivo índice
}
# Versão 3: Usando a função seq_along. Ela cria um vetor 
# de inteiros com índices para acompanhar o objeto. 
for (i in seq_along(linkedin)) { # Para cada índice do vetor linkdedin
  print(linkedin[i])             # Mostre os resultados
}

#####
##   LOOP SOBRE UMA LISTA
#####

# Criando uma lista
nyc <- list(pop = 8405837, bairros = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Versão 1
for (i in nyc) {             # Para cada item da lista 
  print(i)                   # Mostre os valores contidos em cada item da lista
}

# Versão 2
for (i in 1:length(nyc)) {       # Para cada índice da sequência de 1 até o tamanho de itens na lista
  print(nyc[[i]])                # Mostre os valores contidos em cada item da lista usando o índice
}

#####
##   LOOP SOBRE UMA MATRIZ
#####

# Criar uma matriz
ttt <- matrix(c("O", NA, "X", NA, "O", NA, "X", "O", "X"), nrow = 3, ncol = 3)

# Executar o loop 
for (i in 1:nrow(ttt)) {        # Para cada linha da matriz (1:nrow(ttt) criará os índices das linhas)
  for (j in 1:ncol(ttt)) {      # Para cada coluna da matriz (1:ncol(ttt) criará os índices das colunas)
    print(paste("Na linha",i,"e coluna",j,"temos",ttt[i,j]))  # Mostre os resultados 
  }
}

#####
##   LOOP COM CONDIÇÕES
#####

# Executar o loop
#linkedin
for (i in linkedin) {            # Para cada índice do vetor linkedin (chamamos o índice de li)
  if (i > 10) {                  # Se o índice for maior que 10
    #print("Você é popular!")       # Mostre a mensagem "Você é popular"
    print(paste("Você é popular, teve",i, "likes"))
  } else {                        # Caso contrário, se o índice for <= 10
    #print("Seja mais visível!")   # Mostre outra mensagem "Seja mais visível"
    print(paste("Seja mais visível, teve",i,"likes"))
  }
}

################################
####   FUNÇÕES NATIVAS     #####
################################

# Para acessar a documentação de uma função nativa.
help(mean)
help(sd)

# Existem argumentos obrigatórios e opcionais em funções. Exemplo:
x <- c(15, 20, 25, NA)
sd(x, na.rm = TRUE)

################################
###   FUNÇÕES PRÓPRIAS       ###
################################

# Criando a função quadrado que recebe o argumento x
quadrado <- function(x) {
  result <- x * x
  return(result)
}

# Usando a função quadrado
quadrado(10)

# Criando a função somar_abs() que recebe os argumentos x e y
somar_abs <- function(x, y) {
  result <- (x * x) ^ (0.5) + (y * y) ^ (0.5)
  return(result)
}

# Usando a função somar_abs
somar_abs(-2, -10)

# Expandir a função quadrado() para receber os argumentos x e print_info
quadrado <- function(x, print_info = TRUE) {         # argumentos da função
  y <- x ^ 2                                      # tarefa a ser executada
  if (print_info == T) {                          # verificar o argumento print_info
    print(paste(x, 'elevado ao quadrado é', y))    # se TRUE, mostrar a mensagem
  }
  return(y)                                       # a função deve retornar como saído os valores de y
}

quadrado(5)
quadrado(5, print_info=T)
quadrado(5, print_info = F)

################################
######       APPLY         #####
################################

# matriz com 20 colunas e 10 linhas
x <- matrix(rnorm(200), ncol=20)
help(rnorm)
hist(x)

head(x)
tail(x)

# média na linha (MARGIN = 1)
media_linha <- apply(x, MARGIN = 1, mean)   # aplicar a função mean nas linhas
media_linha
desvio_linha <- apply(x, MARGIN = 1, sd)
desvio_linha

# média na coluna (MARGIN = 2)
media_coluna <- apply(x, MARGIN = 2, mean)  # aplicar a função mean nas colunas
media_coluna
desvio_coluna <- apply(x, MARGIN = 2, sd)
desvio_coluna

################################
######       LAPPLY        #####
################################

# Uma lista qualquer com 7 vetores de temperaturas em cada dia
temp <- list(
  c(3, 7,  9,  6, -1),
  c(6,  9, 12, 13,  5),
  c(4,  8,  3, -1, -3),
  c(1,  4,  7,  2, -2),
  c(5, 7, 9, 4, 2),
  c(-3,  5,  8,  9,  4),
  c(3, 6, 9, 4, 1)
)

# Temperatura mínima em cada dia. Retorna uma lista.
lapply(temp, min)

# Temperatura máxima em cada dia. Retorna uma lista. 
lapply(temp, max)

# Temperatura média em cada dia. Retorna uma lista.
lapply(temp, mean)

################################
######       SAPPLY        #####
################################

# Temperatura mínima em cada dia. Retorna um vetor.
minimo <- sapply(temp, min)

# Temperatura máxima em cada dia. Retorna um vetor.
maximo <- sapply(temp, max)

# Temperatura média em cada dia. Retorna um vetor.
sapply(temp, mean)

# Teste que retorna apenas em formato diferente, mas com resultados iguais
unlist(lapply(temp, max)) == sapply(temp, max)

# Função que calcula a média do mínimo e máximo de um vetor
extremes_avg <- function(x) {
  avg <- mean(c(min(x), max(x)))
  return(avg)
}

# Usando ela com o sapply(). Poderíamos usar ela em lapply() ou apply().
sapply(temp, extremes_avg)

################################
#####    DATA/TEMPO        #####
################################

# A data atual. A função primitiva Sys.Date() cria uma data no formato correto
today <- Sys.Date()
today

# Se excluirmos a classe vemos que teremos um número que não é interpretável 
unclass(today)

# A hora corrente
now <- Sys.time()
now

################################
####  CRIANDO DATA/TEMPO   #####
################################

# Definindo datas em um formato qualquer como character
str1 <- "2012-3-15"
str2 <- "02/27/92"

str3 <- "2012-3-20"
date3 <- as.Date(str3, format = "%Y-%m-%d")
date3
str4 <- "2021-3-21"
date4 <- as.Date(str4, format = "%Y-%m-%d")
date4

# Convertendo para datas no formato que o R reconhece
date1 <- as.Date(str1, format = "%Y-%m-%d")
date1
date2 <- as.Date(str2, format = "%m/%d/%y")
date2

help(as.Date)

# Definindo tempo em formato de string
str1 <- "2012-3-12 14:23:08"

# Converter as string para um objecto POSIXct
time1 <- as.POSIXct(str1, format = "%Y-%m-%d %T")
time1

################################
####  CÁLCULO DATA/TEMPO   #####
################################

# Datas
day1 <- as.Date("2017-03-12")
day2 <- as.Date("2017-03-14")
day3 <- as.Date("2017-03-19")
day4 <- as.Date("2017-03-25")
day5 <- as.Date("2017-03-30")

# Diferença entre o primeiro e o último dia
day5-day1

# Criar um vetor com as datas
pizza <- c(day1, day2, day3, day4, day5)
pizza

# Criar um vetor com a diferença entre os dias consecutivos
day_diff <- diff(pizza)
day_diff

# Período médio entre dois dias consecutivos 
mean(day_diff)

###########################
### Tratamento de dados ###
###########################

getwd() #representa o diretório de trabalho atual do processo R
setwd("C:/Users/henri/OneDrive/Repositórios") #comando para definir o diretório de trabalho

dados <- read.csv2("C:/Users/henri/OneDrive/Repositórios/Datasets/chuva_mensal_sp.csv",
sep = ";", header=TRUE, encoding="UTF-8")

View(dados)

#############################
### Tipagem dos atributos ###
#############################

# EXISTEM 7 TIPOS BÁSICOS:
# character (caracteres)
# integer (números inteiros)
# numeric (números reais)
# logical (falso ou verdadeiro)
# complex (n?meros complexos)
# factor (fator: Sequ?ncia de valores definidos por n?veis)
# date (data)

str(dados)

###########################
### Modificando tipagem ###
###########################

# Nesse caso não foi necessário
# dados$Janeiro <- as.numeric(dados$Janeiro)
# dados$Fevereiro <- as.numeric(dados$Fevereiro)
# dados$Março <- as.numeric(dados$Março)
# dados$Maio <- as.numeric(dados$Maio)
# dados$Junho <- as.numeric(dados$Junho)
# dados$Julho <- as.numeric(dados$Julho)
# dados$Agosto <- as.numeric(dados$Agosto)
# dados$Setembro <- as.numeric(dados$Setembro)
# dados$Outubro <- as.numeric(dados$Outubro)
# dados$Novembro <- as.numeric(dados$Novembro)
# dados$Dezembro <- as.numeric(dados$Dezembro)

# View(dados)

#####################################
######   Eliminando linha    ########
#####################################

dados <- dados [c(-25),] 
# dados <- dados %>% filter(ano!="Media")

View(dados)

#######################
### Eliminar coluna ###
#######################

dados <- subset(dados, select = -c(Ano))

###################################
### Verificando valores missing ###
###################################

# NA = valores ausentes (iguais a zero)
# NAN = not a number(valor indefinido)
sapply(dados, function(x) sum(is.na(x)))
sapply(dados, function(x) sum(is.nan(x)))

##################################
### Substituir valores missing ###
##################################

# Substituindo pela média
dados$Janeiro[is.na(dados$Janeiro)] <- mean(dados$Janeiro[which(dados$Janeiro!='NA')])
dados$Fevereiro[is.na(dados$Fevereiro)] <- mean(dados$Fevereiro[which(dados$Fevereiro!='NA')])
dados$Março[is.na(dados$Março)] <- mean(dados$Março[which(dados$Março!='NA')])
dados$Maio[is.na(dados$Maio)] <- mean(dados$Maio[which(dados$Maio!='NA')])
dados$Junho[is.na(dados$Junho)] <- mean(dados$Junho[which(dados$Junho!='NA')])
dados$Julho[is.na(dados$Julho)] <- mean(dados$Julho[which(dados$Julho!='NA')])
dados$Agosto[is.na(dados$Agosto)] <- mean(dados$Agosto[which(dados$Agosto!='NA')])
dados$Setembro[is.na(dados$Setembro)] <- mean(dados$Setembro[which(dados$Setembro!='NA')])
dados$Outubro[is.na(dados$Outubro)] <- mean(dados$Outubro[which(dados$Outubro!='NA')])
dados$Novembro[is.na(dados$Novembro)] <- mean(dados$Novembro[which(dados$Novembro!='NA')])
dados$Dezembro[is.na(dados$Dezembro)] <- mean(dados$Dezembro[which(dados$Dezembro!='NA')])

View(dados)

##############################
### Exportação de arquivos ###
##############################

write.table(dados, file ="chuvas_mensal_sp_tratado.csv", sep = ";")

##################
#### Ggplot2 #####
##################

# https://ggplot2.tidyverse.org/reference/ggplot.html"

dados <- read.csv2("C:/Users/henri/OneDrive/Repositórios/R/Introdução/Dados/sell_bmw_eu.csv",
header=TRUE, stringsAsFactors=FALSE, fileEncoding="latin1")

View(dados)
str(dados)

##########################
### Camadas do ggplot2 ###
##########################

##################################
### Modificando Tipo Primitivo ###
##################################

dados$model <- as.factor(dados$model)
dados$registration_date <- as.Date(dados$registration_date , format = "%Y-%m-%d") 
dados$sold_at <- as.Date(dados$sold_at, format = "%Y-%m-%d")

# Y maiúsculo significa que nosso formato possui 4 dígitos
# Format deve ser similar ao padrão do banco de dados


# 1. dados
# 2. estética (aes) -> eixo X e eixo Y
# 3. geom (tipo de gráfico)

# Resumo:
# data(aes()) + geom() -> Melhor forma
# data() + geom(aes())

# Possibilidades de camadas de geom: https://ggplot2.tidyverse.org/reference/

#########################
### Tipos de Gráficos ###
#########################

### correlação ###
ggplot(data = dados, aes(y = mileage, x = price)) + geom_point() #presença de outliers
### boxplot ###
ggplot(data = dados) + geom_boxplot(aes(x = paint_color, y = price))
### barras ###
ggplot(data = dados) + geom_histogram(aes(x = paint_color), stat = "count")
### linhas ###
ggplot(data = dados) + geom_line(aes(x = model, group = 1), stat = "count")

#################################
##### Modificações do geom ######
#################################

#############
### color ###
#############

# Atribuindo dentro do geom (definido por uma varável)
ggplot(data = dados) + geom_line(aes(x = mileage , y = model, color = model))

# Atribuindo fora do geom (definido pelos dados)
ggplot(data = dados) + geom_line(aes(x = price, y = model, 
shape = model), color = "darkred")

####################
### shape & size ###
####################

#http://www.sthda.com/english/wiki/ggplot2-point-shapes

ggplot(data = dados) + geom_point(aes(x = price, y = mileage, 
color = paint_color))

ggplot(data = dados) + geom_point(aes(x = price, y = mileage, 
shape = car_type))

# dentro da aes -> tamanho definido pela variável
ggplot(data = dados) + geom_line(aes(x = price, y = model, 
color = model, size = price))

# fora da aes -> tamanho não é definido por uma variável
ggplot(data = dados) + geom_point(aes(x = price, y = mileage),
fill = "black", color = "purple", shape = 25, size = 1.5)

#########################
### Usando mais geons ###
#########################

#Resumo:
#(data(aes()) + geom() + geom() -> MELHOR FORMA
#data() + geom(aes()) + geom(aes())
#A ordem dos geoms importa -> lógica camadas do Photoshop

glimpse(dados)

ggplot(data = dados,(aes(x = price, y = engine_power)))+
geom_point(color = "Black", shape = 16, size = 0.7) +
geom_smooth(method = "lm") # smooth = Linha de tendência

ggplot(data = dados,(aes(x = price, y = engine_power))) +
geom_point(color = "Black", shape = 16, size = 0.7) +
geom_smooth(method = "lm", se = FALSE, color = "Red", size = 0.5)

ggplot(data = dados, aes(x = price, y = engine_power)) +
geom_point(color = "Black", shape = 16, size = 0.7) +
geom_smooth(method = "lm", se = F, size = 0.5, linetype = "dashed")

##################################################################

###################
## Usando Dplyr ###
###################

dados %>% filter(paint_color == "black") %>% 
ggplot(aes(x = price, y = mileage)) +
geom_point(color = "orange", shape = 16, size = 0.7) +
geom_smooth(method = "lm", se = F, color = "black", size = 0.5, aes(linetype = paint_color))





















## Usando o geom para representar um "summary"
### (stat = summary) x stat_summary()
ggplot(data = dados, aes(x = Genero, y = LucroLocal)) +
  geom_point(stat = "summary", fun = "mean")

ggplot(data = dados, aes(x = Genero, y = LucroLocal)) +
  stat_summary(geom = "point", fun = "mean")

ggplot(data = dados, aes(x = Genero, y = LucroLocal)) +
  stat_summary(geom = "point", fun = "median")

## Incluindo barras de erros (usando também o summary)


ggplot(data = dados, aes(x = Genero, y = LucroLocal)) +
  geom_point(stat = "summary", fun = "mean") +
  geom_errorbar(stat = "summary", fun.data = "mean_se")


ggplot(data = dados, aes(x = Genero, y = LucroLocal)) +
  geom_point(stat = "summary", fun = "mean") +
  geom_errorbar(stat = "summary", fun.min = "min", fun.max = "max")


ggplot(data = dados, aes(x = Genero, y = LucroLocal)) +
  geom_point(stat = "summary", fun = "mean") +
  geom_errorbar(stat = "summary", fun.data = "mean_se", width = 0.3)


## Usando IC 95% ao invés de erro-padrão (pacote ggpubr)

pacman::p_load(ggpubr)

ggplot(data = dados, aes(x = Genero, y = LucroLocal)) +
  geom_point(stat = "summary", fun = "mean") +
  geom_errorbar(stat = "summary", fun.data = "mean_ci", width = 0.3)


ggplot(data = dados, aes(x = Genero, y = LucroLocal)) +
  geom_point(stat = "summary", fun = "mean") +
  geom_errorbar(stat = "summary", fun.data = "mean_sd", width = 0.3)

1. Verificando Dados Faltantes
Para identificar a presença de dados faltantes (NA) em um data frame, utilize as seguintes funções:

is.na(): Verifica se cada elemento é NA.

r
Copiar
Editar
is.na(df)  # Retorna um data frame lógico indicando a presença de NAs
sum(is.na()): Conta o número total de valores NA no data frame.

r
Copiar
Editar
sum(is.na(df))  # Número total de NAs
colSums(is.na()): Conta os valores NA por coluna.

r
Copiar
Editar
colSums(is.na(df))  # NAs por coluna
complete.cases(): Identifica linhas sem dados faltantes.

r
Copiar
Editar
complete.cases(df)  # Retorna um vetor lógico
2. Limpando Dados Faltantes
Após identificar os dados faltantes, é possível tratá-los de diversas maneiras:

Remover Linhas com Dados Faltantes:

r
Copiar
Editar
df_limpo <- df[complete.cases(df), ]
Remover Colunas com Dados Faltantes:

r
Copiar
Editar
df_limpo <- df[, colSums(is.na(df)) == 0]
Substituir Dados Faltantes por um Valor Específico:

r
Copiar
Editar
df[is.na(df)] <- valor  # Substitui NAs por 'valor'
Substituir Dados Faltantes por Média ou Mediana:

r
Copiar
Editar
df$coluna[is.na(df$coluna)] <- mean(df$coluna, na.rm = TRUE)
# ou
df$coluna[is.na(df$coluna)] <- median(df$coluna, na.rm = TRUE)
Usando o Pacote dplyr para Substituição:

r
Copiar
Editar
library(dplyr)
df <- df %>%
  mutate(coluna = ifelse(is.na(coluna), valor_substituto, coluna))





